import serial
import logging
import json


class TransverterHandler:
    def __init__(self, filename, warnings, numSlots=8):
        self.warnings = warnings
        self.numSlots = numSlots  # @TODO Read from EEPROM
        try:
            self.serial = serial.Serial(filename, 9600, timeout=0.1)
        except serial.serialutil.SerialException:
            self.warnings.add_error(
                "Controller", "Transverter Control",
                "Couldn't open serial port: {}".format(filename)
            )
        self.run_discovery()

    def run_discovery(self):
        # Query all the slots
        for x in range(self.numSlots):
            self.serial.write(x.to_bytes(1, 'big') + b"D\n")
            response = self.serial.readline()
            if response:
                jsonResponse = json.loads(response.decode('utf-8'))
                logging.info(
                    "Transverter {} discovered in slot {}".format(
                        jsonResponse['name'], x
                    )
                )
