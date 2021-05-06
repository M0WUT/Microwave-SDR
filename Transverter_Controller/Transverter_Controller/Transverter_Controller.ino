#include <ArduinoJson.h>


#define LED 13
#define ADDRESS 3
#define DEBUG


void process_command(String x){
    if(x[0] != ADDRESS)
        return; // First byte is address and it's not for us
    else {
        // Curently support:
        // D = Discovery (static) info
        // S = Status (changing) info
        DynamicJsonDocument doc(200);

        switch(x[1]){
            case 'D': 
                #ifdef DEBUG
                    Serial.println("Received discovery request");
                #endif
                doc["name"] = "Bob" ;
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
                    Serial.println("Received unknown command");
                #endif
                break;
        }
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
    
    static String command = "";
    while(1) {
        digitalWrite(LED, LOW);
        while(!Serial1.available());
        digitalWrite(LED, HIGH);
        char x = Serial1.read();
        if(x == '\n')
            break;
        else
            command += x;
    }
    #ifdef DEBUG
        if(command[0] == ADDRESS){
            Serial.println(command);
        }
    #endif

    process_command(command);

    command = "";
}
