import serial
from time import sleep
from os import path
import logging
from typing import List


class RS485Packet():
    def __init__(self, address: int, command: int, payload: List[bytes] = []):
        self.address = address
        self.command = command
        self.payload = payload


class RS485Driver():
    MIO_BASE_ADDRESS = 1023
    TX = 1
    RX = 0

    def __init__(self, mio: int, serialFile: str, baud: int):
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
        self.set_direction(self.RX)
        self.serial.reset_input_buffer()

    def set_direction(self, x: int):
        assert x in [self.TX, self.RX]
        with open(self.mioFile, 'w') as file:
            file.write(str(x))

    def write(self, x):
        address = x.address.to_bytes(1, 'big')
        command = x.command.encode("utf-8")
        self.set_direction(self.TX)
        payload = bytes(x.payload)
        logging.debug(
            "RS485 TX to address {}, command {}, payload {}".format(
                x.address, x.command, x.payload
            )
        )
        self.serial.write(address + command + payload + b"\n")
        self.serial.flush()
        self.set_direction(self.RX)

        # Changing RS485 from TX to RX introduces glitches on the
        # RX line so clear the buffer
        sleep(0.01)
        self.serial.reset_input_buffer()

    def read(self) -> str:
        return self.serial.readline()

    def query(self, address: int) -> str:
        self.write(address)
        return self.read()

    def __del__(self):
        with open("/sys/class/gpio/unexport", 'w') as file:
            file.write(str(self.mio))
        if self.serial:
            self.serial.close()
