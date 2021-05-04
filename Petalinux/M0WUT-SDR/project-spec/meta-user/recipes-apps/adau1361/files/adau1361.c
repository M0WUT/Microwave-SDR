/*  adau1361.c 
*
*   This program is free software; you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation; either version 3 of the License, or
*   (at your option) any later version.

*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License along
*   with this program. If not, see <http://www.gnu.org/licenses/>.

*/
#include "adau1361.h"


static int iic_write_single(int iic, uint16_t reg_address, uint8_t data){
    //printf("Writing data %#04x to address %#06x\n", data, reg_address);
    uint8_t x = data;
    return(iic_write_block(iic, reg_address, &x, 1));
}
static int iic_write_block(int iic, uint16_t reg_address, uint8_t *data, uint8_t data_length){
    uint8_t x[data_length + 2];
    int i;
    x[0] = (reg_address >> 8) & 0xFF;
    x[1] = reg_address & 0xFF;
    for(i = 0; i < data_length; i++){
        x[i+2] = data[i];
		printf("Writing data %#04x to register %#06x\n", data[i], reg_address + i);
    }

    int bytes_written = write(iic, x, data_length + 2);
    if(bytes_written == data_length + 2)
		return 0;
	else
		printf("Error writing to ADAU1361, wrote %d bytes out of %d to address %#06x\n", bytes_written, data_length, reg_address);
		return -1;
}

// Load default settings
static void adau1361_load_defaults(struct adau1361_local *dev_p){

    // I2C Device address
    dev_p->slave_address = 0x38;

	// PLL
	dev_p->pll.pll_mode = PLL_DISABLED;
	dev_p->pll.pll_integer = 2;
	dev_p->pll.pll_numerator = 0;
	dev_p->pll.pll_denominator = 1;
	dev_p->pll.pll_input_divider = 1;

	dev_p->pll.core_clock_ratio = FSx256;
	

	// Inputs
	//dev_p->mic_detect_enabled = 0;
	dev_p->operational_mode = NORMAL;
	dev_p->left_record_mixer.input_mode = IN_N;
	//dev_p->left_record_mixer.gain = 0;
	dev_p->right_record_mixer.input_mode = INPUT_DISABLED;

	// Misc
	dev_p->bclk_pol = FALLING_EDGE;
	dev_p->lrclk_pol = RISING_EDGE;

	//Outputs
	dev_p->left_playback_mixer.output_mode = LEFT_DAC;
	//dev_p->left_playback_mixer.gain = 0;
	dev_p->right_playback_mixer.output_mode = RIGHT_DAC;
	//dev_p->right_playback_mixer.gain = 0;

	dev_p->headphones.enabled = 1;
	dev_p->headphones.muted = 0;
	dev_p->headphones.left_volume = 63;
	dev_p->headphones.right_volume = 63;
	dev_p->line_out.muted = 1;
}

