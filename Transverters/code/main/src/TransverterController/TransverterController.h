#ifndef TRANSVERTER_CONTROLLER_H
#define TRANSVERTER_CONTROLLER_H

#include <Arduino.h>
#include "../../config.h"
#include "../addressEeprom/addressEeprom.h"
#include "../rs485Handler/rs485Handler.h"
#include "../panic/panic.h"
#include <ArduinoJson.h>
#include "../transverter_configs/baseTransverterConfig/baseTransverterConfig.h"
#include "../temperatureSensor/temperatureSensor.h"

typedef enum {
    RX,
    TX,
    IDLE,
    WARMUP
} TransverterState;

class TransverterController
{
    public:
        TransverterController();
        void run();
        void process_command(String x);
        void set_state(TransverterState state);
        void set_controller(String controllerMac, String vfo);
    private:
        void setup();
        BaseTransverterConfig *_transverter;
        Panicker *_panicker;
        AddressEeprom *_addressEeprom;
        Rs485Handler *_rs485Handler;     
        TransverterState _state;
        String _controller;
        String _vfo;
        int _rs485Address;
        void rs485_tx(char commandChar, DynamicJsonDocument response);
        void send_discovery_info();
        void send_status_info();

};


#endif