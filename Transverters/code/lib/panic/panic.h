#ifndef PANICKER_H
#define PANICKER_H

#include <Arduino.h>
#include <globalConfig.h>

class Panicker{
    public:
        Panicker(int onLed, int messageLed, DEBUG_SERIAL_CLASS *serial);
        void panic(String errorMessage);
    private:
        int onLed;
        int messageLed;
        DEBUG_SERIAL_CLASS *serial;
};

#endif