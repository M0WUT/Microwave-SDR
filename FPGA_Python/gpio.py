from os import path
import atexit
import logging


class GPIO():
    OUTPUT = 0
    INPUT = 1
    HIGH = 1
    LOW = 0

    def __init__(self, gpio: int, direction: bool, initialValue: bool = LOW):
        self.gpioFile = None
        self.gpio = gpio

        if not path.exists("/sys/class/gpio/gpio{}".format(self.gpio)):
            # Only export GPIO if it doesn't already exist
            with open("/sys/class/gpio/export", 'w') as file:
                file.write(str(self.gpio))
        atexit.register(self.cleanup)

        self.gpioFile = "/sys/class/gpio/gpio{}/value".format(self.gpio)
        self.set_direction(direction)

        if(self.direction == GPIO.OUTPUT):
            self.write(initialValue)

    def set_direction(self, direction: bool):
        with open(
            "/sys/class/gpio/gpio{}/direction".format(self.gpio), 'w'
        ) as file:
            file.write("out" if direction == GPIO.OUTPUT else "in")
            self.direction = direction

    def write(self, value: bool):
        assert value in [GPIO.HIGH, GPIO.LOW]
        if self.direction == GPIO.INPUT:
            logging.warning(
                "Attemped to set value of input GPIO"
            )
        with open(self.gpioFile, 'w') as file:
            file.write(str(value))

    def read(self) -> bool:
        with open(
            "/sys/class/gpio/gpio{}/value".format(self.gpio), 'r'
        ) as file:
            return int(file.read().strip())

    def cleanup(self):
        if(self.direction == GPIO.OUTPUT):
            self.write(GPIO.LOW)
            self.set_direction(GPIO.INPUT)
        with open("/sys/class/gpio/unexport", 'w') as file:
            file.write(str(self.gpio))


class AxiGpio(GPIO):

    AXI_GPIO_BASE_ADDRESS = 1018

    def __init__(
        self, AxiGpio: int, direction: bool = GPIO.INPUT,
        initialValue: bool = GPIO.LOW
    ):
        super().__init__(
            AxiGpio + self.AXI_GPIO_BASE_ADDRESS, direction, initialValue
        )


class MIO(GPIO):

    AXI_GPIO_BASE_ADDRESS = 900

    def __init__(
        self, mio: int, direction: bool = GPIO.INPUT,
        initialValue: bool = GPIO.LOW
    ):
        super().__init__(
            mio + self.AXI_GPIO_BASE_ADDRESS, direction, initialValue
        )


if __name__ == '__main__':
    from time import sleep

    x = AxiGpio(2, GPIO.INPUT)
    while(1):
        print(x.read())
        sleep(0.5)
