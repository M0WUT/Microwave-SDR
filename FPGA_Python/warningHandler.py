# This Python file uses the following encoding: utf-8
from datetime import datetime, timezone
from mqttHandler import MqttHandler
import logging
from config_user import NAME
import json


class Sadness(object):
    """
    Object containing details of errors / warnings reported by any device
    on MQTT network

    Args:
        type (str): Either "ERROR" or "Warning"
        sourceMac (str): MAC Address of the machine reporting the error
            expressed as xx:xx:xx:xx:xx:xx where x is a hexadecimal
            character (uppercase if letter). This is used to uniquely
            identify a device as all other properties
            can change.
        category (str): General category of section reporting the error
            This can be anything - it's not defined anywhere
        message (str): Detailed explanation of the problem

    Attributes:
        type (str): Either "ERROR" or "Warning"
        source (str): Name of the device reporting the error
        category (str): General category of section reporting the error
            This can be anything - it's not defined anywhere
        message (str): Detailed explanation of the problem
        time (datetime.datetime): Datetime object when the problem
            was recorded

    Returns:
        None

    Raises:
        ValueError: type argument is not "ERROR" or "Warning"
    """
    def __init__(self, type, source, category, message, date=None, time=None):
        if type not in ["ERROR", "Warning"]:
            raise ValueError(
                "\"type\" should be \"ERROR\" or \"Warning\", "
                "got {}".format(type)
            )

        self.time = datetime.now(timezone.utc)
        self.type = type
        self.source = NAME + " - " + source
        self.category = category
        self.message = message

    def json(self):
        jsonBlob = {
            "date": self.time.strftime('%d/%m/%Y'),
            "time": self.time.strftime('%H:%M:%S Z'),
            "source": self.source,
            "category": self.category,
            "message": self.message
        }
        return jsonBlob


class WarningHandler:
    """
    Handler for all errors / warnings reported by this device and its
    transverter

    Args:
        None

    Attributes:
        mqtt (MqttHandler): MQTT Handler used to broadcast issues
        warnings (List[Sadness]): List of all reported warnings
        errors (List[Sadness]): List of all reported errors

    Returns:
        None

    Raises:
        None
    """

    def __init__(self):

        # Initialisation
        self.warnings = []
        self.errors = []
        self.mqtt = None

    def register_mqtt(self, x):
        assert isinstance(x, MqttHandler)
        self.mqtt = x

    def add_warning(
        self, source, category, message, broadcast=True, date=None, time=None
    ):
        """
        Records new warnings

        Args:
            source (str): Human readable name of the device
                reporting the error
            category (str): Error category - can be anything
            message (str): Detailed description of the warning
            broadcast (str): True if warning should be published
                to MQTT broker

        Returns:
            None

        Raises:
            None
        """
        logging.warning("[{}] {}: {}" .format(source, category, message))
        x = Sadness(
            "Warning",
            source,
            category,
            message,
            date,
            time
        )
        self.warnings.append(x)

        if(broadcast):
            self.mqtt.publish(
                '/discovery/warnings',
                json.dumps(x.json())
            )

    def add_error(
        self, source, category, message, broadcast=True, date=None, time=None
    ):
        """
        Records new error

        Args:
            source (str): Human readable name of the device
                reporting the error
            category (str): Error category - can be anything
            message (str): Detailed description of the error
            broadcast (str): True if warning should be published
                to MQTT broker

        Returns:
            None

        Raises:
            None
        """
        logging.error("[{}] {}: {}" .format(source, category, message))
        x = Sadness(
            "ERROR",
            source,
            category,
            message,
            date,
            time
        )

        self.errors.append(x)

        if(broadcast):
            self.mqtt.publish(
                '/discovery/errors',
                json.dumps(x.json())
            )

    def clear_all(self):
        """
        Deletes all recorded warnings/errors

        Args:
            None

        Returns:
            None

        Raises:
            None
        """
        logging.info("Warnings and errors cleared")
        self.warnings = []
        self.errors = []

    def get_warnings(self):
        # Get only warnings generated by this machine
        myWarningList = [e for e in self.warnings if e.source == NAME]
        jsonBlob = []
        for x in myWarningList:
            jsonBlob.append({
                "date": x.time.strftime('%d/%m/%Y'),
                "time": x.time.strftime('%H:%M:%S Z'),
                "source": NAME,
                "category": x.category,
                "message": x.message
            })
        return jsonBlob

    def get_errors(self):
        # Get only errors generated by this machine
        myWarningList = [e for e in self.errors if e.source == NAME]
        jsonBlob = []
        for x in myWarningList:
            jsonBlob.append(x.json())
        return jsonBlob


if __name__ == '__main__':
    x = WarningHandler()
    x.add_warning(NAME, "test", "Hello World", broadcast=False)
