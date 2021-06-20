#include "baseTransverterConfig.h"

BaseTransverterConfig::BaseTransverterConfig(Panicker *panicker){
    this->panicker = panicker;
    this->numTempSensors = 0;
}

void BaseTransverterConfig::add_temp_sensor(TemperatureSensor *sensor){
    this->tempSensors.push_back(sensor);
    this->numTempSensors++;
}

int BaseTransverterConfig::read_temperatures(TemperatureReading *outBuffer){
    for(int i = 0; i < numTempSensors; i++){
        TemperatureReading x;
        x = tempSensors[i]->read_temperature();        
        outBuffer[i] = x;
    }
    return numTempSensors;
}

int BaseTransverterConfig::get_num_temp_sensors(){
    return numTempSensors;
}