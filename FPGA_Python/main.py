from config_developer import LED_STATUS, SLOTS_EEPROM_ADDRESS, \
    STATUS_REGISTERS_FILE, PIN_WP, SLOTS_I2C_FILE, TRANSVERTER_RS485_UART, \
    MQTT_API_VERSION
from config_user import MQTT_SERVER_IP_ADDRESS, MQTT_SERVER_PORT, NAME
from gpio import GPIO
import logging
from mqttHandler import MqttHandler
from vfo import Vfo
from statusHandler import StatusRegs
from warningHandler import WarningHandler
import time
import sys
from cardHandler import CardHandler
from slotsEeprom import slotsEeprom
from datetime import datetime, timezone
from usefulFunctions import get_ip, get_mac, get_link_speed
import json

logging.basicConfig(
    format='%(asctime)s %(levelname)-8s %(message)s',
    level=logging.DEBUG,
    datefmt='%Y-%m-%d %H:%M:%S'
)


class Main:
    def __init__(self):

        logging.info("Application started. Waiting for network connection...")
        while not get_ip():
            time.sleep(2)
        logging.info(
            "IP Address: {}. Starting main application".format(get_ip())
        )
        self.startTime = datetime.now(timezone.utc)
        LED_STATUS.write(GPIO.HIGH)
        self.warnings = WarningHandler()
        self.mqtt = MqttHandler(
            MQTT_SERVER_IP_ADDRESS, MQTT_SERVER_PORT, self.warnings
        )
        self.warnings.register_mqtt(self.mqtt)
        self.status = StatusRegs(STATUS_REGISTERS_FILE, self.warnings)
        self.slots = slotsEeprom(
            SLOTS_I2C_FILE, "Baseboard Config", SLOTS_EEPROM_ADDRESS,
            PIN_WP, self.warnings
        )
        self.cards = CardHandler(
            TRANSVERTER_RS485_UART, self.warnings,
            numSlots=self.slots.num_slots()
        )
        self.vfoA = Vfo('A', self.mqtt, self.status, self.warnings)

        self.mqtt.register_callback(
            "/discovery/request",
            self.send_discovery_info
        )

        self.mqtt.register_callback(
            "/status/request",
            self.send_status_info
        )

        self.send_discovery_info()
        self.send_status_info()

    def send_discovery_info(self, msg=None):
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
            "type": "sdr",
            "mac": get_mac(),
            "ip": get_ip(),
            "name": NAME,
            "api": MQTT_API_VERSION,
            "link": get_link_speed(),
            "numSlots": self.cards.numSlots,
            "cards": self.cards.get_discovery_info(),
        }

        self.mqtt.publish("/discovery/info", json.dumps(x))

    def send_status_info(self, msg=None):
        x = {
            "type": "sdr",
            "mac": get_mac(),
            "warnings": self.warnings.get_warnings(),
            "errors": self.warnings.get_errors(),
            "uptime": self.get_uptime(),
            "cards": self.cards.get_status_info()
        }

        self.mqtt.publish("/status/info", json.dumps(x))

    def get_uptime(self):
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

    def run(self):
        while(True):
            try:
                time.sleep(10)
            except KeyboardInterrupt:
                sys.exit()


if __name__ == '__main__':
    x = Main()
    x.run()
