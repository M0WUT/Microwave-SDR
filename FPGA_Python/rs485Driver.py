from config_developer import LED_ERROR
import serial
import logging
from typing import List
from gpio import GPIO
import atexit
from threading import Lock


class RS485Packet():
    def __init__(self, address: int, command: int, payload: List[bytes] = []):
        self.address = address
        self.command = command
        self.payload = payload


class RS485Driver():
    TX = 1
    RX = 0

    def __init__(self, gpio: GPIO, serialFile: str, baud: int):
        self.serial = None
        try:
            self.serial = serial.Serial(serialFile, baud, timeout=0.2)
        except serial.serialutil.SerialException:
            self.warnings.add_error(
                "Controller", "Transverter Control",
                "Couldn't open serial port: {}".format(serialFile)
            )

        self.mutex = Lock()

        self.gpio = gpio
        self.gpio.set_direction(GPIO.OUTPUT)
        self.gpio.write(GPIO.LOW)

        self.set_direction(self.RX)
        self.serial.reset_input_buffer()

    def set_direction(self, x: bool):
        self.gpio.write(x)

    def write(self, x: RS485Packet, getLock: bool = True):
        if getLock:
            self.mutex.acqure()
        try:
            LED_ERROR.write(GPIO.HIGH)
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
            LED_ERROR.write(GPIO.LOW)
        finally:
            if getLock:
                self.mutex.release()

    def read(self, getLock: bool = True) -> str:
        if getLock:
            self.mutex.acquire()
        try:
            x = self.serial.readline()
            if x == b'':
                return x
            else:
                if x[0] != 0:  # Master should have RS485 address of 0
                    logging.warning(
                        "Response to RS485 query was not addressed to master"
                    )
                return x[1:]  # Remove address character
        finally:
            if getLock:
                self.mutex.release()

    def query(self, packet: RS485Packet) -> str:
        self.mutex.acquire()
        try:
            self.write(packet, getLock=False)
            response = self.read(getLock=False)
            logging.debug(
                "RS485 RX from address {}: {}".format(packet.address, response)
            )
            return response
        finally:
            self.mutex.release()

    def cleanup(self) -> None:
        if self.serial:
            self.serial.close()
