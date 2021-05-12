#include <ArduinoJson.h>
#include "include/config.h"
#include "include/eepromHandler.h"
#include "include/panic.h"


void process_command(char x){
      // Curently support:
      // D = Discovery (static) info
      // S = Status (changing) info
      DynamicJsonDocument doc(200);

      switch(x){
          case 'D': 
              #ifdef DEBUG
                  Serial.println("Received discovery request");
              #endif
              doc["name"] = "Alice" ;
              doc["message"] = "Oh hai";
              serializeJson(doc, Serial1);
              break;
          case 'S':
              #ifdef DEBUG
                  Serial.println("Received status request");
              #endif
              break;
          default:
              #ifdef DEBUG
                  Serial.print("Received unknown command: ");
                  Serial.println(x);
              #endif
              break;
        }
}

uint16_t address = 0;  // TODO move this into a function

void setup() {
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

    EEPROM addressEEPROM = EEPROM(0x50);



    // Check if EEPROM has been initialised. This is indicated by ASCII "L", "I" and "D" in address 0-2
    if(
        addressEEPROM.read(0) != 'L' || \
        addressEEPROM.read(1) != 'I' || \
        addressEEPROM.read(2) != 'D'
    ){
        digitalWrite(MESSAGE_LED, HIGH);
        Serial.begin(9600);
        while(!Serial);
        Serial.println("Uninitialised EEPROM found. Please enter address and press Enter");
        Serial.setTimeout(2000);
        uint8_t buffer[4];
        while(Serial.readBytesUntil('\n', buffer, 3) == 0);

        // buffer now contains address in ASCII
        for(int i = 0; i < 3; i++){
            if(buffer[i] != 0){
                address *= 10;
                address += (buffer[i] - '0');
            }
        }

        buffer[0] = 'L';
        buffer[1] = 'I';
        buffer[2] = 'D';
        buffer[3] = address;
        addressEEPROM.write(0, buffer, 4);
        Serial.print("Setting address to ");
        Serial.println(address);

    }
    else{
        address = addressEEPROM.read(3);
        Serial.print("Address loaded from EEPROM: ");
        Serial.println(address);
    }
}

// the loop routine runs over and over again forever:
void loop() {
    
    static char command = '0';
    static int addr = -1;
    digitalWrite(MESSAGE_LED, LOW);
    while(1) { 
        if(Serial1.available()){

          char x = Serial1.read();
          if(x == '\n')
              break;
          else if((addr == -1) && (x != 0)){
              // Can't have address 0 as tristating the bus is read as 0
              addr = x;
          }
          else
              command = x;
        }
    }

    if(addr == address){
        digitalWrite(MESSAGE_LED, HIGH);
        process_command(command);
    }

    addr = -1;
    delay(10);
}
