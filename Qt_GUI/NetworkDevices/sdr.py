from NetworkDevices.networkDevice import NetworkDevice
from warningHandler import WarningHandler
from PySide2.QtWidgets import QHBoxLayout, QPushButton, QSizePolicy, QTabWidget, QLabel, QWidget
from PySide2.QtCore import QObject, Qt
import logging
import re


class Card(QWidget):
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
        self.button = None

    def __eq__(self, other):
        return (
            (self.type == other.type) and
            (self.address == other.address) and
            (self.name) == other.name
        )

    def set_button(self, button: QPushButton):
        self.button = button
        button.clicked.connect(lambda: self.show_info())

    def show_info(self):
        logging.critical("Hello from card in address {}!".format(self.address))  # @DEBUG


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

        self.numVfos = 2  # @DEBUG

        self.cards = {}
        self._legendLayout = None

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

        # Delete all the old labels - setting parent to None
        # seems to be the nicest to to delete a widget
        if self._legendLayout:
            while self._legendLayout.itemAt(0):
                self._legendLayout.itemAt(0).widget().setParent(None)
            self._legendLayout.setParent(None)
        while self._iconLayout.itemAt(0):
            self._iconLayout.itemAt(0).widget().setParent(None)

        for i in range(self.numVfos):
            labelString = "{} - VFO {}".format(
                self.name,
                chr(i + 65)
            )
            labelWidget = QPushButton(labelString)

            labelWidget.setStyleSheet(
                "font: Waree; font-size: 48px; font-weight: bold;"
                "border: 2px solid white; text-align: left"
            )
            labelWidget.setSizePolicy(
                QSizePolicy.Expanding, QSizePolicy.Expanding
            )
            self._iconLayout.addWidget(labelWidget)

        for i in range(1, self.numSlots + 1):
            try:
                self.cards[i].set_button(
                    QPushButton(
                        "{}: {} - {}".format(
                            i, self.cards[i].type.upper(),
                            self.cards[i].name
                        )
                    )
                )
                labelWidget = self.cards[i].button
                labelWidget.setSizePolicy(
                    QSizePolicy.Expanding, QSizePolicy.Expanding
                )

            except KeyError:
                continue
                # labelWidget = QLabel("{}: {}".format(i, "No Card"))
                # labelWidget.setStyleSheet("color: #505050;")

            # Add generic font stuff
            labelWidget.setStyleSheet(
                labelWidget.styleSheet() +
                "font: Waree; font-size: 48px; font-weight: bold;"
                "text-align: left;"
            )

            # Add border
            labelWidget.setStyleSheet(
                labelWidget.styleSheet() +
                "border: 2px solid white;"
            )

            self._iconLayout.addWidget(labelWidget)

        # Add legend
        self._legendLayout = QHBoxLayout()
        self._iconLayout.addLayout(self._legendLayout)
        legend = {
            'Error': 'red',
            'Warning': 'yellow',
            'Warmup': 'blue',
            'Idle': 'transparent',
            'RX': 'green',
            'TX': 'red'
        }

        for state, colour in legend.items():
            label = QLabel(state)
            label.setStyleSheet(
                "font: Waree; font-size: 36px; font-weight: bold;"
                "border: 2px solid white;"
                "background: {};".format(colour)
            )
            if state in ["Error", "Warning"]:
                label.setStyleSheet(
                    label.styleSheet() + "color: black;"
                )
            label.setAlignment(Qt.AlignHCenter | Qt.AlignVCenter)
            self._legendLayout.addWidget(label)

        self._update_label_colours()

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
                for _, y in self.cards.items():
                    if y.address == x:
                        cardToBeDeleted = y
                self.warningHandler.add_warning(
                    self.name + f" - {cardToBeDeleted.name}",
                    "RS485",
                    f"Lost communications with card in slot "
                    f"{cardToBeDeleted.address}"
                )
                self.updated = True
                del self.cards[cardToBeDeleted.address]
                self._update_labels()
        self._update_labels()
        self._cardsLabel.setText(str(len(self.cards)))

        super().update_discovery_info(jsonDict)

    def _update_label_colours(self):
        # TODO: Add VFO status colouring

        for _, x in self.cards.items():
            if x.errors:
                colour = "red"
            elif x.warnings:
                colour = "yellow"
            elif x.state == "warmup":
                colour = "blue"
            elif x.state == "rx":
                colour = "green"
            elif x.state == "tx":
                colour = "red"
            elif x.state is None or x.state == "idle":
                colour = "transparent"
            else:
                raise NotImplementedError

            oldStyleSheet = x.button.styleSheet()
            if "background" in oldStyleSheet:
                newStyleSheet = re.sub(
                    "background: .*;",
                    "background: {};".format(colour),
                    x.button.styleSheet()
                )
                newStyleSheet = re.sub(
                    "color: .*;",
                    "",
                    newStyleSheet
                )
            else:
                newStyleSheet = oldStyleSheet + \
                    "background: {};".format(colour)

            if x.errors or x.warnings:
                newStyleSheet += "color: black;"

            x.button.setStyleSheet(newStyleSheet)

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
