#include "baseTransverterConfig.h"

BaseTransverterConfig::BaseTransverterConfig(Panicker *panicker){
    this->panicker = panicker;
}

void BaseTransverterConfig::set_temp_sensors(TemperatureSensor *x, int numTempSensors){
    tempSensors = (TemperatureSensor *)malloc(sizeof(TemperatureSensor)  * numTempSensors);
    for (int i = 0; i < numTempSensors; i++){
        tempSensors[i] = x[i];
    }
    this->numTempSensors = numTempSensors;
}

int BaseTransverterConfig::read_temperature(float *outBuffer){
    for(int i = 0; i < numTempSensors; i++){
        Serial.println(tempSensors[i].read_temperature());

        outBuffer[i] = 2.7;
        
    }
    return numTempSensors;
}