#ifndef TEMPERATURE_SENSOR_H
#define TEMPERATURE_SENSOR_H

class TemperatureSensor
{
    public:
        TemperatureSensor(const char *name) : name {name}{}
        virtual float read_temperature() = 0;
        const char *name;
};

#endif