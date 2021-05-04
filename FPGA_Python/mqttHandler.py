# This Python file uses the following encoding: utf-8
import logging
import paho.mqtt.client as mqtt
import socket
from usefulFunctions import get_mac
from config_user import NAME
import json


class RegisteredHandler(object):
    def __init__(self, topic, callbackFunction):
        self.topic = topic
        self.callbackFunction = callbackFunction


class MqttHandler():

    def __init__(self, ipAddr, ipPort, warnings):
        self.warnings = warnings
        self.client = mqtt.Client()
        self.client.on_connect = self.on_connect
        self.client.on_message = self.on_message
        self.ipAddr = ipAddr
        self.ipPort = ipPort
        self.callbacks = []

        try:
            x = {
                "mac": "{}".format(get_mac()),
                "name": "{}".format(NAME)
            }
            self.client.will_set("/discovery/lwt", json.dumps(x))
            self.client.connect(ipAddr, ipPort, keepalive=5)
            self.client.loop_start()
        except socket.timeout:
            self.warnings.add_error(
                "MQTT", "Broker not found at at {}:{}".format(
                    self.ipAddr,
                    self.ipPort
                ),
                broadcast=False
            )

    def on_connect(self, client, userdata, flags, rc):
        if(rc == 0):
            logging.info(
                "Successfully connected to MQTT Broker at {}:{}".format(
                    self.ipAddr,
                    self.ipPort
                )
            )
        else:
            self.warnings.add_error(
                "MQTT", "Failed to connect to broker at {}:{}".format(
                    self.ipAddr,
                    self.ipPort,
                ),
                broadcast=False
            )

    def on_message(self, client, userdata, msg):
        logging.debug(
            "Received MQTT: [{}] {}".format(
                msg.topic,
                msg.payload.decode('utf-8')
            )
        )
        for x in self.callbacks:
            if msg.topic == x.topic:
                x.callbackFunction(msg)
                return
        self.warnings.add_warning(
                "MQTT",
                "No handler registered for subscribed topic: {}".format(
                    msg.topic
                )
            )

    def publish(self, topic, payload, *args, **kwargs):
        logging.debug("Publishing MQTT: [{}] {}".format(
                topic,
                payload
            )
        )
        self.client.publish(topic, payload, *args, **kwargs)

    def register_callback(self, topic, func):
        assert topic not in [x.topic for x in self.callbacks], \
            "Topic: {} already has a callback function registered".format(
                topic
            )
        self.callbacks.append(
            RegisteredHandler(
                topic=topic, callbackFunction=func
            )
        )
        error, _ = self.client.subscribe(topic)
        if (error != mqtt.MQTT_ERR_SUCCESS):
            self.warnings.add_error(
                "MQTT",
                "Failed to subscribe to topic {}".format(topic)
            )

        logging.info(
            "Subscribed to MQTT topic: {}".format(topic)
        )

    def __del__(self):
        self.client.loop_stop()
        self.client.disconnect()
        logging.info(
            "Disconnected from MQTT Server {}:{}".format(
                self.ipAddr,
                self.ipPort
            )
        )


if __name__ == '__main__':
    logging.basicConfig(
        format='%(asctime)s %(levelname)-8s %(message)s',
        level=logging.DEBUG,
        datefmt='%Y-%m-%d %H:%M:%S'
    )
    x = MqttHandler("127.0.0.1", ipPort=1883, warnings=None)
    while(1):
        pass
