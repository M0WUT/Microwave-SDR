from config_developer import LED_STATUS, SLOTS_EEPROM_ADDRESS, \
    STATUS_REGISTERS_FILE, PIN_WP, SLOTS_I2C_FILE, TRANSVERTER_RS485_UART, \
    MQTT_API_VERSION
from config_user import MQTT_SERVER_IP_ADDRESS, MQTT_SERVER_PORT, \
    NAME, NTP_SERVER
from gpio import GPIO
import logging
from mqttHandler import MqttHandler
from paho.mqtt.client import MQTTMessage
from channel import Channel, ChannelHandler, ChannelPrototype
from statusHandler import StatusRegs
from warningHandler import WarningHandler
import time
import sys
from cardHandler import CardHandler
from slotsEeprom import slotsEeprom
from datetime import datetime, timezone
from usefulFunctions import get_ip, get_mac, get_link_speed
import json
import ntplib
import socket

logging.basicConfig(
    format='%(asctime)s %(levelname)-8s %(message)s',
    level=logging.DEBUG,
    datefmt='%Y-%m-%d %H:%M:%S'
)


class Main:
    def __init__(self):

        logging.info("Application started. Waiting for NTP sync...")
        client = ntplib.NTPClient()
        while True:
            try:
                response = client.request(NTP_SERVER)
                if (response.offset < 1):
                    # We have a valid NTP time and are within 1s of it
                    break
            except (ntplib.NTPException, socket.gaierror):
                logging.info("NTP Sync failed. Retrying...")
            time.sleep(1)

        logging.info(
            "NTP sync successful. IP Address: {}. "
            "Starting main application".format(get_ip())
        )
        self.startTime = datetime.now(timezone.utc)
        LED_STATUS.write(GPIO.HIGH)
        with WarningHandler() as self.warnings, \
                MqttHandler(
                    MQTT_SERVER_IP_ADDRESS,
                    MQTT_SERVER_PORT,
                    self.warnings
                ) as self.mqtt:

            self.warnings.register_mqtt(self.mqtt)

            self.status = StatusRegs(
                STATUS_REGISTERS_FILE, self.warnings
            )
            self.slots = slotsEeprom(
                SLOTS_I2C_FILE, "Baseboard Config",
                SLOTS_EEPROM_ADDRESS, PIN_WP, self.warnings
            )

            with \
                    CardHandler(
                        TRANSVERTER_RS485_UART,
                        numSlots=self.slots.num_slots()
                    ) as self.cards, \
                    \
                    ChannelHandler(channels=[
                        ChannelPrototype(
                            name='A', supportsRx=True, supportsTx=True
                        )
                    ], cards=self.cards, mqtt=self.mqtt,
                    warnings=self.warnings, status=self.status
                        ) as self.channels:

                self.mqtt.register_callback(
                    "/discovery/request",
                    self.send_discovery_info
                )

                self.mqtt.register_callback(
                    "/status/request",
                    self.send_status_info
                )

                self.mqtt.register_callback(
                    "/discovery/lwt",
                    self.handle_lwt
                )

                self.mqtt.register_callback(
                    "/{}/requests".format(get_mac()),
                    self.handle_control_request
                )

                self.send_discovery_info()
                self.send_status_info()

                self.run()

    def __enter__(self):
        return self

    def __exit__(self, *args, **kwargs):
        for x in self.channels:
            self.cards.assign_card_to_channel("")

    def handle_control_request(self, msg: dict) -> None:
        """ Processes incoming request for control of a channel """
        cardAddress = int(msg["address"])
        controllerMac = msg["controller"]
        vfo = msg["vfo"]

        self.channels.find_channel_for_controller(
            controllerMac, vfo, cardAddress
        )
        self.send_status_info()

    def send_discovery_info(self, _: dict = None) -> None:
        """
        Publishes all the discovery info to the "discovery/info" topic
        Takes message argument as all callback functions must take a message
        but is useless - anything sent to this topic will result in discovery
        information being sent.

        Args:
            _ (dict): All MQTT callbacks get passed the message. The contents is
                irrelevant here
        """
        x = {
            "type": "sdr",
            "ip": get_ip(),
            "mac": get_mac(),
            "name": NAME,
            "api": MQTT_API_VERSION,
            "link": get_link_speed(),
            "numSlots": self.cards.numSlots,
            "channels": self.channels.get_discovery_info(),
            "cards": self.cards.get_all_discovery_info(),
        }

        self.mqtt.publish("/discovery/info", json.dumps(x))

    def send_status_info(self, _: dict = None) -> None:
        """
        Publishes all the discovery info to the "discovery/info" topic
        Takes message argument as all callback functions must take a message
        but is useless - anything sent to this topic will result in discovery
        information being sent.

        Args:
            _ (str): All MQTT callbacks get passed the message. The contents is
                irrelevant here
        """
        x = {
            "type": "sdr",
            "mac": get_mac(),
            "warnings": self.warnings.get_warnings(),
            "errors": self.warnings.get_errors(),
            "uptime": self.get_uptime(),
            "channels": self.channels.get_status_info(),
            "cards": self.cards.get_all_status_info()
        }

        self.mqtt.publish("/status/info", json.dumps(x))

    def get_uptime(self) -> str:
        """
        Returns time since this object was initialised, which is hopefully
        the uptime of this software, in human readable form.
        """
        uptime = datetime.now(timezone.utc) - self.startTime
        hours = int(uptime.seconds / 3600)
        minutes = int((uptime.seconds % 3600) / 60)
        seconds = int(uptime.seconds % 60)

        if(uptime.days != 0):
            return "{}d {}h {}m {}s".format(
                uptime.days, hours, minutes, seconds
            )
        elif(hours != 0):
            return "{}h {}m {}s".format(hours, minutes, seconds)
        elif(minutes != 0):
            return "{}m {}s".format(minutes, seconds)
        else:
            return "{}s".format(seconds)

    def handle_lwt(self, json: dict) -> None:
        """
        Tidies up if being controlled by a device which
        has disconnected
        """
        for x in self.channels.channels:
            if x.controllerMac == json["mac"]:
                logging.info(
                    "Channel {} shut down due to controller disconnect".format(
                        x.name
                    )
                )
                x.close_card_control()
                x.set_controller(None, None)

    def run(self) -> None:
        """ Infinite sleep as everything is done using callbacks """
        while(True):
            try:
                time.sleep(10)
            except KeyboardInterrupt:
                sys.exit()


if __name__ == '__main__':
    with Main() as x:
        pass
