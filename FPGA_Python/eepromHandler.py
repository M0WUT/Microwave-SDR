from i2cDevice import I2CDevice
from gpio import GPIO
from warningHandler import WarningHandler
import logging
from time import sleep


class Eeprom(I2CDevice):
    def __init__(
        self, i2cFile: str, name: str, address: int,
        wpPin: GPIO, warnings: WarningHandler
    ):
        self.wp = wpPin
        self.wp.set_direction(GPIO.INPUT)
        super().__init__(i2cFile, name, address, warnings)
        while(1):
            logging.critical(self.wp.read())
            sleep(0.5)
