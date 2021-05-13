#include "../include/addressEeprom.h"

#define ADDRESS_RS485_ADDRESS 3

AddressEeprom::AddressEeprom(int deviceAddress) : EEPROM(deviceAddress){
    if(!initialised()){
        first_time_setup();
    }
}

bool AddressEeprom::initialised(){
    if( read(0) != 'L' || \
        read(1) != 'I' || \
        read(2) != 'D'
    ){
        return 0;
    } else{
        return 1;
    }
}

int AddressEeprom::get_address(){
    if(address == -1)
        address = read(ADDRESS_RS485_ADDRESS);
    return address;
}

void AddressEeprom::first_time_setup(){
    address = 0;
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
    write(0, buffer, 4);
    Serial.print("Setting address to ");
    Serial.println(address);
    digitalWrite(MESSAGE_LED, LOW);
}