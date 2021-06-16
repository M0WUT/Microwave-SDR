#include "config.h"
#include <ArduinoJson.h>
#include "src/addressEeprom/addressEeprom.h"
#include "src/rs485Handler/rs485Handler.h"
#include "src/panic/panic.h"
#include "src/TransverterController/TransverterController.h"

int main(){
    TransverterController app;
    app.run();
    return 0;
}

