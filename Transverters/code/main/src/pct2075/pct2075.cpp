#include "pct2075.h"

#define REG_TEMP 0
#define REG_CONF 1
#define REG_HYST 2
#define REG_OS 3
#define REG_IDLE 4

PCT2075::PCT2075(int deviceAddress, Panicker *panicker) 
    : I2CDevice("PCT2075", deviceAddress, 1, &DEBUG_SERIAL, panicker)
{
    write(REG_CONF, 0);
    while(1){
        read_temperature();
        delay(500);
    }
}


float PCT2075::read_temperature(){
    uint8_t result[2];
    read(result, REG_TEMP, 2);
    int16_t x = result[0]; 
    x = x << 8;
    x |= result[1];
    x = x >> 5;
    float y = x;
    y *= 0.125;
    DEBUG_SERIAL.println(y);

    return 0.0;
}