#ifndef RS485_H
#define RS485_H

#include <Arduino.h>
#include <globalConfig.h>

class Rs485Handler{
    public:
        Rs485Handler(HardwareSerial *serial, int txPin, int busAddress, void(*callback)(String));
        void handle_messages();
    private:
        int busAddress;
        void(*callback)(String);
        String command = "";
        HardwareSerial* serial;

};


#endif