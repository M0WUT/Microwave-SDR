#ifndef TRASNVERTER_CONTROLLER_H
#define TRANSVERTER_CONTROLLER_H

#include <Arduino.h>
#include "../../config.h"
#include "../addressEeprom/addressEeprom.h"
#include "../rs485Handler/rs485Handler.h"
#include "../panic/panic.h"
#include <ArduinoJson.h>

class TransverterController
{
    public:
        TransverterController();
        void run();
        void process_command(String x);
        Panicker *panicker;  // DEBUG - should be private
    private:
        void setup();
        
        AddressEeprom *addressEeprom;
        Rs485Handler *rs485Handler;     
};


#endif