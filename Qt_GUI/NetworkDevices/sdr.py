from NetworkDevices.networkDevice import NetworkDevice
from warningHandler import WarningHandler
from PySide2.QtWidgets import QTabWidget


class Card():
    """Base class for anything installed in an SDR Rack"""
    def __init__(
        self, address: int, type: str, name: str
    ):
        self.type = type
        self.address = address
        self.name = name

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

        self.cards = []

        for x in jsonDict['cards']:
            self.cards.append(
                Card(
                    type=x['type'],
                    name=x['name'],
                    address=x['address']
                )
            )

        self.numSlots = jsonDict['numSlots']

        self._slotLabel = self.add_value_row(
            "Number of slots:", self.numSlots
        )
        self._cardsLabel = self.add_value_row(
            "Number of cards:", len(self.cards)
        )

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

        savedAddresses = [e.address for e in self.cards]
        newAddresses = [e['address'] for e in jsonDict['cards']]

        for x in jsonDict['cards']:
            if x['address'] not in savedAddresses:
                self.cards.append(
                    Card(
                        type=x['type'],
                        name=x['name'],
                        address=x['address']
                    )
                )
                self.warningHandler.add_warning(
                    self.name + f" - {x['name']}",
                    "RS485",
                    f"Previously undiscovered new card found "
                    f"in slot {x['address']}"
                )
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
        self._cardsLabel.setText(str(len(self.cards)))

        super().update_discovery_info(jsonDict)
