#ifndef EEPROM_H
#define EEPROM_H

#include "../panic/panic.h"
#include <i2c_t3.h>
#include "../../config.h"

class I2CDevice
{
    public:
        I2CDevice(const char *deviceName, int deviceAddress, int registerAddressSize, Panicker *panicker);
        void write(uint16_t address, uint8_t data);
        void write(uint16_t startAddress, uint8_t *data, int length);
        uint8_t read(uint16_t address);
        void read(uint8_t *buffer, uint16_t startAddress, int length);
    protected:
        void check_device();
        void send_address(uint16_t address);
        Panicker *panicker;
    private:
        int deviceAddress;
        const char *deviceName;
        int registerAddressSize;
};


#endif