import logging
import socket
from uuid import getnode


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


def get_link_speed():
    with open("/sys/class/net/eth0/speed") as file:
        speed = file.readline().strip()
        if(speed == '1000'):
            return '1 Gbps'
        else:
            return str(speed) + " Mbps"


class NamedValue():
    def __init__(self, name: str, value: float):
        self.name = name
        self.value = float(value)
