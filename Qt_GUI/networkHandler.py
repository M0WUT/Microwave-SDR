# This Python file uses the following encoding: utf-8
from PySide2.QtWidgets import QWidget, QGridLayout, QLabel
from PySide2.QtGui import QIcon
from PySide2.QtCore import QSize
from usefulFunctions import get_ip, get_mac
import config_user
import json
from datetime import datetime, timezone
import logging
from config_developer import MQTT_API_VERSION
from config_user import NAME


class NetworkDevice(object):
    def __init__(
        self, type, ipAddr, mac, name, apiVersion, warnings, errors,
        uptime, tabWidget, online
    ):
        """
        Object containing information about any device on the MQTT network

        Args:
            type (str): Either "SDR" or "Controller"
            ipAddr (str): IP Address of this device
            mac (str): MAC Address of this device
            name (str): Human readable device name
            apiVersion (str): Version number of MQTT API
            uptime (str): Uptime of device as (<a>d <b>h <c>m <d>s)
                where <a>, <b>, <c> and <d> are in days, hours, minutes and
                seconds respectively. Only needs to be complete to the largest
                non-zero value e.g. a device up for 2 minutes can
                report "2m 0s"
                tabWidget (QTabWidget): widget this device can add itself to
            online (bool):  True: device was online the last time we checked
                            False: device did not respond last time we checked

        Attributes:
            type (str): Either "SDR" or "Controller"
            ipAddr (str): IP Address of this device
            mac (str): MAC Address of this device
            name (str): Human readable device name
            apiVersion (str): Version number of MQTT API
            uptime (str): Uptime of device as (<a>d <b>h <c>m <d>s)
                where <a>, <b>, <c> and <d> are in days, hours, minutes and
                seconds respectively. Only needs to be complete to the largest
                non-zero value e.g. a device up for 2 minutes can
                report "2m 0s"
                tabWidget (QTabWidget): widget this device can add itself to
            online (bool):  True: device was online the last time we checked
                            False: device did not respond last time we checked
            _tab (QWidget): Tab created in __init__ for displaying info for
                this device in self._tabWidget.
            _grid (QGridLayout): Grid layout for self._tab
            _ipLabel (QLabel): Label used to display this device's IP Address
            _statusLabel (QLabel): Label used to display this device's status
            _uptimeLabel (QLabel): Label used to display this device's uptime
            _onlineLabel  (QLabel): Label used to display if device is online

        Returns:
            None

        Raises:
            None
        """
        self.type = type
        self.ipAddr = ipAddr
        self.mac = mac
        self.name = name
        self.apiVersion = apiVersion
        self.warnings = warnings
        self.errors = errors
        self.uptime = uptime
        self._tabWidget = tabWidget
        self.online = online

        # Create tab in the tab widget for this device
        self._tab = QWidget(self._tabWidget)
        if(self.mac == get_mac()):
            # Ensure that the controller in use goes first
            self._tabWidget.insertTab(0, self._tab, f"{self.name}\n{self.ipAddr}")
        else:
            # Other device, put at end
            self._tabWidget.addTab(self._tab, f"{self.name}\n{self.ipAddr}")
        self._grid = QGridLayout(self._tab)
        self._ipLabel = self.add_value_row("IP Address:", self.ipAddr)
        # These two shouldn't ever need label accessing as
        # I really hope they don't change!
        self.add_value_row("Type:", self.type)
        self.add_value_row("MAC Address:", self.mac)
        self._apiLabel = self.add_value_row(
            "MQTT API Version:", self.apiVersion
        )
        if self.errors:
            statusString = "Has errors"
        elif self.warnings:
            statusString = "Has warnings"
        else:
            statusString = "OK"
        self._statusLabel = self.add_value_row("Status:", statusString)
        self._uptimeLabel = self.add_value_row("Uptime:", self.uptime)
        self._onlineLabel = self.add_value_row("Online:", "")
        self._update_online_state(True)

        self._grid.setRowStretch(self._grid.rowCount(), 1)
        self._grid.setColumnStretch(self._grid.columnCount(), 1)
        self._tab.setLayout(self._grid)

    def add_value_row(self, labelString, initialValue):
        """
        Adds a row to self._tab with two QLabels horizontally laid
        out. First contains the identifying string, second contains
        value.

        Args:
            labelString (str): Label for this item
            intialValue (str / int): value for this item

        Returns:
            QLabel: label item created for the value so it can be updated

        Raises:
            None
        """
        labelWidget = QLabel(labelString)
        labelWidget.setStyleSheet(
            "font: Waree; font-size: 32px; font-weight: bold"
        )
        valueWidget = QLabel(str(initialValue))
        valueWidget.setStyleSheet("font: Waree; font-size: 32px")
        rowCount = self._grid.rowCount()
        self._grid.addWidget(labelWidget, rowCount, 0)
        self._grid.addWidget(valueWidget, rowCount, 1)
        return valueWidget

    def update_info(self, jsonDict):
        """
        Adds a row to self._tab with two QLabels horizontally laid
        out. First contains the identifying string, second contains
        value.

        Args:
            jsonDict (dict): A /discovery/info payload converted
                from JSON to Python dictionary.

        Returns:
            None

        Raises:
            AssertionError: if updated information has a different type
                to current device
        """
        assert jsonDict['type'] == self.type
        self.ipAddr = jsonDict['ip']
        self.name = jsonDict['name']
        self.apiVersion = jsonDict['api']
        self.warnings = jsonDict['warnings']
        self.errors = jsonDict['errors']
        self.uptime = jsonDict['uptime']

        if self.errors:
            statusString = "Has errors"
        elif self.warnings:
            statusString = "Has warnings"
        else:
            statusString = "OK"
        self._statusLabel.setText(statusString)

        self._uptimeLabel.setText(self.uptime)
        self._ipLabel.setText(self.ipAddr)
        self._apiLabel.setText(self.apiVersion)

        # Online is a bit special as we want a tick box
        self._update_online_state(True)

        # Update tab name
        self._tabWidget.setTabText(
            self._tabWidget.indexOf(self._tab),
            f"{self.name}\n{self.ipAddr}"
        )

        logging.info(f"Updated info for device {self.mac} ({self.name})")

    def _update_online_state(self, x):
        """
        Updates devices online status and sets icon in self._tab

        Args:
            x (bool):   True - device is online
                        False - device is offline

        Returns:
            None

        Raises:
            TypeError: if x is not a bool
        """
        if not isinstance(x, bool):
            raise TypeError(f"{x} not in (True, False)")
        self.online = x
        if x:
            icon = QIcon("resources/img/icon_tick.png")
        else:
            icon = QIcon("resources/img/icon_cross.png")
        pixmap = icon.pixmap(QSize(32, 32))
        self._onlineLabel.setPixmap(pixmap)


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
    def __init__(self, tabWidget, mqtt, warnings, buttons):
        self.tabWidget = tabWidget
        self.mqtt = mqtt
        self.warnings = warnings
        self.buttons = buttons
        self.button_refresh = self.buttons[0]
        self.button_forceRefresh = self.buttons[1]

        self.devices = []
        self.startTime = datetime.now(timezone.utc)
        self.mqtt.register_callback(
            "/discovery/request",
            self.send_discovery_info
        )
        self.mqtt.register_callback(
            "/discovery/info",
            self.rx_info
        )
        self.mqtt.register_callback(
            "/discovery/lwt",
            self.rx_lwt
        )
        self.force_refresh()

    def tab_enabled(self):
        """
        Called when this tab becomes the active tab in the GUI
        Applies settings for this tab to the 6 always-on buttons and
        refreshes network device list

        Args:
            None

        Returns:
            None

        Raises:
            None
        """
        self.button_refresh.setText("Quick\nRefresh")
        self.button_refresh.setEnabled(True)
        self.button_refresh.clicked.connect(self.refresh)

        self.button_forceRefresh.setText("Full\nRefresh")
        self.button_forceRefresh.setEnabled(True)
        self.button_forceRefresh.clicked.connect(self.force_refresh)

        self.refresh()

    def refresh(self):
        """
        Requests discovery information from all devices and loads
        into table widget. Remembers all previously discovered
        devices.

        Args:
            None

        Returns:
            None

        Raises:
            None
        """
        for x in self.devices:
            x._update_online_state(False)
        self.mqtt.publish("/discovery/request", "Oh hai")

    def force_refresh(self):
        """
        Clears all knowledge of devices and then requests info

        Args:
            None

        Returns:
            None

        Raises:
            None
        """
        logging.info("Erasing all stored remote device information")
        self.devices = []
        self.tabWidget.clear()
        self.refresh()

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
            "type": "Controller",
            "mac": get_mac(),
            "ip": get_ip(),
            "name": config_user.NAME,
            "api": MQTT_API_VERSION,
            "warnings": self.warnings.get_warnings(),
            "errors": self.warnings.get_errors(),
            "uptime": self.get_uptime()
        }

        self.mqtt.publish("/discovery/info", json.dumps(x))

    def rx_info(self, msg):
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
            self.warnings.add_warning(
                NAME, "MQTT",
                f"Device {x['name']} using MQTT API v{x['api']}."
                f" This device uses v{MQTT_API_VERSION}.",
                broadcast=False
            )

        for dev in self.devices:
            if(x['mac'] == dev.mac):
                # Device is already known to us, update info
                dev.update_info(x)
                return

        # If haven't already returned, it's a new device!
        if(x['type'] in ["Controller", "SDR"]):
            self.devices.append(
                NetworkDevice(
                    type=x['type'],
                    ipAddr=x['ip'],
                    mac=x['mac'],
                    name=x['name'],
                    apiVersion=x['api'],
                    warnings=x['warnings'],
                    errors=x['errors'],
                    uptime=x['uptime'],
                    tabWidget=self.tabWidget,
                    online=True
                )
            )
            logging.info(f"Discovered new {x['type']}: {x['name']}")
        else:
            self.warnings.add_warning(
                NAME,
                "MQTT",
                f"Unknown device type {x['type']} discovered on network"
            )

    def rx_lwt(self, msg):
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
        self.warnings.add_warning(
            source=name,
            category="Fault",
            message="Unexpected disconnection from MQTT broker",
            broadcast=False
        )

        for x in self.devices:
            if x.mac == mac:
                x._update_online_state(False)
                return

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

        if uptime.days:
            return f"{uptime.days}d  {hours}h {minutes}m {seconds}s"
        elif hours:
            return f"{hours}h {minutes}m {seconds}s"
        elif minutes:
            return f"{minutes}m {seconds}s"
        else:
            return f"{seconds}s"
