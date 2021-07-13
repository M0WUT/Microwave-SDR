from warningHandler import WarningHandler
from PySide2.QtWidgets import \
    QHBoxLayout, QTabWidget, QWidget, QGridLayout, QLabel, QVBoxLayout
from usefulFunctions import get_mac
import logging
from PySide2.QtGui import QIcon
from PySide2.QtCore import QSize


class NetworkDevice():
    def __init__(
        self, type: str, jsonDict, warningHandler: WarningHandler,
        tabWidget: QTabWidget
    ):
        """
        Base class for any object on the MQTT network
        """

        self.type = type
        self.ipAddr = jsonDict['ip']
        self.mac = jsonDict['mac']
        self.name = jsonDict['name']
        self.apiVersion = jsonDict['api']
        self.warningHandler = warningHandler
        self.uptime = ""
        self.linkSpeed = jsonDict['link']
        self._tabWidget = tabWidget
        self.updated = False  # Flag if any info has been updated
        self.warnings = []
        self.errors = []
        self.state = None

        # Create tab in the tab widget for this device
        self._tab = QWidget(self._tabWidget)
        if(self.mac == get_mac()):
            # Ensure that the controller in use goes first
            self._tabWidget.insertTab(
                0, self._tab, f"{self.name}\n{self.ipAddr}"
            )
        else:
            # Other device, put at end
            self._tabWidget.addTab(self._tab, f"{self.name}\n{self.ipAddr}")
        self._horizontalLayout = QHBoxLayout(self._tab)
        self._grid = QGridLayout()
        self._iconLayout = QVBoxLayout()
        self._horizontalLayout.addLayout(self._grid)
        self._horizontalLayout.addLayout(self._iconLayout)
        self._horizontalLayout.setStretchFactor(self._iconLayout, 1)

        self._ipLabel = self.add_value_row("IP Address:", self.ipAddr)

        # These are the definition of a unique device so never need updating
        self.add_value_row("Type:", self.type.upper())
        self.add_value_row("MAC Address:", self.mac)

        self._apiLabel = self.add_value_row(
            "MQTT API Version:", self.apiVersion
        )

        self._uptimeLabel = self.add_value_row("Uptime:", self.uptime)
        self._onlineLabel = self.add_value_row("Online:", "")
        self._update_online_state(True)
        self._linkSpeedLabel = self.add_value_row(
            "Link Speed:", self.linkSpeed
        )

        self._grid.setRowStretch(self._grid.rowCount(), 1)
        self._tab.setLayout(self._horizontalLayout)

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
        # Should just be disable stretch on last row but seems
        # to need to be last two rows. Can't be bothered fixing
        self._grid.setRowStretch(rowCount - 1, 0)
        self._grid.setRowStretch(rowCount - 2, 0)
        self._grid.addWidget(labelWidget, rowCount, 0)
        self._grid.addWidget(valueWidget, rowCount, 1)
        self._grid.setRowStretch(self._grid.rowCount(), 1)
        return valueWidget

    def update_discovery_info(self, jsonDict: dict) -> None:
        """
        Updates the discovery information for an already existing
        entry in self._tab. None of this should be changing -
        discovery information is intended to be static
        """
        assert jsonDict['type'] == self.type
        self._update_online_state(True)
        if self.ipAddr != jsonDict['ip']:
            self.warningHandler.add_warning(
                self.name,
                "Network",
                f"Device {self.name} ({self.mac}) changed IP address"
                f"from {self.ipAddr} to {jsonDict['ip']}"
            )
            self.ipAddr = jsonDict['ip']
            self.updated = True

        if self.name != jsonDict['name']:
            self.warningHandler.add_warning(
                self.name,
                "Network",
                f"Device {self.name} ({self.mac}) changed name"
                f"from {self.name} to {jsonDict['name']}"
            )
            self.name = jsonDict['name']
            self.updated = True

        if self.apiVersion != jsonDict['api']:
            self.warningHandler.add_warning(
                self.name,
                "Network",
                f"Device {self.name} ({self.mac}) changed API"
                f"from {self.apiVersion} to {jsonDict['api']}"
            )
            self.apiVersion = jsonDict['api']
            self.updated = True

        if self.linkSpeed != jsonDict['link']:
            self.warningHandler.add_warning(
                self.name,
                "Network",
                f"Device {self.name} ({self.mac}) changed speed"
                f"from {self.linkSpeed} to {jsonDict['link']}"
            )
            self.name = jsonDict['name']
            self.updated = True

        self._ipLabel.setText(self.ipAddr)
        self._apiLabel.setText(self.apiVersion)
        self._linkSpeedLabel.setText(self.linkSpeed)

        # Online is a bit special as we want a tick box
        self._update_online_state(True)

        # Update tab name
        self._tabWidget.setTabText(
            self._tabWidget.indexOf(self._tab),
            f"{self.name}\n{self.ipAddr}"
        )

        if self.updated:
            logging.info(
                f"Updated discovery info for device "
                f"{self.mac} ({self.name})"
            )

    def update_status_info(self, jsonDict: dict) -> None:
        """
        Updates the discovery information for an already existing
        entry in self._tab.
        """

        self._update_online_state(True)

        # Online is a bit special as we want a tick box
        self._update_online_state(True)

        self._uptimeLabel.setText(jsonDict['uptime'])

        if self.updated:
            logging.debug(
                f"Updated status info for device "
                f"{self.mac} ({self.name})"
            )

    def _update_online_state(self, online: bool):
        """
        Updates online status icon
        """
        if not isinstance(online, bool):
            raise TypeError(f"{online} not in (True, False)")
        self.online = online
        if online:
            icon = QIcon("resources/img/icon_tick.png")
        else:
            icon = QIcon("resources/img/icon_cross.png")
        pixmap = icon.pixmap(QSize(32, 32))
        self._onlineLabel.setPixmap(pixmap)
