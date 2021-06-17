#ifndef TEMPERATURE_SENSOR_H
#define TEMPERATURE_SENSOR_H

class TemperatureSensor
{
    public:
        virtual float read_temperature() = 0;
};

#endif