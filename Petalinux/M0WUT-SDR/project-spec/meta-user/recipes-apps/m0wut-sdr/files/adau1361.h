#ifndef ADAU1361_H
#define ADAU1361_H

#include "adau1361_pll.h"
#include "adau1361_input_channel.h"
#include "adau1361_output_channel.h"
#include "adau1361_common.h"


class adau1361
{
public:
    adau1361(const char *iicFile, const int slaveAddress);
    void set_operational_mode(op_mode_t mode);
    ~adau1361();
    void enable_mic_bias(bool x);
    void set_datastream_config(
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
            int dataDelay
    );
    void setInput(channel_t channel, adc_input_t input);
    void setInputVolume(channel_t channel, uint8_t volume);  // Volume in range 0-63
    void setOutputSource(channel_t channel, output_source_t source);
    void setOutputMode(output_mode_t outputMode);
    void setOutputVolume(channel_t channel, uint8_t volume);  // Volume in range 0-63



private:
    iic *_iic;
    adau1361_pll *_pll;
    op_mode_t _op_mode;
    adau1361_input_channel *_leftInputChannel, *_rightInputChannel;
    adau1361_output_channel *_leftOutputChannel, *_rightOutputChannel;
    bool _micBiasEnabled;
    output_mode_t _outputMode;

};

#endif  // #ifdef ADAU1361_H
