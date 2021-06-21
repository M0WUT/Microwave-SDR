import serial
from time import sleep
import logging
from typing import List
from gpio import AxiGpio, MIO, GPIO
import atexit


class RS485Packet():
    def __init__(self, address: int, command: int, payload: List[bytes] = []):
        self.address = address
        self.command = command
        self.payload = payload


class RS485Driver():
    TX = 1
    RX = 0

    def __init__(self, gpio: int, serialFile: str, baud: int):
        self.serial = None
        try:
            self.serial = serial.Serial(serialFile, baud, timeout=0.2)
        except serial.serialutil.SerialException:
            self.warnings.add_error(
                "Controller", "Transverter Control",
                "Couldn't open serial port: {}".format(serialFile)
            )

        atexit.register(self.cleanup)

        self.gpio = AxiGpio(0, GPIO.OUTPUT)

        self.set_direction(self.RX)
        self.serial.reset_input_buffer()

    def set_direction(self, x: bool):
        self.gpio.write(x)

    def write(self, x: RS485Packet):
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
        self.serial.reset_input_buffer()

    def read(self) -> str:
        x = self.serial.readline()
        if x == b'':
            return x
        else:
            if x[0] != 0:  # Master should have RS485 address of 0
                logging.warning("Response to RS485 query was not addressed to master")
            return x[1:]  # Remove address character

    def query(self, address: int) -> str:
        self.write(address)
        return self.read()

    def cleanup(self):
        if self.serial:
            self.serial.close()
