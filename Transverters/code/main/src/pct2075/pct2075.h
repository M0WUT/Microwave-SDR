#ifndef PCT2075_H
#define PCT2075_H

#include "../temperatureSensor/temperatureSensor.h"
#include "../i2cDevice/i2cDevice.h"
#include "../panic/panic.h"

class PCT2075 : public TemperatureSensor, I2CDevice {
    public:
        PCT2075(const char *name, int deviceAddress, float warningTemp, float errorTemp, Panicker *panicker);
        virtual TemperatureReading read_temperature() override;
};

#endif