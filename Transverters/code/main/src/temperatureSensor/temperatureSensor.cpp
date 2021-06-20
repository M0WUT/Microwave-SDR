#include "temperatureSensor.h"

TemperatureReading TemperatureSensor::read_temperature(){
    TemperatureReading x;
    x.name = "ERROR - virtual function not overridden",
    x.temperature = 0.0;
    return x;
}