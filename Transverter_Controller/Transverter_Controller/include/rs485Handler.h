#ifndef RS485_H
#define RS485_H

#include "config.h"
#include <Arduino.h>

class Rs485Handler{
    public:
        Rs485Handler(int busAddress, void(*callback)(String));
        void handle_messages();
    private:
        int busAddress;
        void(*callback)(String);
        String command = "";

};


#endif