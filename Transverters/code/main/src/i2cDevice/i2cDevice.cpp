#include "i2cDevice.h"

I2CDevice::I2CDevice(
        const char *deviceName, int deviceAddress,
        int registerAddressSize, Stream *serial,
        Panicker *panicker
): deviceName {deviceName}{
    this->deviceAddress = deviceAddress;
    this->registerAddressSize = registerAddressSize;
    this->serial = serial;
    this->panicker = panicker;
    this->check_device();
}


void I2CDevice::check_device(){
    Wire.beginTransmission(this->deviceAddress);
    Wire.endTransmission();
    char buffer [128];
    switch(Wire.status()){
        case I2C_WAITING:
            // This means something acknowledged
            #ifdef DEBUG
                sprintf(
                    buffer,
                    "Found %s in I2C address 0x%02X",
                    this->deviceName,
                    this->deviceAddress
                );
                DEBUG_SERIAL.println(buffer);
            #endif
            break;
        default:
            sprintf(
                buffer,
                "Couldn't find I2C Device in address 0x%02X",
                this->deviceAddress
            );
            this->panicker->panic(buffer);
    }
}


void I2CDevice::write(uint16_t address, uint8_t data){
    // Use more general function so I only write code once
    write(address, &data, 1);
}

void I2CDevice::write(uint16_t startAddress, uint8_t *data, int length){
    Wire.beginTransmission(this->deviceAddress);
    if(registerAddressSize == 2){
        uint8_t addr[2];
        addr[0] = (startAddress >> 8) & 0xFF;
        addr[1] = startAddress & 0xFF;
        Wire.send(addr, 2);
    }
    else{
        Wire.send(startAddress & 0xFF);
    }
    Wire.send(data, length);
    Wire.endTransmission();
}

uint8_t I2CDevice::read(uint16_t address){
    // Use more general function so I only write code once
    uint8_t x;
    read(&x, address, 1);
    return x;
}

void I2CDevice::read(uint8_t *buffer, uint16_t startAddress, int length){

    // Setup read address
    Wire.beginTransmission(this->deviceAddress);
    if(registerAddressSize == 2){
        uint8_t addr[2];
        addr[0] = (startAddress >> 8) & 0xFF;
        addr[1] = startAddress & 0xFF;
        Wire.send(addr, 2);
    }
    else{
        Wire.send(startAddress & 0xFF);
    }
    Wire.endTransmission(false);

    // Read data
    Wire.requestFrom(this->deviceAddress, length);
    for(int i = 0; i < length; i++)
        buffer[i] = Wire.read();
}
