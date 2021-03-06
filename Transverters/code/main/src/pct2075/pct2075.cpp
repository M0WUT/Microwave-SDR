#include "pct2075.h"

#define REG_TEMP 0
#define REG_CONF 1
#define REG_HYST 2
#define REG_OS 3
#define REG_IDLE 4

PCT2075::PCT2075(const char *name, int deviceAddress, float warningTemp, float errorTemp, Panicker *panicker) 
    : TemperatureSensor(name, warningTemp, errorTemp), 
    I2CDevice(
        (String(name) + String(" Temperature Sensor")).c_str(),
        deviceAddress,
        1,
        panicker
    ){
    write(REG_CONF, 0);
}


TemperatureReading PCT2075::read_temperature(){
    
    uint8_t result[2];
    read(result, REG_TEMP, 2);
    int16_t x = result[0]; 
    x = x << 8;
    x |= result[1];
    x = x >> 7;
    float y = x;
    y *= 0.5;
    TemperatureReading returnValue;
    returnValue.name = _name;
    returnValue.temperature = y;
    return returnValue;
}