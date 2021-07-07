from config import PIN_RS485_TX
from json.decoder import JSONDecodeError
import logging
import json
from usefulFunctions import readable_freq
from rs485Driver import RS485Driver, RS485Packet
from time import sleep


class Transverter():
    def __init__(
        self, address: int, name: str, loFreq: int, loAdd: bool,
        minFreq: int, maxFreq: int, minPower: int,
        maxPower: int, supportsRx: bool, supportsTx: bool
    ):
        self.address = address
        self.name = name
        self.loFreq = loFreq
        self.loAdd = loAdd
        self.minFreq = minFreq
        self.maxFreq = maxFreq
        self.minPower = minPower
        self.maxPower = maxPower
        self.supportsRx = supportsRx
        self.supportsTx = supportsTx
        self.warnings = []
        self.errors = []
        self.temperatures = []
        self.state = None
        self.rfPowerReadings = []
        self.dcPowerReadings = []
        self.controller = None

    def __eq__(self, other):
        return ((self.address == other.address) and (self.name == other.name))

    def get_discovery_json(self) -> str:
        return([{
            "name": self.name,
            "loFreq": self.loFreq,
            "loAdd": self.loAdd,
            "minFreq": self.minFreq,
            "maxFreq": self.maxFreq,
            "minPower": self.minPower,
            "maxPower": self.maxPower,
            "supportsRx": self.supportsRx,
            "supportsTx": self.supportsTx
        }])


class TransverterHandler:
    def __init__(self, filename, warnings, numSlots=2):
        self.warnings = warnings
        self.numSlots = numSlots
        self.transverters = []
        self.driver = RS485Driver(
            gpio=PIN_RS485_TX,
            serialFile=filename,
            baud=115200
        )
        self.run_discovery_requests()
        while(True):
            self.run_status_requests()
            sleep(0.5)

    def _process_packet(func):
        def wrapper(self, response: str, address: int, *args, **kwargs):

            if "transverter" in kwargs:
                id = kwargs.get("transverter").name
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
                    "Response from transverter "
                    "was not complete"
                )

        return wrapper

    def run_discovery_requests(self):
        logging.info("Starting RS485 discovery...")
        discoveredTransverters = []
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
                    newTransverter = self.handle_discovery_response(
                        response, address=x
                    )
                    if newTransverter:
                        discoveredTransverters.append(newTransverter)

        for t in self.transverters:
            if t not in discoveredTransverters:
                # We have lost a transverter!
                self.warnings.add_error(
                    t.name,
                    "RS485",
                    "Transverter no longer responding"
                )
                self.transverters.remove(t)

        for t in discoveredTransverters:
            if t not in self.transverters:
                logging.info(
                    "{}-{} transverter \"{}\" discovered in slot {}".format(
                        readable_freq(t.minFreq), readable_freq(t.maxFreq),
                        t.name, t.address
                    )
                )
                self.transverters.append(t)

        logging.info("Finished RS485 discovery")

    def run_status_requests(self):
        for x in self.transverters:
            address = x.address
            packet = RS485Packet(
                address=address,
                command="S",
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
                        response, address=address, transverter=x
                    )
            else:
                self.warnings.add_error(
                    x.name,
                    "RS485",
                    "Transverter no longer responding"
                )
                self.transverters.remove(x)

    @_process_packet
    def handle_status_response(
        self, response: str, address: int, transverter: Transverter
    ):
        transverter.warnings = response["warnings"]
        transverter.errors = response["errors"]
        transverter.temperatures = response["temperatures"]
        transverter.state = response["state"]
        transverter.rfPowerReadings = response["rfPowerReadings"]
        transverter.dcPowerReadings = response["dcPowerReadings"]
        transverter.controller = response["controller"]
        logging.debug(
            "Updated status info for {} in address {}".format(
                transverter.name, address
            )
        )

    @_process_packet
    def handle_discovery_response(self, response: str, address: int):
        if(response["type"] == "Transverter"):
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
            raise NotImplementedError

    def get_discovery_info(self):
        jsonBlob = []
        for x in self.transverters:
            jsonBlob.append(x.get_discovery_json())
        return jsonBlob
