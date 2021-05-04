#include "audio_handler.h"

audio_handler::audio_handler(const char *iicFilename, int iicAddress) : _codec(iicFilename, iicAddress)
{
    // Load SDR settings

    _codec.setInput(LEFT_CHANNEL, IN_DIFF);
    _codec.setInput(RIGHT_CHANNEL, INPUT_DISABLED);
    _codec.setInputVolume(LEFT_CHANNEL, 255);
    _codec.setInputVolume(RIGHT_CHANNEL, 0);
    _codec.enable_mic_bias(true);

    _codec.setOutputSource(LEFT_CHANNEL, LEFT_INPUT_MIXER);
    _codec.setOutputSource(RIGHT_CHANNEL, RIGHT_DAC);
    _codec.setOutputMode(HEADPHONES);
    _codec.setOutputVolume(LEFT_CHANNEL, 63);
    _codec.setOutputVolume(RIGHT_CHANNEL, 63);
}

audio_handler::~audio_handler()
{

}
