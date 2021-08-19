import logging
from usefulFunctions import readable_freq
from math import log10
import json
import modeSelector
import freqWindow
from PySide2.QtWidgets import QWidget
from PySide2.QtCore import Qt


def freq_format(x: int) -> str:
    freqString = str(x)
    newFreqString = ""
    while freqString:
        newFreqString = "." + freqString[-3:] + newFreqString
        freqString = freqString[:-3]

    return newFreqString[1:]  # Remove final decimal point at start


class Vfo():
    def __init__(
        self,
        name,
        mqtt,
        networkHandler,
        rxButton,
        txButton,
        fcLabel,
        bwLabel,
        modeButton,
        freqButton
    ):
        self.name = name
        self.mqtt = mqtt
        self.networkHandler = networkHandler
        self.rxButton = rxButton
        self.txButton = txButton
        self.fcLabel = fcLabel,
        self.bwLabel = bwLabel
        self.modeButton = modeButton
        self.freqButton = freqButton

        self._stepSize = 10000

        # Popup for mode selection
        self.modeWindow = QWidget()
        ui = modeSelector.Ui_main()
        ui.setupUi(self.modeWindow)
        ui.button_cw.clicked.connect(lambda: self.publish_mode("CW"))
        ui.button_usb.clicked.connect(lambda: self.publish_mode("USB"))
        ui.button_lsb.clicked.connect(lambda: self.publish_mode("LSB"))
        ui.button_tone.clicked.connect(lambda: self.publish_mode("Tone"))
        self.modeWindow.setWindowFlags(Qt.FramelessWindowHint | Qt.Popup)

        # Popup for frequency entry
        self.freqWindow = QWidget()
        ui = freqWindow.Ui_main()
        ui.setupUi(self.freqWindow)
        ui.button_0.clicked.connect(lambda: self.handle_keypress(0))
        ui.button_1.clicked.connect(lambda: self.handle_keypress(1))
        ui.button_2.clicked.connect(lambda: self.handle_keypress(2))
        ui.button_3.clicked.connect(lambda: self.handle_keypress(3))
        ui.button_4.clicked.connect(lambda: self.handle_keypress(4))
        ui.button_5.clicked.connect(lambda: self.handle_keypress(5))
        ui.button_6.clicked.connect(lambda: self.handle_keypress(6))
        ui.button_7.clicked.connect(lambda: self.handle_keypress(7))
        ui.button_8.clicked.connect(lambda: self.handle_keypress(8))
        ui.button_9.clicked.connect(lambda: self.handle_keypress(9))
        ui.button_G.clicked.connect(lambda: self.handle_keypress("G"))
        ui.button_M.clicked.connect(lambda: self.handle_keypress("M"))
        ui.button_k.clicked.connect(lambda: self.handle_keypress("k"))
        ui.button_x.clicked.connect(lambda: self.handle_keypress("x"))
        ui.button_dp.clicked.connect(lambda: self.handle_keypress("."))

        self.enteredFreqLabel = ui.label_enteredFreq
        self.freqWindow.setWindowFlags(Qt.FramelessWindowHint | Qt.Popup)

        self.modeButton.clicked.connect(self.modeWindow.show)
        self.freqButton.clicked.connect(self.open_freq_window)

        self.freq = None
        self.enteredFreqString = ""
        self.publishedFreq = None
        self.mode = None
        self.channel = None

        self.freqButton.setText("Click to select freq")

    def handle_keypress(self, key):
        constants = {
            "G": 1e9,
            "M": 1e6,
            "k": 1e3,
            "x": 1
        }
        if key in ["G", "M", "k", "x"]:
            freq = float(self.enteredFreq) * constants[key]
            self.set_freq(freq)
            self.freqWindow.hide()
        else:
            self.enteredFreq += str(key)
            self.enteredFreqLabel.setText(self.enteredFreq)

    def open_freq_window(self):
        self.enteredFreq = ""
        self.enteredFreqLabel.setText(self.enteredFreq)
        self.freqWindow.show()

    def set_freq(self, freq):
        logging.critical(
            self.networkHandler.get_supported_transverters(freq)
        )  # @DEBUG
        # self.publish_freq(freq)
        logging.info(
            f"VFO {self.name} set to {readable_freq(freq)}"
        )

    def publish_freq(self, freq):
        x = {
            "freq": freq
        }

        self.mqtt.publish(
            "/00:0A:35:00:1E:53/vfoA/set",
            json.dumps(x)
        )
        self.publishedFreq = int(freq)

    def publish_mode(self, mode):
        x = {
            "mode": mode
        }

        self.mqtt.publish(
            "/00:0A:35:00:1E:53/vfoA/set",
            json.dumps(x)
        )
        self.modeWindow.hide()

    def increment(self):
        self.publish_freq(self.publishedFreq + self._stepSize)

    def decrement(self):
        self.publish_freq(self.publishedFreq - self._stepSize)

    def rx_status(self, msg):
        x = json.loads(msg.payload.decode('utf-8'))

        freq = str(x['freq'])
        mode = x['mode']
        if(freq != self.freq):

            prettyFreq = ""

            stepIndex = log10(self._stepSize)

            for i in range(len(freq)):
                if(i == stepIndex):
                    prettyFreq = "<u>" + freq[len(freq) - 1 - i] + "</u>" + prettyFreq
                else:
                    prettyFreq = freq[len(freq) - 1 - i] + prettyFreq

                if((i + 1) % 3 == 0):
                    prettyFreq = "." + prettyFreq

            self.freqButton.setText(prettyFreq)
            self.freq = int(freq)
            logging.debug(f"VFO {self.name} set to {readable_freq(self.freq)}")

        if mode != self.mode:

            self.mode = mode
            self.modeButton.setText(mode)

            if self.modeWindow.isVisible():
                self.modeWindow.hide()

            logging.debug(f"VFO {self.name} set to {self.mode}")


if __name__ == '__main__':
    print(freq_format(123456))
