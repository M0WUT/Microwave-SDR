#include "config_Anglian.h"

#include "../../pct2075/pct2075.h"

Anglian::Anglian(Panicker *panicker) : BaseTransverterConfig(panicker){

    PCT2075 t1(
        "PA Temp",
        0x48,
        this->panicker
    );
    PCT2075 x[] = {t1};

    this->set_temp_sensors(x, sizeof(x) / sizeof(x[0]));
}
