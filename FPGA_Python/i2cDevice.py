import logging
from fcntl import ioctl
import os
from warningHandler import WarningHandler
from time import sleep


class I2CDevice:
    # Magic number to change I2C slave address - not my code
    I2C_CHANGE_ADDRESS_COMMAND = 0x0706

    def __init__(
        self, deviceFile: str, deviceName: str,
        deviceAddress: int, warnings: WarningHandler = None
    ):
        self.dev = deviceFile
        self.name = deviceName
        self.address = deviceAddress
        self.warnings = warnings

        self.check_device()

    def check_device(self) -> None:
        try:
            self.read(0)
            logging.info(
                "Found {} in I2C address {}".format(
                    self.name,
                    hex(self.address)
                )
            )
        except OSError:
            self.warnings.add_error(
                "I2C",
                "Device {} at address {} not found".format(
                    self.name,
                    hex(self.address)
                )
            )

    def set_device_address(self, file):
        # Set I2C Slave Address

        ioctl(
            file, I2CDevice.I2C_CHANGE_ADDRESS_COMMAND, self.address
        )

    def read(self, address: int) -> int:

        x = b''
        try:
            with open(self.dev, 'wb') as file:
                self.set_device_address(file)
                file.write(address.to_bytes(2, byteorder='big', signed=False))
                file.flush()
                file = os.open(self.dev, os.O_RDONLY)
                ioctl(
                    file, I2CDevice.I2C_CHANGE_ADDRESS_COMMAND, self.address
                )
                x = os.read(file, 1)
        except Exception:
            self.warnings.add_warning(
                "General",
                "I2C",
                "I2C read from {} failed".format(self.name)
            )
        finally:
            os.close(file)
            return int.from_bytes(x, "big")

    def write(self, address: int, data: int) -> None:
        with open(self.dev, 'wb') as file:
            try:
                self.set_device_address(file)
                x = ((address << 8) & 0xFFFF00) | (data & 0xFF)
                if (file.write(x.to_bytes(3, byteorder='big', signed=False)) != 3):
                    raise Exception
                file.flush()
                sleep(0.02)
            except Exception:
                self.warnings.add_warning(
                    "General",
                    "I2C",
                    "I2C write to {} failed".format(self.name)
                )

if __name__ == '__main__':

    logging.basicConfig(
        format='%(asctime)s %(levelname)-8s %(message)s',
        level=logging.INFO,
        datefmt='%Y-%m-%d %H:%M:%S'
    )

    x = I2CDevice("/dev/i2c-0", "test", 0x50)
    x.read(1)
