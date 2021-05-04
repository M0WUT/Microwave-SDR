#ifndef IIC_H
#define IIC_H

#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <stdint.h>
#include <cassert>
#include <iostream>
#include <iomanip>


const int I2C_SLAVE_FORCE = 0x0706;  // Magic number to change I2C slave address - not my code

class iic
{
public:
    iic(const char *filename);
    ~iic();
    void set_slave_address (uint8_t address);
    void write_single(uint16_t reg_address, uint8_t data);
    void write_block(uint16_t reg_address, uint8_t *data, uint8_t data_length);
    uint8_t get_slave_address();

private:
    int _fd;
    uint8_t _slaveAddress;
};

#endif // IIC_H
