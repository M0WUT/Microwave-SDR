#include <ArduinoJson.h>


#define LED 13
#define ADDRESS 7
#define DEBUG


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

void setup() {
    // initialize the digital pin as an output.
    Serial1.begin(9600);
    pinMode(LED, OUTPUT);
    digitalWrite(LED, LOW);

    #ifdef DEBUG
        Serial.begin(9600);
        while(!Serial); //wait for serial monitor
    #endif
}

// the loop routine runs over and over again forever:
void loop() {
    
    static char command = '0';
    static int address = -1;
    digitalWrite(LED, LOW);
    while(1) { 
        while(!Serial1.available());

        char x = Serial1.read();
        
        if(x == '\n')
            break;
        else if(address == -1)
            address = x;
        else
            command = x;
    }

    if(address == ADDRESS){
        digitalWrite(LED, HIGH);
        process_command(command);
        #ifdef DEBUG
          Serial.println(command);
        #endif
    }

    address = -1;
    delay(10);
}
