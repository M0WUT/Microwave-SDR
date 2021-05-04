import logging
from mqttHandler import MqttHandler
from vfo import Vfo
from statusHandler import StatusRegs
from networkHandler import NetworkHandler
from warningHandler import WarningHandler
import time
from usefulFunctions import get_ip
import sys
from transverterHandler import TransverterHandler

logging.basicConfig(
    format='%(asctime)s %(levelname)-8s %(message)s',
    level=logging.INFO,
    datefmt='%Y-%m-%d %H:%M:%S'
)


logging.info("Application started. Waiting for network connection...")
while not get_ip():
    time.sleep(2)
logging.info("IP Address: {}. Starting main application".format(get_ip()))
warnings = WarningHandler()
mqtt = MqttHandler("192.168.0.26", 1883, warnings)
warnings.register_mqtt(mqtt)
network = NetworkHandler(mqtt, warnings)
status = StatusRegs("/dev/statusregs", warnings)
transverters = TransverterHandler("/dev/ttyPS1", warnings)
v = Vfo('A', mqtt, status, warnings)


while(True):
    try:
        time.sleep(10)
    except KeyboardInterrupt:
        sys.exit()
