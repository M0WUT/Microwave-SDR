#ifndef RS485_H
#define RS485_H

#include <Arduino.h>
#include "../../config.h"

class Rs485Handler{
    public:
        Rs485Handler(HardwareSerial *serial, int txPin, int busAddress);
        String rx_messages();
    private:
        int busAddress;
        String command = "";
        HardwareSerial* serial;

};


#endif