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
        maxPower: int, allowTx: bool
    ):
        self.address = address
        self.name = name
        self.loFreq = loFreq
        self.loAdd = loAdd
        self.minFreq = minFreq
        self.maxFreq = maxFreq
        self.minPower = minPower
        self.maxPower = maxPower
        self.allowTx = allowTx

    def __eq__(self, other):
        return ((self.address == other.address) and (self.name == other.name))

    def json(self) -> str:
        return([{
            "name": self.name,
            "loFreq": self.loFreq,
            "loAdd": self.loAdd,
            "minFreq": self.minFreq,
            "maxFreq": self.maxFreq,
            "minPower": self.minPower,
            "maxPower": self.maxPower,
            "allowTx": self.allowTx
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
        self.run_discovery()

    def run_discovery(self):
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

                try:
                    res = json.loads(response[1:].decode('utf-8'))
                    if(res["type"] == "Transverter"):
                        newTransverter = Transverter(
                            address=x,
                            name=res["name"],
                            loFreq=res["loFreq"],
                            loAdd=res["loAdd"],
                            minFreq=res["minFreq"],
                            maxFreq=res["maxFreq"],
                            minPower=res["minPower"],
                            maxPower=res["maxPower"],
                            allowTx=res["allowTx"]
                        )

                        discoveredTransverters.append(newTransverter)
                    else:
                        raise NotImplementedError

                except UnicodeDecodeError:
                    self.warnings.add_warning(
                        "General",
                        "RS485",
                        "Malformed message received"
                    )
                except JSONDecodeError:
                    self.warnings.add_warning(
                        "General",
                        "RS485",
                        "Received message contains invalid JSON"
                    )
                except KeyError:
                    self.warnings.add_warning(
                        "General",
                        "RS485",
                        "Response from transverter in address {} "
                        "was not complete".format(x)
                    )

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

    def get_transverters(self):
        self.run_discovery()
        jsonBlob = []
        for x in self.transverters:
            jsonBlob.append(x.json())
        return jsonBlob
