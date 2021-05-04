#include "adau1361_pll.h"

adau1361_pll::adau1361_pll(iic *iic){
    this->_iic = iic;
    this->load_default_settings();
}


adau1361_pll::~adau1361_pll() {}

void adau1361_pll::set_mode(adau1361_pll::pll_mode_t mode)
{
    switch(mode){
        case PLL_DISABLED:
            // Ensure PLL control registers have something in but values are irrelevant
            this->set_input_divider(1);
            this->set_multiplier(2, 0, 1);
            break;
        default:
            // Can't implement other modes without I2C read being implemented (@TODO)
            std::cout << "Adau1361: Only supports PLL Disabled" << std::endl;
            assert (false);
    };
    _mode = mode;

}

void adau1361_pll::set_multiplier(int integer, uint16_t numerator, uint16_t denominator)
{
    assert (denominator != 0);  // Don't want divide by 0
    assert ((integer > 1) && (integer < 9));  // 2 <= integer <= 8
    this->_divInteger = integer;
    this->_divNumerator = numerator;
    this->_divDenominator = denominator;
}

void adau1361_pll::set_input_divider(int divider)
{
    assert ((0 < divider) && (divider < 5));
    this->_inputDivider = divider;
}

void adau1361_pll::set_core_clock_ratio(adau1361_pll::core_clock_ratio_t ratio)
{
    this->_coreClockRatio = ratio;
}

void adau1361_pll::load_default_settings()
{
    set_mode(PLL_DISABLED);
    set_input_divider(1);
    set_core_clock_ratio(FSx256);
}

void adau1361_pll::apply_settings()
{
    uint8_t x[6];  // Generic data array
    uint8_t data;  // Generic register for data to send

   // Disable core clock
   this->_iic->write_single(ADAU1361_REG_CLOCK_CONTROL, 0);

    // Update PLL - must be written to as block of 6 bytes
    x[0] = (_divDenominator >> 8) & 0xFF;
    x[1] = (_divDenominator) & 0xFF;
    x[2] = (_divNumerator >> 8) & 0xFF;
    x[3] = (_divNumerator) & 0xFF;
    x[4] = 	((_divInteger << 3) & 0x78) |
            (((_inputDivider - 1) << 1) & 0x6) |
            (_mode == PLL_FRACTIONAL ? 1 : 0);
    x[5] = (_mode != PLL_DISABLED ? 1 : 0);

    this->_iic->write_block(ADAU1361_REG_PLL_CONTROL, x, 6);

    // TODO: Check PLL Lock bit - this is what's preventing PLL being used
    // as I2C read not yet implemented

    // Update Clock Control register
    data = 0;

    // Enable the PLL if needed
    if  (_mode != PLL_DISABLED) {
        data |= (1 << 3);
    }

    // Set Core Clock Divider ratio
    switch(_coreClockRatio) {
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

    this->_iic->write_single(ADAU1361_REG_CLOCK_CONTROL, data);

}
