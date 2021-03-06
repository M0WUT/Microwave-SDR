import logging
import socket
from uuid import getnode
from dataclasses import dataclass
import json
from json.decoder import JSONDecodeError


def readable_freq(freq):
    """Converts frequency in Hz to human readable form"""
    if(freq >= 1e9):
        return str(freq / 1e9) + "GHz"
    elif (freq >= 1e6):
        return str(freq / 1e6) + "MHz"
    elif (freq >= 1e3):
        return str(freq / 1e3) + "kHz"
    else:
        return str(freq) + "Hz"


def get_ip():
    """ Returns IP Address as string"""
    # Credit to Stack Overflow user2561747
    # https://stackoverflow.com/questions/166506/finding-local-ip-addresses-using-pythons-stdlib
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    try:
        # doesn't even have to be reachable
        s.connect(('10.255.255.255', 1))
        IP = s.getsockname()[0]
    except Exception:
        IP = None
        logging.critical("No IP Address found")
    finally:
        s.close()
        return IP


def get_mac():
    mac = getnode()
    return ':'.join(("%012X" % mac)[i:i+2] for i in range(0, 12, 2))


def get_link_speed() -> int:
    with open("/sys/class/net/eth0/speed") as file:
        return int(file.readline().strip())


class NamedValue():
    def __init__(self, name: str, value: float):
        self.name = name
        self.value = float(value)


@dataclass
class LabelColour():
    description: str
    textColour: str = None
    backgroundColour: str = None


STYLE_ERROR = LabelColour(description='Error', textColour='black', backgroundColour='red')
STYLE_WARNING = LabelColour(description='Warning', textColour='black', backgroundColour='yellow')
STYLE_WARMUP = LabelColour(description='Warmup', backgroundColour='blue')
STYLE_IDLE = LabelColour(description='Idle', backgroundColour='transparent')
STYLE_RX = LabelColour(description='RX', backgroundColour='green')
STYLE_TX = LabelColour(description='TX', backgroundColour='red')
STYLE_SHUTDOWN = LabelColour(description='Shutdown', backgroundColour='#505050', textColour='red')


SDR_STYLES = [STYLE_ERROR, STYLE_WARNING, STYLE_WARMUP, STYLE_IDLE, STYLE_RX, STYLE_TX, STYLE_SHUTDOWN]