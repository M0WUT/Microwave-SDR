#ifndef PANICKER_H
#define PANICKER_H

#include <Arduino.h>

class Panicker{
    public:
        Panicker(int onLed, int messageLed, Stream *serial);
        void panic(String errorMessage);
    private:
        int onLed;
        int messageLed;
        Stream *serial;
};

#endif