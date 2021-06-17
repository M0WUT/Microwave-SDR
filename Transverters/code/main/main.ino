#include "config.h"
#include "src/TransverterController/TransverterController.h"
#include "src/pct2075/pct2075.h" // DEBUG

int main(){
    TransverterController app;
    PCT2075 test(
        0x48,
        app.panicker
    );
    app.run();
    return 0;
}

