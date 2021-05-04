#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <stdint.h>
#include "numbers.h"


static const int COMMAND = 1;
static const int DATA = 0;

#define OLED_BASE_ADDR 0b0111100
#define WIDTH 128
#define HEIGHT 32
const int oledAddrBit = 0; // SA0 pin can be used to give 2 possible addresses


////////////////////////////////////////////////////////
// Writes a block of data to the I2C device
// Arguments:
//		iic:		file descriptor for open I2C device 
//					OLED slave address must have been set
//					using ioctl
//		data:		pointer to data buffer
//		dataLength:	number of bytes to be sent
//		cmd:		0 - send data as control bytes
//					1 - send data as data bytes
// Returns:
//		0: 		Success
//		-1: 	Error writing to OLED
////////////////////////////////////////////////////////	
int iic_write(int iic, uint8_t* data, uint16_t dataLength, int cmd)
{
	// Before command, a control byte of all 0s needs to be sent
	uint8_t buffer[dataLength + 1]; 
	buffer[0] = (cmd ? 0x00 : 0x40); // 0x40 for data, 0x00 for command
	int i = 0;
	for(i = 0; i < dataLength; i++)
	{
		buffer[i + 1] = data[i];
	}

	// Write to device. Third argument is number of bytes
	int bytesWritten = write(iic, buffer, dataLength + 1);

	// Status now contains number of bytes successfully written
	if(bytesWritten == dataLength + 1)
		return 0;
	else
		printf("Error writing to OLED, wrote %d bytes out of %d\n", bytesWritten, dataLength + 1);
		return -1;
}


////////////////////////////////////////////////////////
// Writes array of command bytes to OLED
// Arguments:
//		iic:		file descriptor for open I2C device 
//					OLED slave address must have been set
//					using ioctl
//		commands:	pointer to buffer containing commands 
//		cmdLegnth:	number of bytes in buffer
// Returns:
//		0: 		Success
//		-1: 	Error writing to OLED
////////////////////////////////////////////////////////	
int write_command(int iic, uint8_t* cmd, uint16_t cmdLength)
{
	return iic_write(iic, cmd, cmdLength, COMMAND);
}


////////////////////////////////////////////////////////
// Writes array of data bytes to OLED
// Arguments:
//		iic:		file descriptor for open I2C device 
//					OLED slave address must have been set
//					using ioctl
//		commands:	pointer to buffer containing data 
//		cmdLegnth:	number of bytes in buffer
// Returns:
//		0: 		Success
//		-1: 	Error writing to OLED
////////////////////////////////////////////////////////	
int write_data(int iic, uint8_t* data, uint16_t dataLength)
{
	return iic_write(iic, data, dataLength, DATA);
}


////////////////////////////////////////////////////////
// Sets config registers of OLED that are wanted to be
// non-default
// Arguments:
//		iic:	file descriptor for open I2C device 
//				OLED slave address must have been set
//				using ioctl
// Returns:
//		0: 		Success
//		-1: 	Error writing to OLED
////////////////////////////////////////////////////////	

int init_display(int iic)
{
	uint8_t buffer[32];

	// This follows Figure 2 : Sofware Initialization
	// Flow Chart in SSD1306 datasheet

	buffer[0] = 0xA8; // Set MUX ratio to ...
	buffer[1] = HEIGHT - 1; // ... HEIGHT - 1

	buffer[2] = 0xD3; // Set Display Offset to ...
	buffer[3] = 0x00; // ... 0

	buffer[4] = 0x40; // Set Display Start line to 0

	buffer[5] = 0xA0; // Don't remap segments

	buffer[6] = 0xC0; // Don't remap columns

	// I'm not sure of the implications of this setting.
	// I took it from the Adafruit library and it breaks
	// if this is set to 0x12 (Default)
	buffer[7] = 0xDA; // Set COM pin remap to ...
	buffer[8] = 0x02; // .. sequential 

	buffer[9] = 0x81; // Set contrast to ...
	buffer[10] = 0x7F; // ... 0x7F (Default)

	buffer[11] = 0xA4; // Display shows RAM contents

	buffer[12] = 0xA6; // 1 in RAM = pixel on

	buffer[13] = 0xD5; // Set clock divider to ...
	buffer[14] = 0x80; // ... 0x80 (Default)

	buffer[15] = 0x8D; // Set charge pump to ...
	buffer[16] = 0x14; // ... enabled

	buffer[17] = 0xAF; // Enable display
	write_command(iic, buffer, 18);

	buffer[0] = 0x20; // Set memory addressing mode to ...
	buffer[1] = 0x01; // ... vertical

	buffer[2] = 0x21; // Set ...
	buffer[3] = 0x00; // ... column start address to 0 and ...
	buffer[4] = WIDTH - 1; // ... end address to WIDTH - 1

	buffer[5] = 0x22; // Set of ...
	buffer[6] = 0x00; // ... page start address to 0 and ...
	buffer[7] = (HEIGHT / 8) - 1; // ... end address

	write_command(iic, buffer, 8);

	return 0;
}

