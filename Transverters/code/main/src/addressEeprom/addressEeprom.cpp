#include "addressEeprom.h"

#define ADDRESS_RS485_ADDRESS 3

AddressEeprom::AddressEeprom(int deviceAddress, Panicker *panicker) : I2CDevice("Address EEPROM", deviceAddress, 2, panicker){
    if(!initialised() || !digitalRead(PIN_WP)){
        first_time_setup();
    } else{
        #ifdef DEBUG
            DEBUG_SERIAL.print("RS485 address loaded as: ");
            DEBUG_SERIAL.println(get_address());
        #endif
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
    digitalWrite(LED_STATUS, LOW);
    digitalWrite(LED_ERROR, HIGH);
    #ifndef DEBUG
        DEBUG_SERIAL.begin(9600);
        while(!DEBUG_SERIAL);
    #endif
    DEBUG_SERIAL.println("Uninitialised EEPROM found. Please enter address and press Enter");
    while(1){
        DEBUG_SERIAL.setTimeout(2000);
        address = 0;
        // Wait until incoming data
        while(!DEBUG_SERIAL.available());
        while(DEBUG_SERIAL.available()){
            char x = DEBUG_SERIAL.read();
            if(x == '\n'){
                break;
            } else if (('0' <= x) && (x <= '9')){
                address *= 10;
                address += x - '0';
            } else{
                // Wipe progress
                address = 0;
                DEBUG_SERIAL.println("Invalid character present");
                // Clear input buffer
                while(DEBUG_SERIAL.available()) DEBUG_SERIAL.read();
            }
        }

        uint8_t buffer[3];
        buffer[0] = 'L';
        buffer[1] = 'I';
        buffer[2] = 'D';
        write(0, buffer, sizeof(buffer));
        write(ADDRESS_RS485_ADDRESS, address);

        if(initialised() && read(ADDRESS_RS485_ADDRESS) == address){
            DEBUG_SERIAL.print("Successfully set address to ");
            DEBUG_SERIAL.println(address);
            digitalWrite(LED_STATUS, HIGH);
            digitalWrite(LED_ERROR, LOW);
            delay(1000);
            return;
        } else {
            DEBUG_SERIAL.print("Failed to set address to ");
            DEBUG_SERIAL.print(address);
            DEBUG_SERIAL.print(". Readback address: ");
            DEBUG_SERIAL.println(read(ADDRESS_RS485_ADDRESS));           
            DEBUG_SERIAL.println("Please enter new address and press Enter");
        }
    }
}