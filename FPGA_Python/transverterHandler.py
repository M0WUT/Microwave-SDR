import logging
import json
from rs485Driver import RS485Driver, RS485Packet
from time import sleep

class TransverterHandler:
    def __init__(self, filename, warnings, numSlots=8):
        self.warnings = warnings
        self.numSlots = numSlots  # @TODO Read from EEPROM
        self.driver = RS485Driver(mio=0, serialFile="/dev/ttyPS2", baud=115200)
        while(True):
            self.run_discovery()
            sleep(0.1)

    def run_discovery(self):
        logging.info("Starting transverter discovery...")
        # Query all the slots
        for x in range(1, 1 + self.numSlots):
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
