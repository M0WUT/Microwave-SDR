#include "TransverterController.h"

TransverterController::TransverterController(){
    setup();
}

void TransverterController::setup(){

    // Digital IO
    pinMode(LED_RX, OUTPUT);
    pinMode(LED_TX, OUTPUT);
    pinMode(LED_STATUS, OUTPUT);
    pinMode(LED_ERROR, OUTPUT);
    pinMode(PIN_WP, INPUT);
    pinMode(RS485_TX_PIN, OUTPUT);

    digitalWrite(LED_RX, LOW);
    digitalWrite(LED_TX, LOW);
    digitalWrite(LED_STATUS, HIGH);
    digitalWrite(LED_ERROR, LOW);
    digitalWrite(RS485_TX_PIN, LOW);

    #ifdef DEBUG
        digitalWrite(LED_STATUS, LOW);
        digitalWrite(LED_ERROR, HIGH);
        DEBUG_SERIAL.begin(9600);
        while(!DEBUG_SERIAL);
        delay(100);
        DEBUG_SERIAL.println("Starting program...");
        digitalWrite(LED_STATUS, HIGH);
        digitalWrite(LED_ERROR, LOW);
    #endif

    _panicker = new Panicker(LED_STATUS, LED_ERROR, &DEBUG_SERIAL);

    //Setup I2C
    Wire.begin(I2C_MASTER, 0x00, I2C_PINS_18_19, I2C_PULLUP_EXT, 100000);
    Wire.setDefaultTimeout(10000); // 10ms

    // Setup EEPROM containing slot address for RS485 bus
    _addressEeprom = new AddressEeprom(ADDRESS_EEPROM_I2C_ADDRESS, _panicker);

    // Setup Handler for RS485 messages
    _rs485Handler = new Rs485Handler(_addressEeprom->get_address());

    // Assume we're warming up and no SDR is controlling this transverter
    set_state(WARMUP);
    set_controller("");

    _transverter = new TRANSVERTER_CLASS(_panicker);

    process_command("D");  // Broadcast discovery information

}

void TransverterController::process_command(String x){
      // Curently support:
      // D = Discovery (static) info
      // S = Status (changing) info
    if(x == ""){
        return;
    }
    else {
        DynamicJsonDocument response(1024);
        digitalWrite(LED_ERROR, HIGH);

        switch(x[0]){
            case 'D': 
                #ifdef DEBUG
                    DEBUG_SERIAL.println("Received discovery request");
                #endif
                response["type"] = "transverter";
                response["name"] = NAME;
                response["loFreq"] = int(LO_FREQ);
                response["loAdd"] = RF_EQUALS_IF_PLUS_LO;
                response["minFreq"] = int(MIN_FREQ);
                response["maxFreq"] = int(MAX_FREQ);
                response["minPower"] = int(MIN_TX_POWER);
                response["maxPower"] = int(MAX_TX_POWER);
                response["supportsRx"] = SUPPORTS_RX;
                response["supportsTx"] = SUPPORTS_TX;
                break;
            case 'S':
                #ifdef DEBUG
                  DEBUG_SERIAL.println("Received status request");
                #endif 

                // Add warnings
                // @TODO
                response.createNestedObject("warnings");

                // Add errors
                // @TODO
                response.createNestedObject("errors");

                // Add temperature sensors
                JsonObject tempsResponse = response.createNestedObject("temperatures");
                int numTempSensors = _transverter->get_num_temp_sensors();
                TemperatureReading temps[numTempSensors];
                _transverter->read_temperatures(temps);
                for(int i = 0; i < numTempSensors; i++){
                    tempsResponse[temps[i].name] = temps[i].temperature;
                }

                // Add state
                switch (_state){
                    case RX: response["state"] = "rx"; break;
                    case TX: response["state"] = "tx"; break;
                    case IDLE: response["state"] = "idle"; break;
                    case WARMUP: response["state"] = "warmup"; break;
                    default: _panicker->panic("Transverter in an unknown state");
                };

                // Add RF power readings
                // @TODO
                response.createNestedObject("rfPowerReadings");

                // Add DC power readings
                // @TODO
                response.createNestedObject("dcPowerReadings");

                // Add MAC address of SDR controller
                response["controller"] = _controllerMac;

                break;

            default:
                #ifdef DEBUG
                String result = "";
                    for(int i = 0; x[i] != '\0'; i++){
                        result += "\\0x";
                        result += String(int(x[i]), HEX);
                        result += ",";
                    }
                    result[result.length() - 1] = '\0';
                _panicker->panic("Received unknown command: " + x + "(" + result + ")");
            #endif
            break;
        }
        delay(50);
        RS485_SERIAL.print('\0');  // Master address
        RS485_SERIAL.print(x[0]);  // Response must have same command type as request
        serializeJson(response, RS485_SERIAL); 
        RS485_SERIAL.print('\n');
        #ifdef DEBUG
            DEBUG_SERIAL.print("Response: ");
            serializeJsonPretty(response, DEBUG_SERIAL);
            DEBUG_SERIAL.println("");
        #endif
        RS485_SERIAL.flush();
        digitalWrite(LED_ERROR, LOW);
    }
}

void TransverterController::set_state(TransverterState state){
    _state = state;
}

void TransverterController::set_controller(String controllerMac){
    _controllerMac = controllerMac;
}

void TransverterController::run(){
    
    while(1){
        process_command(_rs485Handler->rx_messages());
    }
}
    
