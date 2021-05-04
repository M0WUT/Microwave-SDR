#ifndef ADAU1361_PLL_H
#define ADAU1361_PLL_H

#include "adau1361_common.h"
#include <iostream>

class adau1361_pll 
{
public:
    adau1361_pll(iic *iic);
    ~adau1361_pll();
    typedef enum {PLL_DISABLED, PLL_INTEGER, PLL_FRACTIONAL} pll_mode_t;
    typedef enum {FSx256, FSx512, FSx768, FSx1024} core_clock_ratio_t;
    void set_mode(pll_mode_t mode);
    void set_multiplier(int integer, uint16_t numerator, uint16_t denominator);
    void set_input_divider(int divider);
    void set_core_clock_ratio(core_clock_ratio_t ratio);
    void load_default_settings();
    void apply_settings();

private:
    iic *_iic;
    pll_mode_t _mode;
    int _divInteger;
    uint16_t _divNumerator, _divDenominator;
    int _inputDivider;
    core_clock_ratio_t _coreClockRatio;
};

#endif // ADAU1361_PLL_H
