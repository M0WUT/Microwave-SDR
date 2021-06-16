// Pin definitions
#define LED_RX 13
#define LED_TX 17
#define LED_STATUS 14
#define LED_ERROR 15
#define RS485_TX_PIN 9
#define DEBUG_SERIAL Serial
#define RS485_SERIAL Serial1

// I2C Address
#define ADDRESS_EEPROM_I2C_ADDRESS 0x50
#define GENERAL_EEPROM_I2C_ADDRESS 0x51

#define DEBUG

// Sorry, this is really animal but the class both the USB
// and hardware UART classes inherit from (Stream) doesn't
// support all the methods so going to bodge it and hope
// for the best :(

//#define DEBUG_SERIAL_CLASS HardwareSerial
#define DEBUG_SERIAL_CLASS usb_serial_class

