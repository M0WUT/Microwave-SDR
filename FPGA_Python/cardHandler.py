from config_developer import PIN_RS485_TX
from json.decoder import JSONDecodeError
import logging
import json
from usefulFunctions import readable_freq
from rs485Driver import RS485Driver, RS485Packet
from warningHandler import Warning, Error
from typing import List


class Card():
    def __init__(self, type: str, address: int, name: str):
        self.type = type
        self.address = address
        self.name = name
        self.warnings = {}
        self.errors = {}
        self.temperatures = {}
        self.state = None
        self.rfPowerReadings = {}
        self.dcPowerReadings = {}
        self.controller = None

    def __eq__(self, other):
        return ((self.address == other.address) and (self.name == other.name))

    def get_discovery_json(self):
        return({
            "type": self.type,
            "name": self.name,
            "address": self.address
        })

    def get_warnings(self):
        return [x.json() for x in self.warnings]

    def get_errors(self):
        return [x.json() for x in self.errors]

    def get_temperatures(self):
        return self.temperatures

    def get_rf_power_readings(self):
        return self.rfPowerReadings

    def get_dc_power_readings(self):
        return self.dcPowerReadings


class Transverter(Card):
    def __init__(
        self, address: int, name: str, loFreq: int, loAdd: bool,
        minFreq: int, maxFreq: int, minPower: int,
        maxPower: int, supportsRx: bool, supportsTx: bool
    ):
        super().__init__(type="transverter", address=address, name=name)
        self.loFreq = loFreq
        self.loAdd = loAdd
        self.minFreq = minFreq
        self.maxFreq = maxFreq
        self.minPower = minPower
        self.maxPower = maxPower
        self.supportsRx = supportsRx
        self.supportsTx = supportsTx
        self.controller = None

    def get_discovery_json(self) -> str:
        return {
            **super().get_discovery_json(),
            **{
                "minFreq": self.minFreq,
                "maxFreq": self.maxFreq,
                "minPower": self.minPower,
                "maxPower": self.maxPower,
                "supportsRx": self.supportsRx,
                "supportsTx": self.supportsTx
            }
        }

    def get_status_json(self) -> str:
        return({
            "type": "transverter",
            "address": self.address,
            "name": self.name,
            "temperatures": self.get_temperatures(),
            "rfPowerReadings": self.get_rf_power_readings(),
            "dcPowerReadings": self.get_dc_power_readings(),
            "state": self.state,
            "controller": self.controller
        })


