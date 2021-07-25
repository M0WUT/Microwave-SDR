import logging
from statusHandler import StatusRegs
from usefulFunctions import readable_freq, get_mac
import json
from typing import List


class Channel():
    LSB = 0
    USB = 1
    CW = 2
    TONE = 3

    def __init__(
        self, name, mqtt, statusregs, warnings, mode="LSB",
        freq=28000000, adcClk=80e6, supportsRx=True, supportsTx=False,
        supportsDuplex=False
    ):
        self.name = name
        self.mqtt = mqtt
        self.statusregs = statusregs
        self.warnings = warnings
        self.cardAddress = None
        self.supportedModes = {
            "LSB": self.LSB,
            "USB": self.USB,
            "CW": self.CW,
            "Tone": self.TONE
        }
        self.offset = 0
        self.adcClk = adcClk
        self.setFreq(freq, update=False)
        self.setMode(mode)
        self.supportsRx = supportsRx
        self.supportsTx = supportsTx
        self.supportsDuplex = supportsDuplex

        self.mqtt.register_callback(
            "/{}/channel{}/set".format(get_mac(), self.name),
            self.handle_command
        )

    def setMode(self, mode):
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
        self.setFreq(self.freq)  # Need to update freq as offset can change
        self.publish_info()
        logging.debug(
            "Channel {} set to {}".format(
                self.name, mode
            )
        )

    def setFreq(self, freq, update=True):
        # @TODO Validate frequency
        self.freq = int(freq)
        freqString = str(freq / 10 if freq >= 10e9 else freq)
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
        x = json.loads(msg.payload.decode('utf-8'))
        try:
            self.setFreq(x['freq'])
        except KeyError:
            pass

        try:
            self.setMode(x['mode'])
        except KeyError:
            pass

    def publish_info(self):
        x = {
            "freq": self.freq,
            "mode": self.mode
        }

        self.mqtt.publish(
            "/{}/channel{}".format(
                get_mac(),
                self.name
            ),
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
            "state": "idle"  # @TODO
        })


class ChannelHandler:
    def __init__(self, channels: List[Channel]):
        self.channels = channels

    def get_discovery_info(self) -> str:
        return [x.get_discovery_json() for x in self.channels]

    def get_status_info(self) -> str:
        return [x.get_status_json() for x in self.channels]
