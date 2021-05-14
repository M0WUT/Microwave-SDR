#include <ArduinoJson.h>
#include "../config.h"
#include <addressEeprom.h>
#include <rs485Handler.h>
#include <panic.h>


void process_command(String x){
      // Curently support:
      // D = Discovery (static) info
      // S = Status (changing) info
      DynamicJsonDocument doc(200);
      digitalWrite(MESSAGE_LED_PIN, HIGH);

      switch(x[0]){
          case 'D': 
              #ifdef DEBUG
                  DEBUG_SERIAL.println("Received discovery request");
              #endif
              doc["name"] = "HF Passthrough" ;
              doc["message"] = "Oh hai";

              break;
          case 'S':
              #ifdef DEBUG
                  DEBUG_SERIAL.println("Received status request");
              #endif
              break;
          default:
              #ifdef DEBUG
                  panic("Received unknown command: ");
              #endif
              break;
        }
    delay(50);
    serializeJson(doc, RS485_SERIAL); 
    RS485_SERIAL.flush();
    
    digitalWrite(MESSAGE_LED_PIN, LOW);
}

int main(){
    // initialize the digital pin as an output.
    pinMode(MESSAGE_LED_PIN, OUTPUT);
    digitalWrite(MESSAGE_LED_PIN, LOW);

    #ifdef DEBUG  // Enable LED as this blocks waiting for serial connection
        digitalWrite(MESSAGE_LED, HIGH);
        DEBUG_SERIAL.begin(9600);
        while(!DEBUG_SERIAL);
        DEBUG_SERIAL.println("Starting program...");
        DEBUG_SERIAL.flush();
        digitalWrite(MESSAGE_LED, LOW);
    #endif

    // Setup class to handler errors
    Panicker panicker(ON_LED_PIN, MESSAGE_LED_PIN, &DEBUG_SERIAL);

    //Setup I2C
    Wire.begin(I2C_MASTER, 0x00, I2C_PINS_18_19, I2C_PULLUP_EXT, 400000);
    Wire.setDefaultTimeout(10000); // 10ms

    // Setup EEPROM containing slot address for RS485 bus
    AddressEeprom addressEeprom(0x50, &DEBUG_SERIAL, MESSAGE_LED_PIN, &panicker);

    // Setup Handler for RS485 messages
    Rs485Handler rs485Handler(&RS485_SERIAL, RS485_TX_PIN, addressEeprom.get_address(), process_command);



    while(1){
        rs485Handler.handle_messages();
        
    }
    return 0;
}
