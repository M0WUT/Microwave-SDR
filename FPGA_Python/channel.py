import logging
from mqttHandler import MqttHandler
from warningHandler import WarningHandler
from statusHandler import StatusRegs
from usefulFunctions import readable_freq, get_mac
import json
from typing import List
from cardHandler import CardHandler, RS485Packet
from config_user import NAME


class ChannelPrototype:
    def __init__(
        self, name: str, adcClk: int = 80e6, supportsRx: bool = True,
        supportsTx: bool = False, supportsDuplex: bool = False
    ):
        self.name = name
        self.adcClk = adcClk
        self.supportsRx = supportsRx
        self.supportsTx = supportsTx
        self.supportsDuplex = supportsDuplex


class Channel():

    LSB = 0
    USB = 1
    CW = 2
    TONE = 3

    def __init__(
        self, name, mqtt, statusregs, warnings: WarningHandler,
        cards: CardHandler, mode="LSB", freq=28000000, adcClk=80e6,
        supportsRx=True, supportsTx=False, supportsDuplex=False
    ):
        self.name = name
        self.mqtt = mqtt
        self.statusregs = statusregs
        self.warnings = warnings
        self.cards = cards
        self.supportedModes = {
            "LSB": self.LSB,
            "USB": self.USB,
            "CW": self.CW,
            "Tone": self.TONE
        }
        self.offset = 0
        self.adcClk = adcClk
        self.setTopic = "/{}/channel{}/set".format(get_mac(), self.name)
        self.broadcastTopic = "/{}/channel{}".format(get_mac(), self.name)
        self.set_freq(freq, update=False)
        self.set_mode(mode)
        self.supportsRx = supportsRx
        self.supportsTx = supportsTx
        self.supportsDuplex = supportsDuplex
        if supportsDuplex:
            assert supportsRx and supportsTx
        self.controllerMac = None
        self.controllerName = None
        self.vfo = None
        self.cardAddress = None

        self.mqtt.register_callback(
            self.setTopic,
            self.handle_command
        )

    def set_mode(self, mode):
        if mode == "USB":
            self.set_offset(-1500)
        elif mode == "LSB":
            self.set_offset(1500)
        elif mode == "CW":
            self.set_offset(0)
        elif mode == "Tone":
            self.set_offset(0)
        else:
            raise NotImplementedError

        self.statusregs.write(
            StatusRegs.RXMODE, self.supportedModes[mode] << 8
        )
        self.mode = mode
        self.set_freq(self.freq)  # Need to update freq as offset can change
        self.publish_info()
        logging.debug(
            "Channel {} set to {}".format(
                self.name, mode
            )
        )

    def set_freq(self, freq, update=True):
        # @TODO Validate frequency
        self.freq = int(freq)
        freqString = str(self.freq / 10 if self.freq >= 10e9 else self.freq)
        self.statusregs.write(StatusRegs.DISPFREQ, freqString)
        self.statusregs.write(
            StatusRegs.DISPMODE, 3 if self.freq >= 10e9 else 2
        )
        x = round((freq - self.offset) * 2 ** 32 / self.adcClk)
        self.statusregs.write(StatusRegs.FFTACC, x)
        if update:
            self.publish_info()
        logging.debug(
            "Channel {} set to {}".format(
                self.name, readable_freq(self.freq)
            )
        )

    def set_offset(self, offset):
        x = round(abs(offset) * 2 ** 32 / self.adcClk)
        self.statusregs.write(StatusRegs.PHACC1, x)
        self.offset = offset

    def handle_command(self, msg):
        try:
            self.set_freq(msg['freq'])
        except KeyError:
            pass

        try:
            self.set_mode(msg['mode'])
        except KeyError:
            pass

    def publish_info(self):
        x = {
            "freq": self.freq,
            "mode": self.mode
        }

        self.mqtt.publish(
            self.broadcastTopic,
            json.dumps(x)
        )

    def get_discovery_json(self):
        return({
            "name": self.name,
            "supportsRx": self.supportsRx,
            "supportsTx": self.supportsTx,
            "supportsDuplex": self.supportsDuplex
        })

    def get_status_json(self):
        return({
            "name": self.name,
            "errors": [],  # @TODO
            "warnings": [],
            "cardAddress": self.cardAddress,
            "state": "idle",  # @TODO
            "controllerMac": self.controllerMac,
            "vfo": self.vfo,
            "controllerName": self.controllerName
        })

    def shutdown(self):
        pass  # @TODO

    def request_card_control(self, cardAddress: int) -> bool:
        """ Attempts to take control of a card"""
        if cardAddress > self.cards.numSlots:
            self.warnings.add_warning(
                NAME, "MQTT",
                "Attempted to control card in non existent slot: {}".format(
                    cardAddress
                )
            )
            return False

        # Check card isn't already in use
        currentChannel = self.cards.get_status_info(cardAddress)["channel"]
        if currentChannel:
            self.warnings.add_warning(
                NAME, "RS485",
                "Attempted to control card that's already in use: {}".format(
                    cardAddress
                )
            )
            return False
        else:
            packet = RS485Packet(
                address=cardAddress,
                command="C",
                payload=json.dumps({
                    "channel": self.name
                })
            )
            response = self.cards.driver.query(packet)
            if response:
                # For this to be valid, first character must be a "C"
                if response[0] != ord("C"):
                    self.warnings.add_warning(
                        NAME + " - Card " + str(cardAddress), "RS485",
                        "Response to control request was not a control message"
                    )
                    return False

            response = json.loads(response[1:].decode('utf-8'))

            result = response["status"] == "success"
            if result:
                self.cardAddress = cardAddress
            else:
                self.warnings.add_warning(
                    NAME + " - Card " + str(cardAddress), "RS485",
                    "Card refused to change connection"
                )

            return result

    def close_card_control(self) -> bool:
        packet = RS485Packet(
            address=self.cardAddress,
            command="C",
            payload=json.dumps({
                "channel": ""
            })
        )
        response = self.cards.driver.query(packet)
        if response:
            # For this to be valid, first character must be a "C"
            if response[0] != ord("C"):
                self.warnings.add_warning(
                    NAME + " - Card " + str(self.cardAddress), "MQTT",
                    "Response to control request was not a control message"
                )
                return False

        response = json.loads(response[1:].decode('utf-8'))
        result = response["status"] == "success"
        if result:
            self.cardAddress = None
            self.set_controller(None, None, None)
        else:
            self.warnings.add_warning(
                NAME + " - Card " + str(self.cardAddress), "RS485",
                "Card refused to change connection"
            )
        return result

    def set_controller(
        self, controllerMac: str, controllerName: str, vfo: str
    ):
        self.controllerMac = controllerMac
        self.controllerName = controllerName
        self.vfo = vfo


