#ifndef ADAU1361_INPUT_CHANNEL_H
#define ADAU1361_INPUT_CHANNEL_H

#include "adau1361_common.h"

class adau1361_input_channel
{
public:
    adau1361_input_channel(channel_t channel, iic *iic);
    void set_input(adc_input_t input);
    bool enabled();
    void set_volume(uint8_t volume);

private:
    channel_t _channel;
    iic *_iic;
    adc_input_t _input;
    uint8_t _volume;
};

#endif // ADAU1361_INPUT_CHANNEL_H
