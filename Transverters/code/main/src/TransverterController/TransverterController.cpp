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

    this->panicker = new Panicker(LED_STATUS, LED_ERROR, &DEBUG_SERIAL);

    //Setup I2C
    Wire.begin(I2C_MASTER, 0x00, I2C_PINS_18_19, I2C_PULLUP_EXT, 100000);
    Wire.setDefaultTimeout(10000); // 10ms

    // Setup EEPROM containing slot address for RS485 bus
    addressEeprom = new AddressEeprom(ADDRESS_EEPROM_I2C_ADDRESS, panicker);

    // Setup Handler for RS485 messages
    rs485Handler = new Rs485Handler(addressEeprom->get_address());

    this->transverter = new TRANSVERTER_CLASS(panicker);

}

void TransverterController::process_command(String x){
      // Curently support:
      // D = Discovery (static) info
      // S = Status (changing) info
    if(x == ""){
        return;
    }
    else {
        DynamicJsonDocument response(200);
        digitalWrite(LED_ERROR, HIGH);

        switch(x[0]){
            case 'D': 
                #ifdef DEBUG
                    DEBUG_SERIAL.println("Received discovery request");
                #endif
                response["name"] = NAME;
                response["message"] = "Oh hai";

                break;
            case 'S':
                #ifdef DEBUG
                  DEBUG_SERIAL.println("Received status request");
                #endif 

                // Add temperature sensors
                JsonObject tempsResponse = response.createNestedObject("temperatures");
                int numTempSensors = transverter->get_num_temp_sensors();
                TemperatureReading temps[numTempSensors];
                transverter->read_temperatures(temps);
                for(int i = 0; i < numTempSensors; i++){
                    tempsResponse[temps[i].name] = temps[i].temperature;
                }
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
                this->panicker->panic("Received unknown command: " + x + "(" + result + ")");
            #endif
            break;
        }
        delay(50);
        serializeJson(response, RS485_SERIAL); 
        #ifdef DEBUG
            DEBUG_SERIAL.print("Response: ");
            serializeJsonPretty(response, DEBUG_SERIAL);
            DEBUG_SERIAL.println("");
        #endif
        RS485_SERIAL.flush();
        digitalWrite(LED_ERROR, LOW);
    }
}

void TransverterController::run(){
    
    while(true){
        //process_command(rs485Handler->rx_messages());
        process_command("S");
        delay(1000);
    }
}
    
