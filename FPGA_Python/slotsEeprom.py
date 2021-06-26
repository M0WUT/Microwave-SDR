from eepromHandler import Eeprom
from gpio import GPIO
from warningHandler import WarningHandler
from config import LED_ERROR, LED_STATUS
import logging


class slotsEeprom(Eeprom):
    def __init__(
        self, i2cFile: str, name: str, address: int,
        wpPin: GPIO, warnings: WarningHandler
    ):
        super().__init__(i2cFile, name, address, wpPin, warnings)
        self._numSlots = self.read(3)
        logging.info("Detected baseboard with {} slots".format(self._numSlots))

    def first_time_setup(self):
        LED_STATUS.write(GPIO.LOW)
        LED_ERROR.write(GPIO.HIGH)
        self.warnings.add_warning(
            "Baseboard",
            "EEPROM",
            "Uninitialised EEPROM discovered"
        )

        self.write(0, ord('L'))
        self.write(1, ord('I'))
        self.write(2, ord('D'))
        while(True):
            try:
                wantedAddress = int(
                    input(
                        "\n\nPlease enter number of slots this "
                        "baseboard suppports and press Enter\n"
                    )
                )
            except Exception:
                continue

            self.write(3, wantedAddress & 0xFF)
            x = self.read(3)
            if(x != wantedAddress):
                self.warnings.add_warning(
                    "Baseboard",
                    "EEPROM",
                    "Failed to write to slots EEPROM. "
                    "Requsted number of slots: {} "
                    "Readback number of slots: {}".format(wantedAddress, x)
                )
            else:
                LED_STATUS.write(GPIO.HIGH)
                LED_ERROR.write(GPIO.LOW)
                return

    def num_slots(self):
        return self._numSlots
