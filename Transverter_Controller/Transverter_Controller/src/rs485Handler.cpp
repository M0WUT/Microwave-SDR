#include "../include/rs485Handler.h"

Rs485Handler::Rs485Handler(int busAddress, void(*callback)(String)){
    this->busAddress = busAddress;
    this->callback = callback;
    pinMode(RS485_TX, OUTPUT);
    digitalWrite(RS485_TX, LOW);
}
void Rs485Handler::handle_messages(){
    if(RS485_SERIAL.available()){
        char x = RS485_SERIAL.read();
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