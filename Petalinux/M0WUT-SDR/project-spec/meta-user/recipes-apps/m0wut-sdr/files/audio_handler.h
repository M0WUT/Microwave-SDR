#ifndef AUDIO_HANDLER_H
#define AUDIO_HANDLER_H

#include "adau1361.h"

class audio_handler
{
public:
    audio_handler(const char *iicFilename, int iicAddress);
    ~audio_handler();
private:
    adau1361 _codec;
};

#endif // AUDIO_HANDLER_H
