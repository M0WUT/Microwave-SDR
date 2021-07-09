# This Python file uses the following encoding: utf-8
from PySide2.QtWidgets import QTabWidget, QPushButton
from usefulFunctions import get_ip, get_mac
import config_user
import json
from datetime import datetime, timezone
import logging
from config_developer import MQTT_API_VERSION
from config_user import NAME
from typing import List
from mqttHandler import MqttHandler
from warningHandler import WarningHandler
from NetworkDevices.controller import Controller
from NetworkDevices.sdr import SDR


class NetworkHandler:
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
            "/discovery/lwt",
            self.receive_lwt
        )
        self.request_discovery()

    def tab_enabled(self):
        """
        Sets up GUI elements when this tab becomes active
        """
        self.button_requestStatus.setText("Refresh\nStatus")
        self.button_requestStatus.setEnabled(True)
        self.button_requestStatus.clicked.connect(self.request_status)

        self.button_requestDiscovery.setText("Re-run\nDiscovery")
        self.button_requestDiscovery.setEnabled(True)
        self.button_requestDiscovery.clicked.connect(self.request_discovery)

        self.request_status()

    def request_status(self):
        """
        Requests discovery information from all devices and loads
        into table widget. Remembers all previously discovered
        devices
        """
        for x in self.devices:
            x._update_online_state(False)
        #self.mqtt.publish("/discovery/request", "Oh hai")

    def request_discovery(self):
        """
        Clears all knowledge of devices and then requests info
        """
        logging.info("Starting network discovery")
        self.mqtt.publish("/discovery/request", "Oh hai")

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
        x = json.loads(msg.payload.decode('utf-8'))

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

    def receive_lwt(self, msg: str) -> None:
        """
        Handles receiving LWT (unexpected disconnection) from another device

        Args:
            msg (str): payload of infomation message.

        Returns:
            None

        Raises:
            None
        """
        x = json.loads(msg.payload.decode('utf-8'))
        name = x['name']
        mac = x['mac']
        self.warningHandler.add_warning(
            source=name,
            category="Fault",
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

        Args:
            None

        Returns:
            str: Uptime in human readable form

        Raises:
            None
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
