#include "panic.h"

Panicker::Panicker(int onLed, int messageLed, DEBUG_SERIAL_CLASS *serial){
    this->onLed = onLed;
    this->messageLed = messageLed;
    this->serial = serial;
}

void Panicker::panic(String errorMessage){
    digitalWrite(onLed, LOW);
    while(1){
        digitalWrite(messageLed, HIGH);
        serial->println(errorMessage);
        delay(1000);
        digitalWrite(messageLed, LOW);
        delay(1000);
    }
}
