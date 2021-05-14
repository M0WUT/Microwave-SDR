#include "rs485Handler.h"

Rs485Handler::Rs485Handler(HardwareSerial *serial, int txPin, int busAddress, void(*callback)(String)){
    this->serial = serial;
    this->busAddress = busAddress;
    this->callback = callback;
    this->serial->begin(115200, SERIAL_8N1_RXINV_TXINV);
    pinMode(txPin, OUTPUT);
    this->serial->transmitterEnable(txPin);
}
void Rs485Handler::handle_messages(){
    if(serial->available()){
        char x = serial->read();
        if(x == '\n'){
            if(command[0] == busAddress){
                callback(command.remove(0, 1));
            }
            command = "";
        }

        else if((command != "") || (x != 0)){
            // Can't have address 0 as tristating the bus is read as 0
            command += x;
        }
    }


    
}