from i2cDevice import I2CDevice
from gpio import GPIO
from warningHandler import WarningHandler


class Eeprom(I2CDevice):
    def __init__(
        self, i2cFile: str, name: str, address: int,
        wpPin: GPIO, warnings: WarningHandler
    ):
        self.wp = wpPin
        self.wp.set_direction(GPIO.INPUT)
        super().__init__(i2cFile, name, address, warnings)
        if((self.initialised() == 0) or self.wp.read() == 0):
            self.first_time_setup()

    def initialised(self) -> bool:
        return(
            (self.read(0) == ord('L')) and
            (self.read(1) == ord('I')) and
            (self.read(2) == ord('D'))
        )

    def first_time_setup(self):
        raise NotImplementedError
