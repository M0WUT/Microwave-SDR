import serial
import logging
import json
from rs485Driver import RS485Driver, RS485Packet


class TransverterHandler:
    def __init__(self, filename, warnings, numSlots=8):
        self.warnings = warnings
        self.numSlots = numSlots  # @TODO Read from EEPROM
        self.driver = RS485Driver(mio=0, serialFile="/dev/ttyPS2", baud=9600)
        self.run_discovery()

    def run_discovery(self):
        logging.info("Starting transverter discovery...")
        # Query all the slots
        for x in range(self.numSlots):
            packet = RS485Packet(
                address=x,
                command="D",
            )
            response = self.driver.query(packet)
            if response:
                jsonResponse = json.loads(response.decode('utf-8'))
                logging.info(
                    "Transverter {} discovered in slot {}".format(
                        jsonResponse['name'], x
                    )
                )