class CardHandler:
    def __init__(self, filename, warnings, numSlots=2):
        self.warnings = warnings
        self.numSlots = numSlots
        self.cards = []
        self.driver = RS485Driver(
            gpio=PIN_RS485_TX,
            serialFile=filename,
            baud=115200
        )

    def __enter__(self):
        return self

    def __exit__(self, *args, **kwargs):
        pass

    def _process_packet(func):
        """
        Wrapper to deal with errors caused by any function that handles
        JSON responses
        """
        def wrapper(self, response: str, address: int, *args, **kwargs):

            # If card has a name use that, else address by slot
            if "card" in kwargs:
                id = kwargs.get("card").name
            else:
                id = "Slot {}".format(address)

            try:
                res = json.loads(response[1:].decode('utf-8'))
                return func(self, res, address, *args, **kwargs)

            except UnicodeDecodeError:
                self.warnings.add_warning(
                    id,
                    "RS485",
                    "Malformed message received"
                )
            except JSONDecodeError:
                self.warnings.add_warning(
                    id,
                    "RS485",
                    "Received message contains invalid JSON"
                )
            except KeyError:
                self.warnings.add_warning(
                    id,
                    "RS485",
                    "Response from card "
                    "was not complete"
                )

        return wrapper

    def run_discovery_requests(self):
        logging.info("Starting RS485 discovery...")
        discoveredCards = []
        # Query all the slots
        for x in range(1, 1 + self.numSlots):
            packet = RS485Packet(
                address=x,
                command="D",
            )
            response = self.driver.query(packet)
            if response:
                if(response[0] != ord('D')):
                    self.warnings.add_warning(
                        "General",
                        "RS485",
                        "Response to discovery request was not "
                        "a discovery response"
                    )
                    continue
                else:
                    # newCard is None or an object that inherits from "Card"
                    newCard = self.handle_discovery_response(
                        response, address=x
                    )
                    if newCard:
                        discoveredCards.append(newCard)

        self.check_discoveredCards(discoveredCards)
        logging.info("Finished RS485 discovery")

    def check_discoveredCards(self, discoveredCards: List[Card]) -> None:
        """
        Deal with handling if the responding cards are not what we expect
        """
        if discoveredCards != self.cards:
            for t in self.cards:
                if t not in discoveredCards:
                    # We have lost a card!
                    self.remove_card(t)

            for t in discoveredCards:
                if t not in self.cards:
                    # New card, add it to self.cards
                    self.add_card(t)

    def add_card(self, card: Card) -> None:
        """ Adds a newly discovered card """
        if isinstance(card, Transverter):
            logging.info(
                "{}-{} transverter \"{}\" discovered in slot {}".format(
                    readable_freq(card.minFreq), readable_freq(card.maxFreq),
                    card.name, card.address
                )
            )
            self.cards.append(card)
        else:
            raise NotImplementedError

    def remove_card(self, card: Card) -> None:
        """ Removes a card """
        if card not in self.cards:
            raise ValueError(
                "Attemped to remove non-existent card: {}".format(
                    card.name
                )
            )

        self.warnings.add_error(
            card.name,
            "RS485",
            "Card no longer responding"
        )

    def run_status_requests(self):
        for x in self.cards:
            address = x.address
            packet = RS485Packet(
                address=address,
                command="S"
            )
            response = self.driver.query(packet)
            if response:
                if(response[0] != ord('S')):
                    self.warnings.add_warning(
                        "General",
                        "RS485",
                        "Response to status request was not "
                        "a status response"
                    )
                    continue
                else:
                    self.handle_status_response(
                        response, address=address, card=x
                    )
            else:
                self.warnings.add_error(
                    x.name,
                    "RS485",
                    "Card no longer responding"
                )
                self.cards.remove(x)

    @_process_packet
    def handle_status_response(
        self, response: str, address: int, card: Card
    ):
        card.warnings = response["warnings"]
        card.errors = response["errors"]

        # Simple single value things
        card.state = response["state"]
        card.controller = response["controller"]

        # Things where the number of items should be constant
        for name, value in response["temperatures"].items():
            card.temperatures[name] = value

        for name, value in response["rfPowerReadings"].items():
            card.rfPowerReadings[name] = value

        for name, value in response["dcPowerReadings"].items():
            card.dcPowerReadings[name] = value

        logging.debug(
            "Updated status info for {} in address {}".format(
                card.name, address
            )
        )

    @_process_packet
    def handle_discovery_response(self, response: str, address: int):
        if(response["type"] == "transverter"):
            newTransverter = Transverter(
                address=address,
                name=response["name"],
                loFreq=response["loFreq"],
                loAdd=response["loAdd"],
                minFreq=response["minFreq"],
                maxFreq=response["maxFreq"],
                minPower=response["minPower"],
                maxPower=response["maxPower"],
                supportsRx=response["supportsRx"],
                supportsTx=response["supportsTx"]
            )
            return newTransverter
        else:
            self.warnings.add_error(
                response["name"],
                "RS485",
                "Unsupported Card Type \"{}\" discovered".format(response["type"])
            )

    def get_discovery_info(self):
        self.run_discovery_requests()
        return [x.get_discovery_json() for x in self.cards]

    def get_status_info(self):
        self.run_status_requests()
        return [x.get_status_json() for x in self.cards]
