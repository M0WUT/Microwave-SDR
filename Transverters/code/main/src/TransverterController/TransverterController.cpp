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
    _rs485Address = _addressEeprom->get_address();
    _rs485Handler = new Rs485Handler(_rs485Address);

    // Assume we're warming up and no SDR is controlling this transverter
    set_state(WARMUP);
    set_channel('\0');

    _transverter = new TRANSVERTER_CLASS(_panicker);
}

void TransverterController::process_command(String x){
      // Curently support:
      // D = Discovery (static) info
      // S = Status (changing) info
    if(x == ""){
        return;
    }
    else {
        char commandChar = x[0];
        DynamicJsonDocument msg(512);
        deserializeJson(msg, x.substring(1));
        switch(commandChar){
            case 'D': {
                #ifdef DEBUG
                    DEBUG_SERIAL.println("Received discovery request");
                #endif
                send_discovery_info();         
                break;
            }
            case 'S': {
                #ifdef DEBUG
                    DEBUG_SERIAL.println("Received status request");
                #endif 
                send_status_info();
                break;
            }

            case 'C': {
                const char *channel = msg["channel"];             
                set_channel(channel);
                break;
            }

            case 'R': {
                // Software reset, taken from https://forum.pjrc.com/threads/29171-Looking-for-code-to-do-a-software-restart-with-the-Teensy-LC
                SCB_AIRCR = 0x05FA0004;
                break;
            }


            default: {
                String result = "";
                    for(int i = 0; x[i] != '\0'; i++){
                        result += "\\0x";
                        result += String(int(x[i]), HEX);
                        result += ",";
                    }
                    result[result.length() - 1] = '\0';
                _panicker->panic("Received unknown command: " + x + "(" + result + ")");
                break;
            }
        }
    }
}

void TransverterController::rs485_tx(char commandChar, DynamicJsonDocument response){
    digitalWrite(LED_ERROR, HIGH);
    delay(50);
    RS485_SERIAL.print('\0');  // Master address
    RS485_SERIAL.print(commandChar);  // Response must have same command type as request
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

void TransverterController::send_discovery_info(){
    DynamicJsonDocument response(512);
    response["address"] = _rs485Address;
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
    response["supportsDuplex"] = SUPPORTS_DUPLEX;
    rs485_tx('D', response);
}

void TransverterController::send_status_info(){
    DynamicJsonDocument response(512);
    response["address"] = _rs485Address;
    response["name"] = NAME;
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
    response["channel"] = (_channel != '\0') ? String(_channel) : "";

    rs485_tx('S', response);
}

void TransverterController::set_state(TransverterState state){
    _state = state;
}

void TransverterController::set_channel(const char *channel){
    DynamicJsonDocument response(64);
    if((channel[0] != '\0') && (_state != IDLE)){
        // Attempting to take control and something's already in control
        response["status"] = "failed";
    } else {
         #ifdef DEBUG
            if(channel[0] != '\0'){
                DEBUG_SERIAL.print("Received controller update to channel ");
                DEBUG_SERIAL.println(channel);
            } else{
                DEBUG_SERIAL.print("Released from channel ");
                DEBUG_SERIAL.println(_channel);
            }
        #endif 
        _channel = channel[0];
        digitalWrite(LED_RX, (_channel != '\0'));
        response["status"] = "success";
       
    }
    rs485_tx('C', response);
}

void TransverterController::run(){
    set_state(IDLE);
    while(1){
        process_command(_rs485Handler->rx_messages());
    }
}
