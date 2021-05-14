#ifndef ADDRESSEEPROM_H
#define ADDRESSEEPROM_H

#include "eepromHandler.h"
#include <globalConfig.h>
#include <panic.h>

class AddressEeprom: public EEPROM{
    public:
        AddressEeprom(int deviceAddress, DEBUG_SERIAL_CLASS *debugSerial, int messageLED, Panicker *panicker);
        bool initialised();
        int get_address();
        void first_time_setup();
    private:
        int address = -1;
        int messageLED;
        Panicker *panicker;
};
#endif