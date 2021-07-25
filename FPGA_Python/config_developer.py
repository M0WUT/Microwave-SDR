from gpio import AxiGpio, GPIO

LED_ERROR = AxiGpio(1, GPIO.OUTPUT)
LED_STATUS = AxiGpio(3, GPIO.OUTPUT)
PIN_RS485_TX = AxiGpio(2, GPIO.OUTPUT)
LED_RX = AxiGpio(4, GPIO.OUTPUT)
LED_TX = AxiGpio(0, GPIO.OUTPUT)
PIN_WP = AxiGpio(5, GPIO.INPUT)

SLOTS_I2C_FILE = "/dev/i2c-0"
SLOTS_EEPROM_ADDRESS = 0x50

STATUS_REGISTERS_FILE = "/dev/statusregs"

TRANSVERTER_RS485_UART = "/dev/ttyPS1"

MQTT_API_VERSION = "0.0.1w"

NUM_CHANNELS = 1
