// Sorry, this is really animal but the class both the USB
// and hardware UART classes inherit from (Stream) doesn't
// support all the methods so going to bodge it and hope
// for the best :(

//#define DEBUG_SERIAL_CLASS HardwareSerial
#define DEBUG_SERIAL_CLASS usb_serial_class