#ifndef TEMPERATURE_SENSOR_H
#define TEMPERATURE_SENSOR_H

#include <Arduino.h>

typedef struct{
    String name;
    float temperature;
} TemperatureReading;

class TemperatureSensor
{
    public:
        TemperatureSensor(const char *name, float warningTemp, float errorTemp) : _name {name}, _warningTemp {warningTemp}, _errorTemp {errorTemp}{}
        virtual TemperatureReading read_temperature();
        const char *name();
    protected:
        const char *_name;
        const float _warningTemp, _errorTemp;
};



#endif