# This Python file uses the following encoding: utf-8
import logging
import paho.mqtt.client as mqtt
import socket
from PySide2.QtCore import Signal, QObject
from config_user import NAME
import json
from json.decoder import JSONDecodeError
from usefulFunctions import get_mac


class MqttHandler(QObject):

    # Signal to pass from RX Thread to main thread for message handling
    messageReceived = Signal(mqtt.MQTTMessage)

    def __init__(self, ipAddr, ipPort, warnings):
        super().__init__()
        self.client = mqtt.Client()
        self.client.on_connect = self.on_connect
        self.client.on_message = self.on_message
        self.warnings = warnings
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
            self.messageReceived.connect(self.message_handler)

        except (socket.timeout, ConnectionRefusedError):
            self.warnings.add_error(
                NAME, "MQTT",
                f"Broker not found at at {self.ipAddr}:{self.ipPort}",
                broadcast=False
            )

    def on_connect(self, client, userdata, flags, rc):
        if(rc == 0):
            logging.info(
                f"Successfully connected to MQTT Broker at "
                f"{self.ipAddr}:{self.ipPort}"
            )
            self.warnings.register_mqtt(self)
        else:
            self.warnings.add_error(
                NAME, "MQTT", "Failed to connect to broker at "
                f"{self.ipAddr}:{self.ipPort}",
                broadcast=False
            )

    def on_message(self, client, userdata, msg):
        # This is called in a thread that isn't the main one to prevent MQTT
        # RX from blocking. To not upset the GUI, emit a signal and then
        # self.message_handler will actually deal with the message in
        # the main thread
        self.messageReceived.emit(msg)

    def message_handler(self, msg):
        message = msg.payload.decode('utf-8')
        logging.debug(
            f"Received MQTT: [{msg.topic}] {message}"
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
                NAME, "MQTT",
                f"No handler registered for subscribed topic: {msg.topic}",
                broadcast=False
            )

    def publish(self, topic, payload, *args, **kwargs):
        logging.debug(f"Publishing MQTT: [{topic}] {payload}")
        self.client.publish(topic, payload, *args, **kwargs)

    def register_callback(self, topic, func):
        assert topic not in self.callbacks.keys(), \
            f"Topic: {topic} already has a callback function registered"
        self.callbacks[topic] = func

        error, _ = self.client.subscribe(topic)
        if (error != mqtt.MQTT_ERR_SUCCESS):
            self.warnings.add_error(
                NAME, "MQTT",
                f"Failed to subscribe to topic {topic}",
                broadcast=False
            )

        logging.info(
            f"Subscribed to MQTT topic: {topic}"
        )

    def __enter__(self):
        return self

    def __exit__(self, *args, **kwargs):
        self.client.loop_stop()
        self.client.disconnect()
        logging.info(
            f"Disconnected from MQTT Server {self.ipAddr}:{self.ipPort}"
        )
