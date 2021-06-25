import typing
import logging
from fcntl import ioctl


class I2CDevice:
    # Magic number to change I2C slave address - not my code
    I2C_CHANGE_ADDRESS_COMMAND = 0x0706

    def __init__(self, deviceFile: str, deviceName: str, deviceAddress: int):
        self.dev = deviceFile
        self.name = deviceName
        self.address = deviceAddress

        self.check_device()
        logging.info(
            "Found {} in I2C Address {}".format(
                self.name,
                hex(self.address)
            )
        )

    def check_device(self) -> None:
        pass

    def set_device_address(self, file):
        # Set I2C Slave Address
        logging.critical(
            ioctl(
                file, I2CDevice.I2C_CHANGE_ADDRESS_COMMAND, self.address
            )
        )

    def read(self, address: int) -> int:
        with open(self.dev, 'wb') as file:
            self.set_device_address(file)
            file.write(b'0')
        with open(self.dev, 'rb') as file:
            self.set_device_address(file)
            return(file.read())





    
if __name__ == '__main__':

    logging.basicConfig(
        format='%(asctime)s %(levelname)-8s %(message)s',
        level=logging.INFO,
        datefmt='%Y-%m-%d %H:%M:%S'
    )

    x = I2CDevice("/dev/i2c-1", "test", 0x50)
    x.read(1)