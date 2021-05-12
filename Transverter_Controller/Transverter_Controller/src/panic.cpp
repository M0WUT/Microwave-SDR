#include "../include/config.h"
#include "../include/panic.h"

void panic(String errorMessage){
    digitalWrite(ON_LED, LOW);
    while(1){
        digitalWrite(MESSAGE_LED, HIGH);
        Serial.println(errorMessage);
        delay(1000);
        digitalWrite(MESSAGE_LED, LOW);
        delay(1000);
    }
}