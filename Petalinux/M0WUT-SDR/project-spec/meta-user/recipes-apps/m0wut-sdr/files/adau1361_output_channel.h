#ifndef ADAU1361_OUTPUT_CHANNEL_H
#define ADAU1361_OUTPUT_CHANNEL_H

#include "adau1361_common.h"


class adau1361_output_channel
{
public:
    adau1361_output_channel(channel_t channel, iic *iic);
    void set_source(output_source_t source);
    output_source_t source();
    bool enabled();
    void save_volume(int volume);  // Doesn't affect volume, just stores it
    int volume();  // Returns stored volume

private:
    channel_t _channel;
    output_source_t _source;
    iic *_iic;
    int _volume;
};

#endif // ADAU1361_OUTPUT_CHANNEL_H
