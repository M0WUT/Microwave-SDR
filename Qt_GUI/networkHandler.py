# This Python file uses the following encoding: utf-8
from NetworkDevices.transverter import Transverter
from PySide2.QtWidgets import QTabWidget, QPushButton
from PySide2.QtCore import QTimer
from usefulFunctions import get_ip, get_link_speed, get_mac
import config_user
import json
from datetime import datetime, timezone
import logging
from config_developer import MQTT_API_VERSION
from config_user import NAME, STATUS_UPDATE_PERIOD, NTP_SERVER
from typing import List
from mqttHandler import MqttHandler
from warningHandler import WarningHandler
from NetworkDevices.controller import Controller
from NetworkDevices.sdr import SDR
from NetworkDevices.transverter import Transverter
import ntplib
import socket
from time import sleep


class NetworkHandler():
    """
    Handler for incoming messsages on the MQTT network
    """
    def __init__(
        self, tabWidget: QTabWidget, mqtt: MqttHandler,
        warningHandler: WarningHandler, buttons: List[QPushButton]
    ):
        self.tabWidget = tabWidget
        self.tabWidget.clear()
        self.mqtt = mqtt
        self.warningHandler = warningHandler
        self.buttons = buttons
        self.button_requestStatus = self.buttons[0]
        self.button_requestDiscovery = self.buttons[1]

        self.devices = []

        # Wait for NTP sync before starting
        synced = False
        client = ntplib.NTPClient()
        logging.info("Starting NTP Sync...")
        while not synced:
            try:
                response = client.request(NTP_SERVER)
                synced = (response.offset < 1)
            except (ntplib.NTPException, socket.gaierror):
                logging.info("NTP Sync failed. Retrying...")
            sleep(1)
        logging.info("NTP sync successful")

        self.startTime = datetime.now(timezone.utc)
        self.mqtt.register_callback(
            "/discovery/request",
            self.send_discovery_info
        )
        self.mqtt.register_callback(
            "/discovery/info",
            self.receive_discovery_info
        )
        self.mqtt.register_callback(
            "/status/request",
            self.send_status_info
        )
        self.mqtt.register_callback(
            "/status/info",
            self.receive_status_info
        )
        self.mqtt.register_callback(
            "/discovery/lwt",
            self.receive_lwt
        )
        self.request_discovery()

        self.timer = QTimer()
        self.timer.timeout.connect(self.request_status)
        # Start requesting regular status updates in 10s
        # (to allow everything else to boot)
        QTimer.singleShot(3000, self.start_timed_status_requests)

    def __enter__(self):
        return self

    def __exit__(self, *args, **kwargs):
        logging.critical("Stopping status request timer")
        self.timer.stop()

    def start_timed_status_requests(self):
        logging.info(
            f"Starting to request status information "
            f"every {STATUS_UPDATE_PERIOD}s"
        )
        self.timer.start(1000 * STATUS_UPDATE_PERIOD)

    def get_all_transverters(self) -> List[Transverter]:
        """ Returns a list of all known transverters"""
        transverters = []
        for x in self.devices:
            if isinstance(x, SDR):
                transverters.extend(x.get_transverters())
        return transverters

    def get_supported_transverters(
                self, freq: int, requiresRxSupport: bool = False,
                requiresTxSupport: bool = False
            ) -> List[Transverter]:
        """
        Returns a list of transverters that support operation at a
        certain frequency

        Args:
            freq: frequency in Hz
            requiresRxSupport: If True, will only return
                transverters that can support RX
            requiresTxSupport: If True, will only return
                transverters that can support TX
        """
        possibleTransverters = [x for x in self.get_all_transverters() if (
            (x.minFreq <= freq) and
            (x.maxFreq >= freq)
        )]

        if requiresRxSupport:
            possibleTransverters = \
                [x for x in possibleTransverters if x.supportsRx]

        if requiresTxSupport:
            possibleTransverters = \
                [x for x in possibleTransverters if x.supportsTx]

        return possibleTransverters

    def tab_enabled(self):
        """
        Sets up GUI elements when this tab becomes active
        """
        self.button_requestStatus.setText("Refresh\nStatus")
        self.button_requestStatus.setEnabled(True)
        self.button_requestStatus.clicked.connect(
            self.clear_online_status_and_refresh
        )

        self.button_requestDiscovery.setText("Re-run\nDiscovery")
        self.button_requestDiscovery.setEnabled(True)
        self.button_requestDiscovery.clicked.connect(self.request_discovery)

    def request_status(self):
        """
        Requests status information from all devices
        """
        logging.debug("Requesting status information")
        self.mqtt.publish("/status/request", "{}")

    def clear_online_status_and_refresh(self):
        for x in self.devices:
            x._update_online_state(False)
        self.request_status()

    def request_discovery(self):
        """
        Clears all knowledge of devices and then requests info
        """
        logging.info("Starting network discovery")
        self.mqtt.publish("/discovery/request", "{}")

    def send_discovery_info(self, msg):
        """
        Publishes all the discovery info to the "discovery/info" topic
        Takes message argument as all callback functions must take a message
        but is useless - anything sent to this topic will result in discovery
        information being sent.

        Args:
            msg (str): payload of discovery message. Does nothing with this
                but all MQTT callbacks take this argument

        Returns:
            None

        Raises:
            None

        """
        x = {
            "type": "controller",
            "mac": get_mac(),
            "ip": get_ip(),
            "name": config_user.NAME,
            "api": MQTT_API_VERSION,
            "link": get_link_speed()
        }

        self.mqtt.publish("/discovery/info", json.dumps(x))

    def receive_discovery_info(self, msg):
        """
        Handles receiving discovery info from another device

        Args:
            msg (str): payload of infomation message.

        Returns:
            None

        Raises:
            None
        """
        x = msg
        if(x['api'] != MQTT_API_VERSION):
            self.warningHandler.add_warning(
                NAME, "MQTT",
                f"Device {x['name']} using MQTT API v{x['api']}."
                f" This device uses v{MQTT_API_VERSION}.",
                broadcast=False
            )

        for dev in self.devices:
            if(x['mac'] == dev.mac):
                # Device is already known to us, update info
                dev.update_discovery_info(x)
                return

        # If haven't already returned, it's a new device!
        if(x['type'] == "controller"):
            self.devices.append(
                Controller(
                    x, warningHandler=self.warningHandler,
                    tabWidget=self.tabWidget,
                )
            )
            logging.info(f"Discovered new {x['type']}: {x['name']}")

        elif(x['type'] == "sdr"):
            self.devices.append(
                SDR(
                    x, warningHandler=self.warningHandler,
                    tabWidget=self.tabWidget
                )
            )
            logging.info(f"Discovered new {x['type']}: {x['name']}")
        else:
            self.warningHandler.add_warning(
                NAME,
                "MQTT",
                f"Unknown device type \"{x['type']}\" discovered on network"
            )

    def send_status_info(self, msg: str) -> None:
        """
        Publishes all the status info to the "status/info" topic
        Takes message argument as all callback functions must take a message
        but is useless - anything sent to this topic will result in status
        information being sent.

        Args:
            msg (str): payload of status message. Does nothing with this
                but all MQTT callbacks take this argument
        """
        x = {
            "type": "controller",
            "mac": get_mac(),
            "uptime": self.get_uptime()

        }

        self.mqtt.publish("/status/info", json.dumps(x))

    def receive_status_info(self, msg: str) -> None:
        for dev in self.devices:
            if(msg['mac'] == dev.mac):
                # Device is already known to us, update info
                dev.update_status_info(msg)
                return

        else:
            self.warningHandler.add_warning(
                NAME,
                "MQTT",
                f"Undiscovered device ({msg['mac']}) replying on network"
            )

    def receive_lwt(self, msg: str) -> None:
        """
        Handles receiving LWT (unexpected disconnection) from another device

        Args:
            msg (str): payload of infomation message.
        """
        name = msg['name']
        mac = msg['mac']
        self.warningHandler.add_warning(
            source=name,
            category="MQTT",
            message="Unexpected disconnection from MQTT broker"
        )

        for x in self.devices:
            if x.mac == mac:
                x._update_online_state(False)
                return

    def get_uptime(self) -> str:
        """
        Returns time since this object was initialised, which is hopefully
        the uptime of this software, in human readable form.
        """
        uptime = datetime.now(timezone.utc) - self.startTime
        hours = int(uptime.seconds / 3600)
        minutes = int((uptime.seconds % 3600) / 60)
        seconds = int(uptime.seconds % 60)

        if uptime.days:
            return f"{uptime.days}d  {hours}h {minutes}m {seconds}s"
        elif hours:
            return f"{hours}h {minutes}m {seconds}s"
        elif minutes:
            return f"{minutes}m {seconds}s"
        else:
            return f"{seconds}s"
