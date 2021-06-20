#include "rs485Handler.h"

Rs485Handler::Rs485Handler(int busAddress){
    this->busAddress = busAddress;
    RS485_SERIAL.begin(115200, SERIAL_8N1_RXINV_TXINV);
    pinMode(RS485_TX_PIN, OUTPUT);
    RS485_SERIAL.transmitterEnable(RS485_TX_PIN);
}

String Rs485Handler::rx_messages(){
    while(RS485_SERIAL.available()){
        char x = RS485_SERIAL.read();
        
        if(x == '\n'){
            if(command[0] == busAddress){
                return command.remove(0, 1);  // Strip address character out
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