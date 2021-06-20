#include "config_hfAllband.h"

#include "../../pct2075/pct2075.h"

HfAllband::HfAllband(Panicker *panicker) : BaseTransverterConfig(panicker){
    add_temp_sensor(
        new PCT2075 (
            "PA",
            0x48,
            this->panicker
        )
    );
    add_temp_sensor(
        new PCT2075 (
            "TEST",
            0x37,
            this->panicker
        )
    );
}
