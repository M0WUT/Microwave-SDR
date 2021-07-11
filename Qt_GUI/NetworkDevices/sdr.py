from NetworkDevices.networkDevice import NetworkDevice
from warningHandler import WarningHandler
from PySide2.QtWidgets import QTabWidget, QLabel
import logging


class Card():
    """Base class for anything installed in an SDR Rack"""
    def __init__(
        self, address: int, type: str, name: str
    ):
        self.type = type
        self.address = address
        self.name = name
        self.warnings = []
        self.errors = []
        self.state = None
        self.rfPowerReadings = {}
        self.dcPowerReadings = {}
        self.temperatures = {}
        self.label = None

    def __eq__(self, other):
        return (
            (self.type == other.type) and
            (self.address == other.address) and
            (self.name) == other.name
        )


class SDR(NetworkDevice):
    def __init__(
        self, jsonDict: dict, warningHandler: WarningHandler,
        tabWidget: QTabWidget
    ):
        super().__init__(
            type="sdr",
            jsonDict=jsonDict,
            warningHandler=warningHandler,
            tabWidget=tabWidget
        )

        self._iconGrid.setRowStretch(self._iconGrid.rowCount(), 0)

        self.numVfos = 2  # @DEBUG

        self.cards = {}

        for x in jsonDict['cards']:
            self.cards[x['address']] = Card(
                type=x['type'],
                name=x['name'],
                address=x['address']
            )

        self.numSlots = jsonDict['numSlots']
        self._slotLabel = self.add_value_row(
            "Number of slots:", self.numSlots
        )
        self._cardsLabel = self.add_value_row(
            "Number of cards:", len(self.cards)
        )
        self._update_labels()

    def _update_labels(self):
        # @TODO: Delete old cards

        for i in range(self.numVfos):
            labelString = "{} - VFO {}".format(
                self.name,
                chr(i + 65)
            )
            labelWidget = QLabel(labelString)

            labelWidget.setStyleSheet(
                "font: Waree; font-size: 48px; font-weight: bold;"
                "border: 2px solid white"
            )

            # TODO: Add VFO status colouring

            self._iconGrid.addWidget(labelWidget, self._iconGrid.rowCount(), 0)

        for i in range(1, self.numSlots + 1):
            try:
                self.cards[i].label = QLabel("{}: {} - {}".format(
                        i, self.cards[i].type.upper(),
                        self.cards[i].name
                    )
                )
                labelWidget = self.cards[i].label

            except KeyError:
                labelWidget = QLabel("{}: {}".format(i, "No Card"))
                labelWidget.setStyleSheet("color: #505050;")

            # Add generic font stuff
            labelWidget.setStyleSheet(
                labelWidget.styleSheet() +
                "font: Waree; font-size: 48px; font-weight: bold;"
            )

            # Add border
            labelWidget.setStyleSheet(
                labelWidget.styleSheet() +
                "border: 2px solid white;"
            )

            self._iconGrid.addWidget(labelWidget, self._iconGrid.rowCount(), 0)

        self._update_label_colours()

        self._iconGrid.setRowStretch(self._iconGrid.rowCount(), 1)

    def update_discovery_info(self, jsonDict: dict) -> None:
        """
        Updates the discovery information for an already existing
        SDR in self._tab. This covers SDR specifics and general info
        is processed in base class function
        """
        if self.numSlots != jsonDict['numSlots']:
            self.warningHandler.add_warning(
                self.name,
                "Network",
                f"SDR {self.name} ({self.mac}) changed number of slots"
                f"from {self.numSlots} to {jsonDict['numSlots']}"
            )
            self.numSlots = jsonDict['numSlots']
            self._slotLabel.setText(self.numSlots)
            self.updated = True

        savedAddresses = [e for e, _ in self.cards.items()]
        newAddresses = [e['address'] for e in jsonDict['cards']]

        for x in jsonDict['cards']:
            if x['address'] not in savedAddresses:
                self.cards[x['address']] = Card(
                    type=x['type'],
                    name=x['name'],
                    address=x['address']
                )

                self.warningHandler.add_warning(
                    self.name + f" - {x['name']}",
                    "RS485",
                    f"Previously undiscovered card found "
                    f"in slot {x['address']}"
                )
                self._update_labels()
                self.updated = True

        for x in savedAddresses:
            if x not in newAddresses:
                cardToBeDeleted = None
                for y in self.cards:
                    if y.address == x:
                        cardToBeDeleted = y
                self.warningHandler.add_warning(
                    self.name + f" - {cardToBeDeleted.name}",
                    "RS485",
                    f"Lost communications with card in slot "
                    f"{cardToBeDeleted.address}"
                )
                self.updated = True
                self.cards.remove(cardToBeDeleted)
                self._update_labels()
        self._cardsLabel.setText(str(len(self.cards)))

        super().update_discovery_info(jsonDict)

    def _update_label_colours(self):
        for _, x in self.cards.items():
            if x.errors:
                x.label.setStyleSheet(
                    x.label.styleSheet() +
                    "background: red;"
                )
            elif x.warnings:
                x.label.setStyleSheet(
                    x.label.styleSheet() +
                    "background: yellow;"
                )
            elif x.state == "warmup":
                x.label.setStyleSheet(
                    x.label.styleSheet() +
                    "background: blue;"
                )
            elif x.state == "rx":
                x.label.setStyleSheet(
                    x.label.styleSheet() +
                    "background: green;"
                )
            elif x.state == "tx":
                x.label.setStyleSheet(
                    x.label.styleSheet() +
                    "background: red;"
                )

    def update_status_info(self, jsonDict: dict) -> None:
        """
        Updates the SDR specific status information in the
        GUI, general devices functions are handled in the
        NetworkDevice class
        """
        # @TODO: Check all cards we expect are present
        for x in jsonDict['cards']:
            card = self.cards[x['address']]
            card.state = x['state']
        self._update_label_colours()
        super().update_status_info(jsonDict)
