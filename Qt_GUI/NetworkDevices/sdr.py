from NetworkDevices.networkDevice import NetworkDevice
from NetworkDevices.card import Card
from NetworkDevices.transverter import Transverter
from warningHandler import WarningHandler
from PySide2.QtWidgets import QHBoxLayout, QPushButton, QSizePolicy, \
    QTabWidget, QLabel
from PySide2.QtCore import Qt
import logging
import re
from typing import List
from usefulFunctions import STYLE_ERROR, STYLE_IDLE, STYLE_RX, \
    STYLE_SHUTDOWN, STYLE_TX, STYLE_WARMUP, STYLE_WARNING, SDR_STYLES


class Channel:
    def __init__(self, name, supportsRx, supportsTx, supportsDuplex):
        self.name = name
        self.supportsRx = supportsRx
        self.supportsTx = supportsTx
        self.supportsDuplex = supportsDuplex
        if supportsDuplex:
            assert supportsRx and supportsTx
        self.state = None
        self.errors = []
        self.warnings = []
        self.cardAddress = None

    def __eq__(self, other):
        return (self.name == other.name)

    def set_button(self, button: QPushButton):
        self.button = button
        button.clicked.connect(lambda: self.show_info())

    def show_info(self):
        logging.critical("Hello from channel {}!".format(self.name))  # @DEBUG


class SDR(NetworkDevice):
    def __init__(
        self, jsonDict: dict, warningHandler: WarningHandler,
        tabWidget: QTabWidget
    ):
        super().__init__(
            jsonDict=jsonDict,
            warningHandler=warningHandler,
            tabWidget=tabWidget
        )

        self.cards = {}
        self.channels = {}
        self._legendLayout = None

        # Load all channels from JSON message
        for x in jsonDict['channels']:
            self.channels[x['name']] = self.generate_channel_from_json(x)

        # Load all cards from JSON message
        for x in jsonDict['cards']:
            if x['type'] == "transverter":
                self.cards[x['address']] = \
                    self.generate_transverter_from_json(x)
            else:
                raise NotImplementedError

        self.numSlots = jsonDict['numSlots']

        self._update_labels()

    def get_type(self) -> str:
        return "SDR"

    def generate_channel_from_json(self, json: dict) -> Channel:
        """
        Takes a dictionary from a JSON message describing a channel
        and converts to a channel object
        """
        return Channel(
            name=json['name'],
            supportsRx=json['supportsRx'],
            supportsTx=json['supportsTx'],
            supportsDuplex=json['supportsDuplex']
        )

    def generate_transverter_from_json(self, json: dict) -> Transverter:
        """
        Takes a dictionary from a JSON message describing a transverter
        and converts to a transverter object
        """
        return Transverter(
            name=json['name'],
            address=json['address'],
            sdrMac=self.mac,
            loFreq=json["loFreq"],
            loAdd=json["loAdd"],
            minFreq=json["minFreq"],
            maxFreq=json["maxFreq"],
            minPower=json["minPower"],
            maxPower=json["maxPower"],
            supportsRx=json["supportsRx"],
            supportsTx=json["supportsTx"],
            supportsDuplex=json["supportsDuplex"]
        )

    def _update_labels(self):
        # Delete all the old labels - setting parent to None
        # seems to be the nicest to to delete a widget
        if self._legendLayout:
            while self._legendLayout.itemAt(0):
                self._legendLayout.itemAt(0).widget().setParent(None)
            self._legendLayout.setParent(None)
        while self._iconLayout.itemAt(0):
            self._iconLayout.itemAt(0).widget().setParent(None)

        for _, x in self.channels.items():
            labelWidget = QPushButton()
            x.set_button(labelWidget)

            labelWidget.setStyleSheet(
                "font: Waree; font-size: 48px; font-weight: bold;"
                "border: 2px solid white; text-align: left;"
            )
            labelWidget.setSizePolicy(
                QSizePolicy.Expanding, QSizePolicy.Expanding
            )
            self._iconLayout.addWidget(labelWidget)

        for address in range(1, self.numSlots + 1):
            try:
                self.cards[address].set_button(QPushButton())
                labelWidget = self.cards[address].button
                labelWidget.setSizePolicy(
                    QSizePolicy.Expanding, QSizePolicy.Expanding
                )

            except KeyError:
                labelWidget = QLabel("{}: {}".format(address, "No Card"))
                labelWidget.setStyleSheet("color: #505050;")

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

        self.update_label_titles()

        # Add legend
        self._legendLayout = QHBoxLayout()
        self._iconLayout.addLayout(self._legendLayout)

        for style in SDR_STYLES:
            label = QLabel(style.description)
            styleString = (
                "font: Waree; font-size: 32px; font-weight: bold;"
                "border: 2px solid white;"
            )
            if style.backgroundColour:
                styleString += f"background: {style.backgroundColour};"

            if style.textColour:
                styleString += f"color: {style.textColour};"

            label.setStyleSheet(styleString)
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
                if x['type'] == "transverter":
                    self.cards[x['address']] = \
                        self.generate_transverter_from_json(x)
                else:
                    raise NotImplementedError

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
        super().update_discovery_info(jsonDict)

    def _update_label_colours(self):
        channelList = [x for _, x in self.channels.items()]
        cardList = [x for _, x in self.cards.items()]
        devices = channelList + cardList
        for x in devices:
            if x.errors:
                style = STYLE_ERROR
            elif x.warnings:
                style = STYLE_WARNING
            elif x.state == "warmup":
                style = STYLE_WARMUP
            elif x.state == "rx":
                style = STYLE_RX
            elif x.state == "tx":
                style = STYLE_TX
            elif x.state == 'shutdown':
                style = STYLE_SHUTDOWN
            elif x.state is None or x.state == "idle":
                style = STYLE_IDLE
            else:
                raise NotImplementedError

            newStyleSheet = re.sub(
                "background: .*;",
                "",
                x.button.styleSheet()
            )
            newStyleSheet = re.sub(
                "color: .*;",
                "",
                newStyleSheet
            )

            if style.backgroundColour:
                newStyleSheet += f"background: {style.backgroundColour};"

            if style.textColour:
                newStyleSheet += f"color: {style.textColour};"

            x.button.setStyleSheet(newStyleSheet)

    def update_label_titles(self) -> None:
        for address, card in self.cards.items():
            card.button.setText(
                "{}: {} - {}{}".format(
                    address, card.get_type(),
                    card.name,
                    (" (" + card.channel + ")") if card.channel else ""
                )
            )

        for _, channel in self.channels.items():
            channel.button.setText(
                "Channel {}{}".format(
                    channel.name,
                    " (" + str(channel.cardAddress) + ")" if channel.cardAddress else ""
                )
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
            card.channel = x['channel']
        super().update_status_info(jsonDict)

        for x in jsonDict['channels']:
            channel = self.channels[x['name']]
            channel.state = x['state']
            channel.warnings = x['warnings']
            channel.errors = x['errors']
            channel.cardAddress = x['cardAddress']

        self.update_label_titles()
        self._update_label_colours()

    def get_transverters(self) -> List[Transverter]:
        return [x for _, x in self.cards.items() if isinstance(x, Transverter)]
