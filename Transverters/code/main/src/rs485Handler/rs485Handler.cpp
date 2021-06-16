#include "rs485Handler.h"

Rs485Handler::Rs485Handler(HardwareSerial *serial, int txPin, int busAddress){
    this->serial = serial;
    this->busAddress = busAddress;
    this->serial->begin(115200, SERIAL_8N1_RXINV_TXINV);
    pinMode(txPin, OUTPUT);
    this->serial->transmitterEnable(txPin);
}

String Rs485Handler::rx_messages(){
    while(serial->available()){
        char x = serial->read();
        
        if(x == '\n'){
            if(command[0] == busAddress){
                String y = command.remove(0, 1);
                DEBUG_SERIAL.println(command);
                command = "";
                return y;
            }
            else{
                return "";
            }
            
        }

        else if((command != "") || (x != 0)){
            // Can't have address 0 as tristating the bus is read as 0
            command += x;
        }
    }
    return "";

}