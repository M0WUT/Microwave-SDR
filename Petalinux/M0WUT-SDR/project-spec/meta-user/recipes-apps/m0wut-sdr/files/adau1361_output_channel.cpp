#include "adau1361_output_channel.h"

adau1361_output_channel::adau1361_output_channel(channel_t channel, iic *iic)
{
    _channel = channel;
    _iic = iic;
    _volume = 0;
}

void adau1361_output_channel::set_source(output_source_t source)
{
    uint8_t x[2];
    x[0] = 0;  // Mixer reg 0
    x[1] = 0;  // Mixer reg 1

    switch(source){
        case OUTPUT_DISABLED: break;
        case LEFT_INPUT_MIXER:
            x[1] = 0b00000110;
            break;
        case RIGHT_INPUT_MIXER:
            x[1] = 0b01100000;
            break;
        case AUX:
            x[0] = 0b00001100;
            break;
        case LEFT_DAC:
            x[0] = (1 << 5);
            break;
        case RIGHT_DAC:
            x[0] = (1 << 6);
            break;
    };
    
    if(source != OUTPUT_DISABLED)
        x[0] |= 0b01;  // Enable Mixer


    uint16_t address;

    if(_channel == LEFT_CHANNEL){
        address = ADAU1361_REG_PLAY_MIXER_L0;
        _iic->write_single(ADAU1361_REG_PLAY_LR_MIXER_LEFT, 0b101);
    }
    else {
        address = ADAU1361_REG_PLAY_MIXER_R0;
        _iic->write_single(ADAU1361_REG_PLAY_LR_MIXER_RIGHT, 0b10001);
    }

    _iic->write_block(address, x, 2);

    _source = source;

}

output_source_t adau1361_output_channel::source()
{
    return _source;
}

bool adau1361_output_channel::enabled()
{
    return (_source != OUTPUT_DISABLED);
}

void adau1361_output_channel::save_volume(int volume)
{
    _volume = volume;
}

int adau1361_output_channel::volume()
{
    return _volume;
}

