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


adau1361::adau1361(const char *iicFile, const int slaveAddress)
{
    this->_iic = new iic(iicFile);
    assert (_iic != NULL);
    this->_iic->set_slave_address(slaveAddress);
    this->_pll = new adau1361_pll(this->_iic);
    assert (_pll != NULL);
    this->_pll->apply_settings();

    // Miscellaneous stuff

    // Force disable jack detect as AD admit it doesn't work
    // source: https://ez.analog.com/dsp/sigmadsp/f/q-a/66306/jack-detection-with-adau1361
    this->_iic->write_single(ADAU1361_REG_JACK_DETECT, 0);

    // Disable pullup / pulldown on data pins and set to low drive strength
    uint8_t x[5];
    x[0] = 0b10101010;  // No pullup/pulldown
    x[1] = 0b10101010;
    x[2] = 0;  // Low drive strength on SDA
    x[3] = 0b00001000;  // No pullup/down and low drive strength on Jack detect
    x[4] = 0b11;  // Dejitter - don't know so set to default?

    _iic->write_single(ADAU1361_REG_SERIAL_PORT_PAD, x[0]);
    _iic->write_block(ADAU1361_REG_CONTROL_PORT_PAD0, &x[1], 3);
    _iic->write_single(ADAU1361_REG_DEJITTER, x[4]);

    // Load config with everything muted as default

    // Input channels
    _leftInputChannel = new adau1361_input_channel(LEFT_CHANNEL, _iic);
    assert (_leftInputChannel != NULL);
    _rightInputChannel = new adau1361_input_channel(RIGHT_CHANNEL, _iic);
    assert (_rightInputChannel != NULL);

    setInput(LEFT_CHANNEL, INPUT_DISABLED);
    setInput(RIGHT_CHANNEL, INPUT_DISABLED);
    setInputVolume(LEFT_CHANNEL, 0);
    setInputVolume(RIGHT_CHANNEL, 0);

    // Output channels
    _leftOutputChannel = new adau1361_output_channel(LEFT_CHANNEL, _iic);
    assert (_leftOutputChannel != NULL);
    _rightOutputChannel = new adau1361_output_channel(RIGHT_CHANNEL, _iic);
    assert(_rightOutputChannel != NULL);

    setOutputSource(LEFT_CHANNEL, OUTPUT_DISABLED);
    setOutputSource(RIGHT_CHANNEL, OUTPUT_DISABLED);
    setOutputMode(HEADPHONES);
    setOutputVolume(LEFT_CHANNEL, 0);
    setOutputVolume(RIGHT_CHANNEL, 0);

    // Generic settings
    this->set_operational_mode(NORMAL);
    enable_mic_bias(true);
    set_datastream_config(
        DISABLED, // Dither
        CLOCK,  // Clock or pulse on LRCLK
        FALLING_EDGE,  // Which edge of BCLK data changes on (I2S default = falling edge)
        FALLING_EDGE,  // Which edge of LRCLK starts a frame (I2S default = falling edge)
        2,  // Channels Per Frame (2 = stereo, 4 = TDM4)
        SLAVE,  // Is CODEC bus master or slave?
        32,  // Clocks per Frame
        LEFT_FIRST,  // Which ADC channel is sent first (I2S default = Left)
        LEFT_FIRST,  // Which DAC channel is sent first
        MSB_FIRST,  // Data order (I2S default = MSB first)
        1  // Delay (in BCLK cycles) between LRCLK edge and start of data (I2S default = 1)
    );

}

void adau1361::set_operational_mode(op_mode_t mode)
{
    // Data[0] is for record power managment
    // Data[1] is for playback power management
    // Data[2] is for pop suppresion circuitry
    uint8_t data[3];
    switch(mode) {
        case NORMAL:
            data[0] = 0;
            data[1] = 0;
            data[2] = 0;
            break;
        case EXTREME_POWER_SAVING:
            data[0] = 0b00001110;
            data[1] = 0b01011100;
            data[2] = 0b00011000;
            break;
        case POWER_SAVING:
            data[0] = 0b00011110;
            data[1] = 0b11111100;
            data[2] = 0b00010000;
            break;
        case ENHANCED_PERFORMANCE:
            data[0] = 0b00101000;
            data[1] = 0b10101000;
            data[2] = 0;
            break;
    };

    _iic->write_single(ADAU1361_REG_REC_PWR_MGMT, data[0]);
    if(_rightOutputChannel->enabled())
        data[1] |= 0b10;
    if(_leftOutputChannel->enabled())
        data[1] |= 0b01;
    _iic->write_single(ADAU1361_REG_PLAY_PWR_MGMT, data[1]);

    _iic->write_single(ADAU1361_REG_POP_SUPRESS, data[2]);

    _op_mode = mode;
}

