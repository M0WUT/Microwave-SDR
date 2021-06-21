#include "config_Anglian.h"

#include "../../pct2075/pct2075.h"

Anglian::Anglian(Panicker *panicker) : BaseTransverterConfig(panicker){
    add_temp_sensor(
        new PCT2075 (
            "PA",
            0x48,
            this->panicker
        )
    );
}
