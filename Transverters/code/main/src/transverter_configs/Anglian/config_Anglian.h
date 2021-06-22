#ifndef CONFIG_ANGLIAN_H
#define CONFIG_ANGLIAN_H

////////////////////////////
// Transverter Parameters //
////////////////////////////

// Display name of the transverter - must be in double quotes (")
#define NAME "Anglian 3L"
// Local oscillator frequency
#define LO_FREQ 116e6
// Set to true if RF = IF + LO, set to false if RF = LO - IF
#define RF_EQUALS_IF_PLUS_LO true
#define MIN_IF_FREQ 28e6
#define MAX_IF_FREQ 30e6
#define MIN_TX_POWER 20
#define MAX_TX_POWER 20
#define ALLOW_TX true

////////////////////////////////////////
// Uncomment to enable debug messages //
////////////////////////////////////////
#define DEBUG

///////////////////////
// PCB Configuration //
///////////////////////

// Pin definitions
#define LED_RX 13
#define LED_TX 17
#define LED_STATUS 14
#define LED_ERROR 15
#define RS485_TX_PIN 9
// Write protect pin for EEPROM
#define PIN_WP 17

// Bodge to ensure Transverter is created with the correct type
#define TRANSVERTER_CLASS Anglian

#define DEBUG_SERIAL Serial
#define RS485_SERIAL Serial1

// I2C Address
#define ADDRESS_EEPROM_I2C_ADDRESS 0x50
#define GENERAL_EEPROM_I2C_ADDRESS 0x51

#include "../baseTransverterConfig/baseTransverterConfig.h"
#include "../../panic/panic.h"

class Anglian : public BaseTransverterConfig{
    public:
        Anglian(Panicker *panicker);
}; 

#endif




