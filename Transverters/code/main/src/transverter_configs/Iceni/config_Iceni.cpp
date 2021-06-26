#include "config_Iceni.h"

#include "../../pct2075/pct2075.h"

Iceni::Iceni(Panicker *panicker) : BaseTransverterConfig(panicker){
    add_temp_sensor(
        new PCT2075 (
            "PA",
            0x48,
            this->panicker
        )
    );
}