adau1361::~adau1361()
{
    delete(_iic);
    delete(_pll);
    delete(_leftInputChannel);
    delete(_rightInputChannel);
    delete(_leftOutputChannel);
    delete(_rightOutputChannel);
}

void adau1361::enable_mic_bias(bool x)
{
    uint8_t data = 0;

    if(_op_mode == ENHANCED_PERFORMANCE)
        data = (1 << 3);
    else
        data = 0;

    data |= x;
    _iic->write_single(ADAU1361_REG_REC_MIC_BIAS, data);
    _micBiasEnabled = x;
}

void adau1361::set_datastream_config(
        enabled_t ditherEnabled,
        lrmod_t lrmod,
        clk_polarity_t bclkPolarity,
        clk_polarity_t lrclkPolarity,
        int channelsPerFrame,
        master_t mode,
        int clocksPerFrame,
        first_channel_t adcChannel,
        first_channel_t dacChannel,
        bit_order_t bitOrder,
        int dataDelay)
{
    uint8_t x[2];
    x[0] = 0;  // Serial Port Control 0
    x[1] = 0;  // Serial Port Control 1

    // Serial Port Control 0
    if (ditherEnabled == ENABLED)
        x[0] |= (1 << 7);

    if(lrmod == PULSE)
        x[0] |= (1 << 5);

    if(bclkPolarity == RISING_EDGE)
        x[0] |= (1 << 4);

    if(lrclkPolarity == RISING_EDGE)
        x[0] |= (1 << 3);

    switch(channelsPerFrame){
        case 2: x[0] |= (0b00 << 1); break;
        case 4: // Deliberate Fallthrough @TODO implement TDM4
        default: assert (false);
    };

    if(mode == MASTER)
        x[0] |= 1;


    // Serial Port Control 1
    switch(clocksPerFrame){
        case 64: x[1] |= (0b000 << 5); break;
        case 32: x[1] |= (0b001 << 5); break;
        case 48: x[1] |= (0b010 << 5); break;
        case 128: x[1] |= (0b011 << 5); break;
        default: assert (false);  // Only these values are valid
    };

    if(adcChannel == RIGHT_FIRST)
        x[1] |= (1 << 4);

    if(dacChannel == RIGHT_FIRST)
        x[1] |= (1 << 3);

    if(bitOrder == LSB_FIRST)
        x[1] |= (1 << 2);

    switch(dataDelay){
        case 1: x[1] |= (0b00); break;
        case 0: x[1] |= (0b01); break;
        case 8: x[1] |= (0b10); break;
        case 16: x[1] |= (0b11); break;
        default: assert (false);  // Only these values are valid
    };

    _iic->write_block(ADAU1361_REG_SERIAL_PORT0, x, 2);

    // TDM Settings - not implemented as controllable yet
    x[0] = 0;
    x[1] = 0;

    _iic->write_block(ADAU1361_REG_CONV0, x, 2);

}

void adau1361::setInput(channel_t channel, adc_input_t input) {
    assert (input != DIGITAL_MICROPHONE);  // TODO implement digital microphone
    if(channel == LEFT_CHANNEL)
        _leftInputChannel->set_input(input);
    else
        _rightInputChannel->set_input(input);


    uint8_t x = 0b00110000;  // Enable 2Hz HPF on ADC, digital microphone settings ignored
    if (_leftInputChannel->enabled())
        x |= 0b01;

    if(_rightInputChannel->enabled())
        x |= 0b10;

    _iic->write_single(ADAU1361_REG_ADC_CTL, x);
}

