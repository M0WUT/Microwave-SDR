#include "eepromHandler.h"

EEPROM::EEPROM(int deviceAddress, DEBUG_SERIAL_CLASS *serial, Panicker *panicker){
    this->deviceAddress = deviceAddress;
    this->serial = serial;
    this->panicker = panicker;
    this->check_device();
}


void EEPROM::check_device(){
    Wire.beginTransmission(this->deviceAddress);
    Wire.endTransmission();
    switch(Wire.status()){
        case I2C_WAITING:
            // This means something acknowledged
            break;
        default:
            char buffer [128];
            sprintf(
                buffer,
                "Couldn't find address EEPROM in address 0x%02X",
                this->deviceAddress
            );
            this->panicker->panic(buffer);
    }
}

void EEPROM::write(uint16_t address, uint8_t data){
    // Use more general function so I only write code once
    write(address, &data, 1);
}

void EEPROM::write(uint16_t startAddress, uint8_t *data, int length){
    Wire.beginTransmission(this->deviceAddress);
    uint8_t addr[2];
    addr[0] = (startAddress >> 8) & 0xFF;
    addr[1] = startAddress & 0xFF;
    Wire.send(addr, 2);
    Wire.send(data, length);
    Wire.endTransmission();
}

uint8_t EEPROM::read(uint16_t address){
    // Use more general function so I only write code once
    uint8_t x;
    read(&x, address, 1);
    return x;
}

void EEPROM::read(uint8_t *buffer, uint16_t startAddress, int length){

    // Setup read address
    Wire.beginTransmission(this->deviceAddress);
    uint8_t addr[2];
    addr[0] = (startAddress >> 8) & 0xFF;
    addr[1] = startAddress & 0xFF;
    Wire.send(addr, 2);
    Wire.endTransmission(false);

    // Read data
    Wire.requestFrom(this->deviceAddress, length);
    for(int i = 0; i < length; i++)
        buffer[i] = Wire.read();
    Wire.endTransmission();
}
