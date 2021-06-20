#ifndef BASE_TRANSVERTER_H
#define BASE_TRANSVERTER_H

#include "../../temperatureSensor/temperatureSensor.h"
#include "../../panic/panic.h"
#include <vector>


class BaseTransverterConfig{
    public:
        BaseTransverterConfig(Panicker *panicker);
        int read_temperatures(TemperatureReading *outBuffer);
        int get_num_temp_sensors();
    protected:
        int numTempSensors;
        Panicker *panicker;
        void add_temp_sensor(TemperatureSensor *sensor);
    private:
        std::vector<TemperatureSensor*> tempSensors;
    
};


#endif