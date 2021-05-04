#include "iic.h"

using namespace std;

iic::iic(const char *filename)
{
    this->_fd = open(filename, O_WRONLY);
    assert (_fd != -1);
}

iic::~iic()
{
    close(_fd);
}

void iic::set_slave_address(uint8_t address)
{
     ioctl(_fd, I2C_SLAVE_FORCE, address);
     this->_slaveAddress = address;
}

void iic::write_single(uint16_t reg_address, uint8_t data)
{
    uint8_t x = data;
    write_block(reg_address, &x, 1);
}

void iic::write_block(uint16_t reg_address, uint8_t *data, uint8_t data_length)
{
    uint8_t x[data_length + 2];
    int i;
    x[0] = (reg_address >> 8) & 0xFF;
    x[1] = reg_address & 0xFF;
    for(i = 0; i < data_length; i++){
        cout << "Writing data 0x" << hex << setfill('0') << setw(2) << unsigned(data[i]) << " to register 0x" << hex << reg_address + i << endl;
        x[i+2] = data[i];
    }

    int bytes_written = write(_fd, x, data_length + 2);
    assert(bytes_written == data_length + 2);
}

uint8_t iic::get_slave_address()
{
    return _slaveAddress;
}
