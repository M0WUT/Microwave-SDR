#include <ArduinoJson.h>
#include "include/config.h"
#include "include/addressEeprom.h"
#include "include/rs485Handler.h"
#include "include/panic.h"


void process_command(String x){
      // Curently support:
      // D = Discovery (static) info
      // S = Status (changing) info
      DynamicJsonDocument doc(200);
      digitalWrite(MESSAGE_LED, HIGH);

      switch(x[0]){
          case 'D': 
              #ifdef DEBUG
                  Serial.println("Received discovery request");
              #endif
              doc["name"] = "Alice" ;
              doc["message"] = "Oh hai";

              break;
          case 'S':
              #ifdef DEBUG
                  Serial.println("Received status request");
              #endif
              break;
          default:
              #ifdef DEBUG
                  panic("Received unknown command: ");
              #endif
              break;
        }
    delay(50);
    digitalWrite(RS485_TX, HIGH);
    serializeJson(doc, Serial1); 
    Serial1.flush();
    digitalWrite(RS485_TX, LOW);
    
    digitalWrite(MESSAGE_LED, LOW);
}

int main() {
    // initialize the digital pin as an output.
    Serial1.begin(115200);
    pinMode(MESSAGE_LED, OUTPUT);
    digitalWrite(MESSAGE_LED, LOW);

    #ifdef DEBUG  // Enable LED as this blocks waiting for serial connection
        digitalWrite(MESSAGE_LED, HIGH);
        Serial.begin(9600);
        while(!Serial);
        Serial.println("Starting program...");
        Serial.flush();
        digitalWrite(MESSAGE_LED, LOW);
    #endif

    //Setup I2C
    Wire.begin(I2C_MASTER, 0x00, I2C_PINS_18_19, I2C_PULLUP_EXT, 400000);
    Wire.setDefaultTimeout(10000); // 10ms

    // Setup EEPROM containing slot address for RS485 bus
    AddressEeprom addressEeprom(0x50);

    // Setup Handler for RS485 messages
    Rs485Handler rs485Handler(addressEeprom.get_address(), process_command);



    while(1){
        rs485Handler.handle_messages();
        
    }
}
