#include "eepromHandler.h"
#include "config.h"

class AddressEeprom: public EEPROM{
    public:
        AddressEeprom(int deviceAddress);
        bool initialised();
        int get_address();
        void first_time_setup();
    private:
        int address = -1;
};