void adau1361::setInputVolume(channel_t channel, uint8_t volume)
{
    if(channel == LEFT_CHANNEL)
        _leftInputChannel->set_volume(volume);
    else
        _rightInputChannel->set_volume(volume);
}

void adau1361::setOutputSource(channel_t channel, output_source_t source) {
    if(channel == LEFT_CHANNEL)
        _leftOutputChannel->set_source(source);
    else
        _rightOutputChannel->set_source(source);

    // En/Disable DACs as needed

    uint8_t data[3];
    data[0] = 0;
    data[1] = 0;
    data[2] = 0;

    output_source_t left, right;
    left = _leftOutputChannel->source();
    right = _rightOutputChannel->source();

    if((left == LEFT_DAC) || (right == LEFT_DAC)){
        data[0] |= 0b01;
    }

    if((left == RIGHT_DAC) || (right == RIGHT_DAC)){
        data[0] |= 0b10;
    }

    _iic->write_block(ADAU1361_REG_DAC0, data, 3);

    // Enable playback
    uint8_t x = 0;
    switch(_op_mode) {
        case NORMAL: x = 0; break;
        case EXTREME_POWER_SAVING: x = 0b01011100; break;
        case POWER_SAVING: x = 0b11111100; break;
        case ENHANCED_PERFORMANCE: x = 0b10101000; break;
    };

    if(left != OUTPUT_DISABLED)
        x |= 0b01;

    if(right != OUTPUT_DISABLED)
        x |= 0b10;

    _iic->write_single(ADAU1361_REG_PLAY_PWR_MGMT, x);
}

void adau1361::setOutputMode(output_mode_t outputMode) {

    _outputMode = outputMode;

    // Set volume already deals with enabling output channels
    // so update output mode and set each channel to it's own volume
    setOutputVolume(LEFT_CHANNEL, _leftOutputChannel->volume());
    setOutputVolume(RIGHT_CHANNEL, _rightOutputChannel->volume());

    // Mono Mixer Control

    uint8_t x;

    switch(_outputMode){
        case HEADPHONES: x = 0b001; break;
        case LINE_OUT: x = 0b001; break;
        case MONO: x = 0b011; break;
    };

    _iic->write_single(ADAU1361_REG_PLAY_LR_MIXER_MONO, x);
}

void adau1361::setOutputVolume(channel_t channel, uint8_t volume)
{
    assert (volume < 64);

    // Needs to be done at higher level as volume control registers contain enable bits
    // All outputs for that channel are set to the same volume, MONO follows left channel
    uint8_t x[3];

    // All registers store volume in 6 MSBs
    x[0] = (volume << 2);  // Headphone Volume
    x[1] = (volume << 2);  // Line Volume
    x[2] = (volume << 2);  // Mono Volume

    if(channel == LEFT_CHANNEL) {

        switch (_outputMode){
            case HEADPHONES:
                x[0] |= 0b01;  // Enable Headphones
                if(volume != 0) {
                    x[0] |= 0b10;  // Unmute left headphone output
                }
                x[2] |= 0b11;  // Set Mono output for headphone common mode
                break;

            case LINE_OUT:
                if(volume != 0)
                    x[1] |= (1 << 1);  // Unmute left line ouput
                x[2] |= 0b11;  // Set Mono output for headphone common mode
                break;

            case MONO: x[2] |= 0b10; break; // Unmute Mono Output, set as line out mode

        };

        _iic->write_single(ADAU1361_REG_HP_LEFT_VOL, x[0]);
        _iic->write_single(ADAU1361_REG_LINE_LEFT_VOL, x[1]);
        _iic->write_single(ADAU1361_REG_MONO_OUTPUT, x[2]);
    } else {

        switch(_outputMode) {
            case HEADPHONES:
                x[0] |= 0b01;  // Enable Headphones
                if(volume != 0)
                    x[0] |= 0b10;  // Unmute left headphone output
                break;
            case LINE_OUT:
                if(volume != 0)
                    x[1] |= 0b10; // Unmute right line out
                break;
            case MONO: assert(false); break;  // If in MONO mode, left channel sets volume

        };

        _iic->write_single(ADAU1361_REG_HP_RIGHT_VOL, x[0]);
        _iic->write_single(ADAU1361_REG_LINE_RIGHT_VOL, x[1]);

    }
}




