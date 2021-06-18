#ifndef BASE_TRANSVERTER_H
#define BASE_TRANSVERTER_H

#include "../../temperatureSensor/temperatureSensor.h"
#include "../../panic/panic.h"


class BaseTransverterConfig{
    public:
        BaseTransverterConfig(Panicker *panicker);
        int read_temperature(float *outBuffer);
    protected:
        TemperatureSensor *tempSensors;
        void set_temp_sensors(TemperatureSensor *x, int numTempSensors);
        int numTempSensors;
        Panicker *panicker;
    
};


#endif