#ifndef TRANSVERTER_CONTROLLER_H
#define TRANSVERTER_CONTROLLER_H

#include <Arduino.h>
#include "../../config.h"
#include "../addressEeprom/addressEeprom.h"
#include "../rs485Handler/rs485Handler.h"
#include "../panic/panic.h"
#include <ArduinoJson.h>
#include "../transverter_configs/baseTransverterConfig/baseTransverterConfig.h"

class TransverterController
{
    public:
        TransverterController();
        void run();
        void process_command(String x);
    private:
        void setup();
        BaseTransverterConfig *transverter;
        Panicker *panicker;
        AddressEeprom *addressEeprom;
        Rs485Handler *rs485Handler;     
};


#endif