#ifndef CONFIG_ANGLIAN_H
#define CONFIG_ANGLIAN_H

// Pin definitions
#define LED_RX 13
#define LED_TX 17
#define LED_STATUS 14
#define LED_ERROR 15
#define RS485_TX_PIN 9

// Bodge to ensure Transverter is created with the correct type
#define TRANSVERTER_CLASS Anglian

#define DEBUG_SERIAL Serial
#define RS485_SERIAL Serial1

// I2C Address
#define ADDRESS_EEPROM_I2C_ADDRESS 0x50
#define GENERAL_EEPROM_I2C_ADDRESS 0x51

#define DEBUG

#include "../baseTransverterConfig/baseTransverterConfig.h"
#include "../../panic/panic.h"

class Anglian : public BaseTransverterConfig{
    public:
        Anglian(Panicker *panicker);
}; 

#endif