// Writes all settings in adau1361_local to the device
static int adau1361_update_full(struct adau1361_local *dev_p){

	uint8_t x[6];  // Generic data array
	uint8_t data;  // Generic register for data to send

	////////////////
	// Update PLL //
	////////////////
	
	// Disable core clock
	iic_write_single(dev_p->iic, ADAU1361_REG_CLOCK_CONTROL, 0);
	
	// Update PLL - must be written to as block of 6 bytes
	

	// Throw error if pll_mode is not PLL_DISABLED
	// I haven't fully implemented the other modes
	// TODO: Add these features
	
	if(dev_p->pll.pll_mode != PLL_DISABLED){
		printf("ADAU1361: Only PLL_DISABLED implemented currently\n");
		return -1;
	}

	x[0] = (dev_p->pll.pll_denominator >> 8) & 0xFF;
	x[1] = (dev_p->pll.pll_denominator) & 0xFF;
	x[2] = (dev_p->pll.pll_numerator >> 8) & 0xFF;
	x[3] = (dev_p->pll.pll_numerator) & 0xFF;
	x[4] = 	((dev_p->pll.pll_integer << 3) & 0x78) |
			(((dev_p->pll.pll_input_divider - 1) << 1) & 0x6) | 
			(dev_p->pll.pll_mode == PLL_FRACTIONAL ? 1 : 0);
	x[5] = (dev_p->pll.pll_mode != PLL_DISABLED ? 1 : 0);

	iic_write_block(dev_p->iic, ADAU1361_REG_PLL_CONTROL, x, 6);

	// TODO: Check PLL Lock bit - this is what's preventing PLL being used
	
	// Update Clock Control register
	data = 0;

	// Enable the PLL if needed
	if  (dev_p->pll.pll_mode != PLL_DISABLED) {
	 	data |= (1 << 3);
	}

	// Set Core Clock Divider ratio
	switch(dev_p->pll.core_clock_ratio) {
		case FSx256:
			data |= 0b00 << 1;
			break;
		case FSx512:
			data |= 0b01 << 1;
			break;
		case FSx768:
			data |= 0b10 << 1;
			break;
		case FSx1024:
			data |= 0x11 << 1;
			break;
	}

	// Enable the core clock
	data |= 0x01;	
	
	iic_write_single(dev_p->iic, ADAU1361_REG_CLOCK_CONTROL, data);
	// Disable Jack detect - errata says this doesn't work properly
	iic_write_single(dev_p->iic, ADAU1361_REG_JACK_DETECT, 0x00);

	// Record Power Management
	switch(dev_p->operational_mode) {
		case NORMAL: 
			data = 0;
			break;
		case EXTREME_POWER_SAVING:
			data = 0b01110;
			break;
		case POWER_SAVING:
			data = 0b11110;
			break;
		case ENHANCED_PERFORMANCE:
			data = 0b101000;
			break;
	}
	iic_write_single(dev_p->iic, ADAU1361_REG_REC_PWR_MGMT, data);

	// Record Mixer Left Control Registers
	// TODO implement gain control
	switch(dev_p->left_record_mixer.input_mode) {
		case DIGITAL_MICROPHONE:  // Deliberate fallthrough
		case INPUT_DISABLED:
			x[0] = 0;  // Mute LINP, LINN and disable mixer
			x[1] = 0;  // Mute DIFF and AUX input
			break;
		case IN_P:
			x[0] = 0b01010001;  // 0dB gain for LINP, mute LINN
			x[1] = 0;  // Mute DIFF and AUX input
			break;
		case IN_N:
			x[0] = 0b00001011;  // 0dB gain for LINN, mute LINP
			x[1] = 0;  // Mute DIFF and AUX input
			break;
		case IN_DIFF:
			x[0] = 0b00000001;  // Mute LINP, LINN and enable mixer
			x[1] = 0b00001000;  // 0dB gain for DIFF, mute AUX
			break;
		case IN_AUX:
			x[0] = 0b00000001;  // Mute LINP, LINN and enable mixer
			x[1] = 0b00000101;  // Mute DIFF, 0dB gain for AUX
			break;
	}
	
	iic_write_block(dev_p->iic, ADAU1361_REG_REC_MIXER_L0, x, 2);

	// Record Mixer Right Control Registers
	// TODO implement gain control
	switch(dev_p->right_record_mixer.input_mode) {
		case DIGITAL_MICROPHONE:  // Deliberate fallthrough
		case INPUT_DISABLED:
			x[0] = 0;  // Mute LINP, LINN and disable mixer
			x[1] = 0;  // Mute DIFF and AUX input
			break;
		case IN_P:
			x[0] = 0b01010001;  // 0dB gain for LINP, mute LINN
			x[1] = 0;  // Mute DIFF and AUX input
			break;
		case IN_N:
			x[0] = 0b00001011;  // 0dB gain for LINN, mute LINP
			x[1] = 0;  // Mute DIFF and AUX input
			break;
		case IN_DIFF:
			x[0] = 0b00000001;  // Mute LINP, LINN and enable mixer
			x[1] = 0b00001000;  // 0dB gain for DIFF, mute AUX
			break;
		case IN_AUX:
			x[0] = 0b00000001;  // Mute LINP, LINN and enable mixer
			x[1] = 0b00000101;  // Mute DIFF, 0dB gain for AUX
			break;
	}
	
	iic_write_block(dev_p->iic, ADAU1361_REG_REC_MIXER_R0, x, 2);

	// Left differential input volume control
	data = (0b010000 << 2);  // 0dB differential gain
	if(dev_p->left_record_mixer.input_mode == IN_DIFF)
		data |= 0b11;  // Enable and unmute differential input
	else
		data |= 0b00; // Disable and mute differential input
	iic_write_single(dev_p->iic, ADAU1361_REG_LEFT_DIFF_VOL, data);

	// Right differential input volume control
	data = (0b010000 << 2);  // 0dB differential gain
	if(dev_p->right_record_mixer.input_mode == IN_DIFF)
		data |= 0b11;  // Enable and unmute differential input
	else
		data |= 0b00; // Disable and mute differential input
	iic_write_single(dev_p->iic, ADAU1361_REG_RIGHT_DIFF_VOL, data);

	// Microphone Bias
	if(dev_p->mic_bias_enabled)
		data = 1;
	else
		data = 0;
	if(dev_p->operational_mode == ENHANCED_PERFORMANCE)
		data |= 0b1000;
	iic_write_single(dev_p->iic, ADAU1361_REG_REC_MIC_BIAS, data);

	// ALC Registers
	// TODO Implement ALC control - for now disable it
	x[0] = 0;  // Disable ALC for both channels, all other settings now irrelevant
	x[1] = 0;
	x[2] = 0;
	x[3] = 0;
	iic_write_block(dev_p->iic, ADAU1361_REG_ALC0, x, 4);

	// Serial Port Control Registers
	// TODO Implement control of these options rather than hardcoding
	x[0] = 0;
	if(dev_p->bclk_pol == RISING_EDGE)
		x[0] |= (1 << 4);

	if(dev_p->lrclk_pol == RISING_EDGE)
		x[0] |= (1 << 3);

	x[1] = (
		(0b001 << 5) |  // 32 clock cycles per frame
		(0 << 4) |  // ADC Left channel first
		(0 << 3) |  // DAC Left channel first
		(0 << 2) |  // MSB first
		(0b01)  // 0 delay between edge of LRCLK and data
	);
	iic_write_block(dev_p->iic, ADAU1361_REG_SERIAL_PORT0, x, 2);

	// TDM Converter control
	// TODO Implement TDM data support
	x[0] = 0;
	x[1] = 0;
	iic_write_block(dev_p->iic, ADAU1361_REG_CONV0, x, 2);

	// ADC Control
	// TODO Implement Nice ADC control and support for digital microphones
	data = (
		(0 << 6) |  // Normal ADC polarity
		(1 << 5) |  // Enable ADC 2Hz HPF
		(1 << 4) |  // Normal digital mic polarity
		(0 << 3) | // Don't swap digital microphone channels
		(0 << 2)  // Disable digital microphone
	);

	if(
		dev_p->left_record_mixer.input_mode == DIGITAL_MICROPHONE ||
		dev_p->right_record_mixer.input_mode == DIGITAL_MICROPHONE
	){
		printf("ADAU1361: Digital microphone not yet implemented\n");
		return -1;
	}

	if(dev_p->left_record_mixer.input_mode != INPUT_DISABLED)
		data |= 0b01;

	if(dev_p->right_record_mixer.input_mode != INPUT_DISABLED)
		data |= 0b10;

	iic_write_single(dev_p->iic, ADAU1361_REG_ADC_CTL, data);

	// Input digital volume
	// TODO implement input digital volume control
	x[0] = 0;
	x[1] = 0;
	iic_write_block(dev_p->iic, ADAU1361_REG_LEFT_DIG_VOL, x, 2);

	// Left playback mixer
	switch(dev_p->left_playback_mixer.output_mode) {
		case OUTPUT_DISABLED:
			x[0] = (
				(0 << 6) |  // Mute Right DAC to left mixer
				(0 << 5) |  // Mute Left DAC to left mixer
				(0b0000 << 1) |  // Mute Left AUX to left mixer
				0  // Disable left mixer
			);
			x[1] = (
				(0b0000 << 4) |  // Mute right input mixer to left mixer
				0b0000  // Mute left input mixer to left mixer
			);
			break;

		case LEFT_INPUT_MIXER:
			x[0] = (
				(0 << 6) |  // Mute Right DAC to left mixer
				(0 << 5) |  // Mute Left DAC to left mixer
				(0b0000 << 1) |  // Mute Left AUX to left mixer
				1  // Enable left mixer
			);
			x[1] = (
				(0b0000 << 4) |  // Mute right input mixer to left mixer
				0b0110  // 0dB gain from left input mixer to left mixer
			);
			break;

		case RIGHT_INPUT_MIXER:
			x[0] = (
				(0 << 6) |  // Mute Right DAC to left mixer
				(0 << 5) |  // Mute Left DAC to left mixer
				(0b0000 << 1) |  // Mute Left AUX to left mixer
				1  // Enable left mixer
			);
			x[1] = (
				(0b0110 << 4) |  // 0dB gain from right input mixer to left mixer
				0b0000  // Mute left input mixer to left mixer
			);
			break;

		case AUX:
			x[0] = (
				(0 << 6) |  // Mute Right DAC to left mixer
				(0 << 5) |  // Mute Left DAC to left mixer
				(0b0110 << 1) |  // 0dB gain from Left AUX to left mixer
				1  // Enable left mixer
			);
			x[1] = (
				(0b0000 << 4) |  // Mute left input mixer to left mixer
				0b0000  // Mute left input mixer to left mixer
			);
			break;
			
		case LEFT_DAC:
			x[0] = (
				(0 << 6) |  // Mute Right DAC to left mixer
				(1 << 5) |  // Enable Left DAC to left mixer
				(0b0000 << 1) |  // Mute Left AUX to left mixer
				1  // Enable left mixer
			);
			x[1] = (
				(0b0000 << 4) |  // Mute right input mixer to left mixer
				0b0000  // Mute left input mixer to left mixer
			);
			break;

		case RIGHT_DAC:
			x[0] = (
				(1 << 6) |  // Enable Right DAC to left mixer
				(0 << 5) |  // Mute Left DAC to left mixer
				(0b0000 << 1) |  // Mute Left AUX to left mixer
				1  // Enable left mixer
			);
			x[1] = (
				(0b0000 << 4) |  // Mute right input mixer to left mixer
				0b0000  // Mute left input mixer to left mixer
			);
			break;
	}
	iic_write_block(dev_p->iic, ADAU1361_REG_PLAY_MIXER_L0, x, 2);

	// Right Playback Mixer
		// Left playback mixer
	switch(dev_p->right_playback_mixer.output_mode) {
		case OUTPUT_DISABLED:
			x[0] = (
				(0 << 6) |  // Mute Right DAC to right mixer
				(0 << 5) |  // Mute Left DAC to right mixer
				(0b0000 << 1) |  // Mute Left AUX to right mixer
				0  // Disable right mixer
			);
			x[1] = (
				(0b0000 << 4) |  // Mute right input mixer to right mixer
				0b0000  // Mute left input mixer to right mixer
			);
			break;

		case LEFT_INPUT_MIXER:
			x[0] = (
				(0 << 6) |  // Mute Right DAC to right mixer
				(0 << 5) |  // Mute Left DAC to right mixer
				(0b0000 << 1) |  // Mute Left AUX to right mixer
				1  // Enable right mixer
			);
			x[1] = (
				(0b0000 << 4) |  // Mute right input mixer to right mixer
				0b0110  // 0dB gain from left input mixer to right mixer
			);
			break;

		case RIGHT_INPUT_MIXER:
			x[0] = (
				(0 << 6) |  // Mute Right DAC to right mixer
				(0 << 5) |  // Mute Left DAC to right mixer
				(0b0000 << 1) |  // Mute Left AUX to right mixer
				1  // Enable right mixer
			);
			x[1] = (
				(0b0110 << 4) |  // 0dB gain from right input mixer to right mixer
				0b0000  // Mute left input mixer to right mixer
			);
			break;

		case AUX:
			x[0] = (
				(0 << 6) |  // Mute Right DAC to right mixer
				(0 << 5) |  // Mute Left DAC to right mixer
				(0b0110 << 1) |  // 0dB gain from Left AUX to right mixer
				1  // Enable right mixer
			);
			x[1] = (
				(0b0000 << 4) |  // Mute left input mixer to right mixer
				0b0000  // Mute left input mixer to right mixer
			);
			break;
			
		case LEFT_DAC:
			x[0] = (
				(0 << 6) |  // Mute Right DAC to right mixer
				(1 << 5) |  // Enable Left DAC to right mixer
				(0b0000 << 1) |  // Mute Left AUX to right mixer
				1  // Enable right mixer
			);
			x[1] = (
				(0b0000 << 4) |  // Mute right input mixer to right mixer
				0b0000  // Mute left input mixer to right mixer
			);
			break;

		case RIGHT_DAC:
			x[0] = (
				(1 << 6) |  // Enable Right DAC to right mixer
				(0 << 5) |  // Mute Left DAC to right mixer
				(0b0000 << 1) |  // Mute Left AUX to right mixer
				1  // Disable right mixer
			);
			x[1] = (
				(0b0000 << 4) |  // Mute right input mixer to right mixer
				0b0000  // Mute left input mixer to right mixer
			);
			break;
	}
	iic_write_block(dev_p->iic, ADAU1361_REG_PLAY_MIXER_R0, x, 2);

	// L/R Playback Mixer Left
	// TODO allow for cross feed of signals - not sure why this is useful though
	data = (
		(0b00 << 3) |  // Mute right mixer into left line out
	 	(0b10 << 1)  // 0dB loss from left line mixer to left line out
	);
	if(dev_p->line_out.muted == 0)
		data |= 1;  // Enable output mixer

	iic_write_single(dev_p->iic, ADAU1361_REG_PLAY_LR_MIXER_LEFT, data);

	// L/R Playback Mixer Right
	// TODO allow for cross feed of signals - not sure why this is useful though
	data = (
		(0b10 << 3) |  // 0dB loss from right line mixer to right line out
	 	(0b00 << 1)  // Mute left mixer into right line out
	);
	if(dev_p->line_out.muted == 0)
		data |= 1;  // Enable output mixer

	iic_write_single(dev_p->iic, ADAU1361_REG_PLAY_LR_MIXER_RIGHT, data);

	// Mono mixer
	if(dev_p->headphones.enabled)
		data = (
			(0b00 << 1) |  // Commmon mode ouput
			1  // Enable mixer
		);
	else
		data = 0;
	iic_write_single(dev_p->iic, ADAU1361_REG_PLAY_LR_MIXER_MONO, data);

	// Headphone Right
	data = (dev_p->headphones.left_volume << 2) & 0xFC;
	if(dev_p->headphones.muted == 0)
		data |= (1 << 1);

	if(dev_p->headphones.enabled == 1)
		data |= (1 << 0);
	iic_write_single(dev_p->iic, ADAU1361_REG_HP_LEFT_VOL, data);

	// Headphone Right
	data = (dev_p->headphones.right_volume << 2) & 0xFC;
	if(dev_p->headphones.muted == 0)
		data |= (1 << 1);

	data |= 1;  // Set headphone outputs to headphone mode
	iic_write_single(dev_p->iic, ADAU1361_REG_HP_RIGHT_VOL, data);

	// Line Out left
	data = (dev_p->line_out.left_volume << 2) & 0xFC;
	if(dev_p->line_out.muted == 0)
		data |= (1 << 1);

	// Yes, I know this does nothing, just acknowledgement that this bit is 0
	data |= 0;  // Set Line Out outputs into line out mode

	iic_write_single(dev_p->iic, ADAU1361_REG_LINE_LEFT_VOL, data);

	// Line Out Right
	data = (dev_p->line_out.right_volume << 2) & 0xFC;
	if(dev_p->line_out.muted == 0)
		data |= (1 << 1);

	// Yes, I know this does nothing, just acknowledgement that this bit is 0
	data |= 0;  // Set Line Out outputs into line out mode

	iic_write_single(dev_p->iic, ADAU1361_REG_LINE_RIGHT_VOL, data);

	// Mono output
	// TODO: Add support for MONO audio rather than just headphone common mode
	if(dev_p->headphones.enabled)
		data = (
			(1 << 1) |  // Unmute mono output
			1  // Headphone mode
		);
	iic_write_single(dev_p->iic, ADAU1361_REG_MONO_OUTPUT, data);

	// Playback Pop/Click suppression
	data = (
		(0 << 3) |  // Enable pop suppression
		0b00  // Default slew rate coz I don't know better 
	);
	if(
		dev_p->operational_mode == POWER_SAVING ||
		dev_p->operational_mode == EXTREME_POWER_SAVING
	) {
		data |= (1 << 4);  // Enable low power click suppression
	}
	iic_write_single(dev_p->iic, ADAU1361_REG_POP_SUPRESS, data);

	// Playback Power Management
	switch(dev_p->operational_mode){
		case NORMAL:
			data = (
				(0b00 << 6) |
				(0b00 << 4) |
				(0b00 << 2)
			);
			break;
		case EXTREME_POWER_SAVING:
			data = (
				(0b01 << 6) |
				(0b01 << 4) |
				(0b11 << 2)
			);
			break;
		case POWER_SAVING:
			data = (
				(0b11 << 6) |
				(0b11 << 4) |
				(0b11 << 2)
			);
			break;
		case ENHANCED_PERFORMANCE:
			data = (
				(0b10 << 6) |
				(0b10 << 4) |
				(0b10 << 2)
			);
			break;
	}
	if(dev_p->right_playback_mixer.output_mode != OUTPUT_DISABLED)
		data |= (1 << 1);
	
	if(dev_p->left_playback_mixer.output_mode != OUTPUT_DISABLED)
		data |= (1 << 0);

	iic_write_single(dev_p->iic, ADAU1361_REG_PLAY_PWR_MGMT, data);

	// DAC Control
	x[0] = 0;
	if(
		dev_p->left_playback_mixer.output_mode == LEFT_DAC ||
		dev_p->right_playback_mixer.output_mode == LEFT_DAC
	) {
		x[0] |= 0b01;
	}

	if(
		dev_p->left_playback_mixer.output_mode == RIGHT_DAC ||
		dev_p->right_playback_mixer.output_mode == RIGHT_DAC
	) {
		x[0] |= 0b10;
	}
	x[1] = 0;
	x[2] = 0;
	iic_write_block(dev_p->iic, ADAU1361_REG_DAC0, x, 3);

	// Serial input pin settings
	iic_write_single(dev_p->iic, ADAU1361_REG_SERIAL_PORT_PAD, 0xAA);  // No pull up/down

	// Control port pin settings
	iic_write_single(dev_p->iic, ADAU1361_REG_CONTROL_PORT_PAD0, 0xAA);  // No pull up/down
	iic_write_single(dev_p->iic, ADAU1361_REG_CONTROL_PORT_PAD1, 0x0);  // Low drive strength

	// Jack detect pin settings
	data = (
		(0 << 5) |  // Low drive strength
		(0b10 << 2)  // No pull up-down
	);
	iic_write_single(dev_p->iic, ADAU1361_REG_JACK_DETECT_PIN, data);

	// Dejitter
	iic_write_single(dev_p->iic, ADAU1361_REG_DEJITTER, 0x03);  // Don't really know so use defaults

	return 0;
}

static int adau1361_init(struct adau1361_local *dev_p) {
    adau1361_load_defaults(dev_p);
    dev_p->iic = open("/dev/i2c-2", O_RDWR);
    if(dev_p->iic < 0) {
        printf("Error opening ADAU1361 I2C file\n");
        return -1;
    }
    ioctl(dev_p->iic, I2C_SLAVE_FORCE, dev_p->slave_address);
    adau1361_update_full(dev_p);
}

int main(){
    struct adau1361_local adau1361_dev;
    adau1361_init(&adau1361_dev);
    sleep(1);
    close(adau1361_dev.iic);
    return 0;
}

