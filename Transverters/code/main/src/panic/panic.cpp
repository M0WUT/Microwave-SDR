#include "panic.h"

Panicker::Panicker(int onLed, int messageLed, Stream *serial){
    this->onLed = onLed;
    this->messageLed = messageLed;
    this->serial = serial;
}

void Panicker::panic(String errorMessage){
    digitalWrite(onLed, LOW);
    while(1){
        digitalWrite(messageLed, HIGH);
        delay(250);
        digitalWrite(messageLed, LOW);
        delay(250);
        serial->println(errorMessage);
    }
}
