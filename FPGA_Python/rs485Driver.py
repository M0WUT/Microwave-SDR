import serial
from time import sleep
from os import path
import logging


class RS485Packet():
    def __init__(self, address, command, payload=[]):
        self.address = address
        self.command = command
        self.payload = payload


class RS485Driver():
    MIO_BASE_ADDRESS = 1023
    TX = 1
    RX = 0

    def __init__(self, mio, serialFile, baud):
        self.mioFile = None
        self.serial = None
        try:
            self.serial = serial.Serial(serialFile, baud, timeout=0.1)
        except serial.serialutil.SerialException:
            self.warnings.add_error(
                "Controller", "Transverter Control",
                "Couldn't open serial port: {}".format(serialFile)
            )

        self.mio = mio + self.MIO_BASE_ADDRESS
        if not path.exists("/sys/class/gpio/gpio{}".format(self.mio)):
            # Only export GPIO if it doesn't already exist
            with open("/sys/class/gpio/export", 'w') as file:
                file.write(str(self.mio))

        with open("/sys/class/gpio/gpio{}/direction".format(self.mio), 'w') as file:
            file.write("out")

        self.mioFile = "/sys/class/gpio/gpio{}/value".format(self.mio)

    def set_direction(self, x):
        assert x in [self.TX, self.RX]
        with open(self.mioFile, 'w') as file:
            file.write(str(x))

    def write(self, x):
        address = x.address.to_bytes(1, 'big')
        command = x.command.encode("utf-8")
        payload = bytes(x.payload)
        logging.debug(
            "RS485 TX to address {}, command {}, payload {}" .format(
                x.address, x.command, x.payload
            )
        )

        try:
            self.set_direction(self.TX)
            self.serial.write(address + command + payload + b"\n")
        finally:
            self.set_direction(self.RX)

    def read(self):
        return self.serial.readline()

    def query(self, x):
        self.write(x)
        return self.read()

    def __enter__(self):
        return self

    def __exit__(self, *args, **kwargs):
        with open("/sys/class/gpio/unexport", 'w') as file:
            file.write(str(self.mio))
        if self.serial:
            self.serial.close()


if __name__ == '__main__':
    with RS485Driver(mio=0, serialFile="/dev/ttyPS2", baud=9600) as x:
        packet = RS485Packet(address=1, command="D")
        while(True):
            x.write(packet)
            sleep(0.2)