////////////////////////////////////////////////////////
// Populates OLED RAM with IP address shown in 16x8 font
// Arguments:
//		iic:	file descriptor for open I2C device 
//				OLED slave address must have been set
//				using ioctl
//		ipAddr:	char point to IP address as a string.
//				Values should be ASCII, '.' should be 
//				included
//		length: number of elements in ipAddr
// Returns:
//		0: 		Success
//		-1: 	Error writing to OLED
////////////////////////////////////////////////////////		

int fill_ram(int iic, uint8_t *ipAddr)
{
	int bytesHeight = HEIGHT / 8; // Height of Column in bytes
	int numberOfBytes = WIDTH * bytesHeight;
	
	uint8_t buffer[numberOfBytes]; // 128 columns * 4 pages (32 pixels)

	const char* ip = "192.168.1.93";
	int numberOfDigits = strlen(ip) - 3; // IP has 3 dots, don't count these
	int ipWidth = (numberOfDigits * 8) + (3 * 4); // 8 pixels per digit, 4 per dot
	int startAddr = (WIDTH - ipWidth) / 2; // Offset from start of line to start writing IP
	int endAddr = startAddr + ipWidth;
	
	printf("Start Address: %d, End Address: %d, IP Width, %d\n", startAddr, endAddr, ipWidth);
	
	int i = 0;
	int digitBeingWritten = 0; // Index of which char in IP string is being written
	int columnBeingWritten = 0; // Which column within the digit is being written

	// IP Address is written on top 2 lines, remainder is empty
	for(i = 0; i < WIDTH; i++)
	{
		if(i < startAddr || i >= endAddr)
		{
			// In dead space outside of where the IP is being written	
			buffer[bytesHeight * i] = 0x00;
			buffer[bytesHeight * i + 1] = 0x00;
		}
		else
		{
			// Writing the IP Address
			if(ip[digitBeingWritten] == '.')
			{
				// Writing a dot
				buffer[bytesHeight * i] = numbers [10] [columnBeingWritten];
				buffer[bytesHeight * i + 1] = numbers [10] [columnBeingWritten + 8];

				// Check if char is complete
				if(++columnBeingWritten == 4)
				{
					columnBeingWritten = 0;
					digitBeingWritten++;
				}
			}
			else
			{
				// Writing a number
				buffer[bytesHeight * i] = numbers [ip[digitBeingWritten] - '0'] [columnBeingWritten];
				buffer[bytesHeight * i + 1] = numbers [ip[digitBeingWritten] - '0'] [columnBeingWritten + 8];

				// Check if char is complete
				if(++columnBeingWritten == 8)
				{
					columnBeingWritten = 0;
					digitBeingWritten++;
				}

			}
		}

		// Pad remainder of column with zeroes
		int j = 2;
		for (j=2; j < bytesHeight; j++)
		{
			buffer[bytesHeight * i + j] = 0x00;
		}
	}

	write_data(iic, buffer, numberOfBytes);
}


int main()
{

	//Open I2C device driver
    int iic = 0;
        
	iic = open("/dev/i2c-0", O_RDWR);
	if (iic < 0)
	{
		printf("Error opening I2C character device\n");
		return -1;
	}

	int status = ioctl(iic, I2C_SLAVE_FORCE, (OLED_BASE_ADDR | oledAddrBit));
	if(status < 0)
	{
		printf("Unable to set the OLED address to %04\n", (OLED_BASE_ADDR | oledAddrBit));
		close(iic);
		
	} else {        
		if (init_display(iic) == 0)
		{
			printf("Successfully wrote to OLED\n");
		}
		else
		{
			printf("Writing to OLED failed\n");
		}

		fill_ram(iic, NULL);
		

		
		close(iic);
	}

	return 0;
}