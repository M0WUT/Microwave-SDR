#ifndef ADAU1361_H
#define ADAU1361_H

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <stdint.h>
#include <stdbool.h>
#include <sys/ioctl.h>

#define ADAU1361_REG_CLOCK_CONTROL 0x4000
#define ADAU1361_REG_PLL_CONTROL 0x4002
#define ADAU1361_REG_JACK_DETECT 0x4008
#define ADAU1361_REG_REC_PWR_MGMT 0x4009
#define ADAU1361_REG_REC_MIXER_L0 0x400A
#define ADAU1361_REG_REC_MIXER_L1 0x400B
#define ADAU1361_REG_REC_MIXER_R0 0x400C
#define ADAU1361_REG_REC_MIXER_R1 0x400D
#define ADAU1361_REG_LEFT_DIFF_VOL 0x400E
#define ADAU1361_REG_RIGHT_DIFF_VOL 0x400F
#define ADAU1361_REG_REC_MIC_BIAS 0x4010
#define ADAU1361_REG_ALC0 0x4011
#define ADAU1361_REG_ACL1 0x4012
#define ADAU1361_REG_ACL2 0x4013
#define ADAU1361_REG_ALC3 0x4014
#define ADAU1361_REG_SERIAL_PORT0 0x4015
#define ADAU1361_REG_SERIAL_PORT1 0x4016
#define ADAU1361_REG_CONV0 0x4017
#define ADAU1361_REG_CONV1 0x4018
#define ADAU1361_REG_ADC_CTL 0x4019
#define ADAU1361_REG_LEFT_DIG_VOL 0x401A
#define ADAU1361_REG_RIGHT_DIG_VOL 0x401B
#define ADAU1361_REG_PLAY_MIXER_L0 0x401C
#define ADAU1361_REG_PLAY_MIXER_L1 0x401D
#define ADAU1361_REG_PLAY_MIXER_R0 0x401E
#define ADAU1361_REG_PLAY_MIXER_R1 0x401F
#define ADAU1361_REG_PLAY_LR_MIXER_LEFT 0x4020
#define ADAU1361_REG_PLAY_LR_MIXER_RIGHT 0x4021
#define ADAU1361_REG_PLAY_LR_MIXER_MONO 0x4022
#define ADAU1361_REG_HP_LEFT_VOL 0x4023
#define ADAU1361_REG_HP_RIGHT_VOL 0x4024
#define ADAU1361_REG_LINE_LEFT_VOL 0x4025
#define ADAU1361_REG_LINE_RIGHT_VOL 0x4026
#define ADAU1361_REG_MONO_OUTPUT 0x4027
#define ADAU1361_REG_POP_SUPRESS 0x4028
#define ADAU1361_REG_PLAY_PWR_MGMT 0x4029
#define ADAU1361_REG_DAC0 0x402A
#define ADAU1361_REG_DAC1 0x402B
#define ADAU1361_REG_DAC2 0x402C
#define ADAU1361_REG_SERIAL_PORT_PAD 0x402D
#define ADAU1361_REG_CONTROL_PORT_PAD0 0x402F
#define ADAU1361_REG_CONTROL_PORT_PAD1 0x4030
#define ADAU1361_REG_JACK_DETECT_PIN 0x4031
#define ADAU1361_REG_DEJITTER 0x4036

#define I2C_SLAVE_FORCE 0x0706  // Magic number to change the I2C slave address, not my code

typedef enum {NORMAL, EXTREME_POWER_SAVING, POWER_SAVING, ENHANCED_PERFORMANCE} op_mode_t;
typedef enum {INPUT_DISABLED, IN_P, IN_N, IN_DIFF, IN_AUX, DIGITAL_MICROPHONE} adc_input_t; 
typedef enum {FALLING_EDGE, RISING_EDGE} clk_polarity_t;
typedef enum {OUTPUT_DISABLED, LEFT_INPUT_MIXER, RIGHT_INPUT_MIXER, AUX, LEFT_DAC, RIGHT_DAC} output_t;
typedef enum {PLL_DISABLED, PLL_INTEGER, PLL_FRACTIONAL} pll_mode_t; // Have only implemented PLL_DISABLED
typedef enum {FSx256, FSx512, FSx768, FSx1024} core_clock_ratio_t;

struct pll_settings {
    // Let X = pll_input_divider
    // Let R = pll_integer
    // Let N = pll_numerator
    // Let M = pll_denominator
    // Let f = input clock frequency 

    // pll_mode = PLL_DISABLED, core clock = f
    // pll_mode = PLL_INTEGER, core clock = f*R/X
    // pll_mode = PLL_FRACTIONAL, core clock = f * (R+N/M) / X

    pll_mode_t pll_mode;
    int pll_integer;  // 2 <= pll_integer <= 8
    uint16_t pll_denominator;
    uint16_t pll_numerator;
    uint8_t pll_input_divider;  // 1 <= pll_input_divider <= 4

    core_clock_ratio_t core_clock_ratio;
};

struct input_mixer {
    adc_input_t input_mode;  // Which source goes to the mixer input
    //int gain;  // Gain (in dB) between input and mixer
};

struct output_mixer {
    output_t output_mode;
    //int gain;
};

struct headphone_settings {
    bool enabled;  // 1 = output enabled
    bool muted;  // 1 = outputs muted
    uint8_t left_volume;  // 0 = min volume, 63 = max volume
    uint8_t right_volume;  // 0 = min volume, 63 = max volume
};

struct line_out_settings {
    bool muted;  // 1 = outputs muted
    uint8_t left_volume;  // 0 = min volume, 63 = max volume
    uint8_t right_volume;  // 0 = min volume, 63 = max volume
};

struct adau1361_local {

    // I2C Device
	int iic;  // File ID for I2C device
    uint8_t slave_address;  // I2C device address for ADAU1361

    // General settings
    struct pll_settings pll;
    bool mic_detect_enabled;
    op_mode_t operational_mode;

    // Input stuff
    struct input_mixer left_record_mixer;
    struct input_mixer right_record_mixer;
    bool mic_bias_enabled;
    clk_polarity_t bclk_pol;  // Which edge data is clocked in on
    clk_polarity_t lrclk_pol;  // Which edge is start of left channel data

    // Output stuff
    struct output_mixer left_playback_mixer;
    struct output_mixer right_playback_mixer;
    struct headphone_settings headphones;
    struct line_out_settings line_out;
};

static int adau1361_init_device(struct adau1361_local *dev);
static void adau1361_load_defaults(struct adau1361_local *dev);
static int adau1361_update_full(struct adau1361_local *dev);
static int iic_write_single(int iic, uint16_t reg_address, uint8_t data);
static int iic_write_block(int iic, uint16_t reg_address, uint8_t *data, uint8_t data_length);

#endif  // #ifdef ADAU1361_H