from datetime import datetime, timezone
from usefulFunctions import get_ip, get_mac
import config_user
from config_developer import MQTT_API_VERSION
import json


class NetworkHandler:
    """
    Handler for incoming messsages on the MQTT network

    Args:
        tabWidget (QTabWidget): Place where network device info will
            be displayed
        mqtt (MqttHandler): Low level handler for MQTT messages
        warnings (WarningHandler): Handler to report warnings to
        buttons (List[QButton]): List of 6 buttons used to control
            this handler's features

    Attributes:
        tabWidget (QTabWidget): Place where network device info will
            be displayed
        mqtt (MqttHandler): Low level handler for MQTT messages
        warnings (WarningHandler): Handler to report warnings to
        buttons (List[QButton]): List of 6 buttons used to control
            this handler's features
        button_refresh (QButton): Button assigned to refresh network devices
        button_forceRefresh (QButton): Button assigned to erase network devices
            and restart network discovery
        devices (List[NetworkDevice]): Devices discovered on the MQTT network
        startTime (datetime.datetime): Datetime object from when this software
            started running

    Returns:
        None

    Raises:
        None
    """
    def __init__(self, mqtt, warnings):

        self.mqtt = mqtt
        self.warnings = warnings

        self.startTime = datetime.now(timezone.utc)
        self.mqtt.register_callback(
            "/discovery/request",
            self.send_discovery_info
        )

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
            "type": "SDR",
            "mac": get_mac(),
            "ip": get_ip(),
            "name": config_user.NAME,
            "api": MQTT_API_VERSION,
            "warnings": [],  # self.warnings.get_warnings(),  @DEBUG
            "errors": [],  # self.warnings.get_errors(),
            "uptime": self.get_uptime()
        }

        self.mqtt.publish("/discovery/info", json.dumps(x))

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
