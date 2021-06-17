#ifndef PCT2075_H
#define PCT2075_H

#include "../temperatureSensor/temperatureSensor.h"
#include "../i2cDevice/i2cDevice.h"

class PCT2075 : public TemperatureSensor, public I2CDevice{
    public:
        PCT2075(int deviceAddress, Panicker *panicker);
        float read_temperature();
};

#endif