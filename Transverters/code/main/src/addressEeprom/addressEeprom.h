#ifndef ADDRESSEEPROM_H
#define ADDRESSEEPROM_H

#include "../i2cDevice/i2cDevice.h"
#include "../../config.h"
#include "../panic/panic.h"

class AddressEeprom: public I2CDevice{
    public:
        AddressEeprom(int deviceAddress, Stream *debugSerial, int messageLED, Panicker *panicker);
        bool initialised();
        int get_address();
        void first_time_setup();
    private:
        int address = -1;
        int messageLED;
        Panicker *panicker;
};
#endif