class ChannelHandler:
    def __init__(
            self, channels: List[ChannelPrototype], cards: CardHandler,
            mqtt: MqttHandler, warnings: WarningHandler, status: StatusRegs
            ):
        self.cards = cards
        self.mqtt = mqtt
        self.warnings = warnings
        self.status = status
        self.channels = [Channel(
            name=x.name, mqtt=mqtt, statusregs=status, warnings=warnings,
            cards=cards, adcClk=x.adcClk, supportsRx=x.supportsRx,
            supportsTx=x.supportsTx, supportsDuplex=x.supportsDuplex
        ) for x in channels]

    def __enter__(self):
        return self

    def __exit__(self, *args, **kwargs):
        for x in self.channels:
            x.shutdown()

    def get_discovery_info(self) -> str:
        return [x.get_discovery_json() for x in self.channels]

    def get_status_info(self) -> str:
        return [x.get_status_json() for x in self.channels]

    def get_free_channels(self) -> List[Channel]:
        """ Returns a list of available channels """
        return [x for x in self.channels if x.controllerMac is None]

    def find_channel_for_controller(
        self, controllerMac: str, controllerName: str, vfo: str,
        cardAddress: int
    ) -> None:

        response = {
            "address": cardAddress,
            "controllerMac": controllerMac,
            "controllerName": controllerName,
            "vfo": vfo,
            "status": "failed"
        }

        if controllerMac:
            # Attempting to take control of transverter
            try:
                channel = self.get_free_channels()[0]
            except IndexError:
                channel = None

            if channel and channel.request_card_control(cardAddress):
                channel.set_controller(controllerMac, controllerName, vfo)
                response["status"] = "success"
                response["channel"] = channel.name
        else:
            # Attempting to release transverter
            for x in self.channels:
                if x.cardAddress == cardAddress:
                    if x.close_card_control():
                        response["status"] = "success"

        self.mqtt.publish(
            "/{}/requestResponse".format(get_mac()),
            json.dumps(response)
        )
