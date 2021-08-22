#ifndef CONFIG_ANGLIAN_H
#define CONFIG_ANGLIAN_H

////////////////////////////
// Transverter Parameters //
////////////////////////////

// Display name of the transverter - must be in double quotes (")
#define NAME "Iceni"
// Local oscillator frequency
#define LO_FREQ 404e6
// Set to true if RF = IF + LO, set to false if RF = LO - IF
#define RF_EQUALS_IF_PLUS_LO true
#define MIN_FREQ 430e6
#define MAX_FREQ 438e6
#define MIN_TX_POWER 20
#define MAX_TX_POWER 20
#define SUPPORTS_RX true
#define SUPPORTS_TX true
#define SUPPORTS_DUPLEX false

////////////////////////////////////////
// Uncomment to enable debug messages //
////////////////////////////////////////
//#define DEBUG

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
#define TRANSVERTER_CLASS Iceni

#define DEBUG_SERIAL Serial
#define RS485_SERIAL Serial1

// I2C Address
#define ADDRESS_EEPROM_I2C_ADDRESS 0x50
#define GENERAL_EEPROM_I2C_ADDRESS 0x51

#include "../baseTransverterConfig/baseTransverterConfig.h"
#include "../../panic/panic.h"

class Iceni : public BaseTransverterConfig{
    public:
        Iceni(Panicker *panicker);
}; 

#endif




