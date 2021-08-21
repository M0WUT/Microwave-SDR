# This Python file uses the following encoding: utf-8
import logging
import paho.mqtt.client as mqtt
import socket
from usefulFunctions import get_mac
from config_user import NAME
import json
from json.decoder import JSONDecodeError


class MqttHandler():

    def __init__(self, ipAddr, ipPort, warnings):
        self.warnings = warnings
        self.client = mqtt.Client()
        self.client.on_connect = self.on_connect
        self.client.on_message = self.on_message
        self.ipAddr = ipAddr
        self.ipPort = ipPort
        self.callbacks = {}

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
                NAME,
                "MQTT",
                "Broker not found at at {}:{}".format(
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
        message = msg.payload.decode('utf-8')
        logging.debug(
            "Received MQTT: [{}] {}".format(msg.topic, message)
        )
        if msg.topic in self.callbacks.keys():
            try:
                id = "Unknown device"
                res = json.loads(message)
                if "name" in res.keys():
                    id = res["name"]
                self.callbacks[msg.topic](res)

            except UnicodeDecodeError:
                self.warnings.add_warning(
                    id,
                    "MQTT",
                    "Malformed message received"
                )
            except JSONDecodeError:
                self.warnings.add_warning(
                    id,
                    "MQTT",
                    "Received message contains invalid JSON"
                )
            except KeyError as e:
                self.warnings.add_warning(
                    id,
                    "MQTT",
                    "Response from device "
                    "was not complete. Expected key: {}".format(e)
                )
        else:
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
        assert topic not in self.callbacks.keys(), \
            "Topic: {} already has a callback function registered".format(
                topic
            )
        self.callbacks[topic] = func

        error, _ = self.client.subscribe(topic)
        if (error != mqtt.MQTT_ERR_SUCCESS):
            self.warnings.add_error(
                "MQTT",
                "Failed to subscribe to topic {}".format(topic)
            )

        logging.info(
            "Subscribed to MQTT topic: {}".format(topic)
        )

    def remove_callback(self, topic) -> None:
        assert topic in self.callbacks.keys(), \
            "Attempted to remove topic ({}) that's not "\
            "currently subscribed to".format(topic)

        error, _ = self.client.unsubscribe(topic)
        if (error != mqtt.MQTT_ERR_SUCCESS):
            self.warnings.add_error(
                NAME, "MQTT",
                "Failed to unsubscribe from topic {}".format(topic),
                broadcast=False
            )
        else:
            self.callbacks.pop(topic)
            logging.info(
                "Unsubscribed from MQTT topic: {}".format(topic)
            )

    def __enter__(self):
        return self

    def __exit__(self, *args, **kwargs):
        self.client.loop_stop()
        self.client.disconnect()
        logging.info(
            "Disconnected from MQTT Server {}:{}".format(
                self.ipAddr,
                self.ipPort
            )
        )


def main():
    logging.basicConfig(
        format='%(asctime)s %(levelname)-8s %(message)s',
        level=logging.DEBUG,
        datefmt='%Y-%m-%d %H:%M:%S'
    )
    _ = MqttHandler("127.0.0.1", ipPort=1883, warnings=None)
    while(1):
        pass


if __name__ == '__main__':
    main()
