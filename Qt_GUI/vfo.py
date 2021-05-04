import logging
from usefulFunctions import readable_freq
from math import log10
import json
import modeSelector
from PySide2.QtWidgets import QWidget
from PySide2.QtCore import QFile, QIODevice, QTextStream, Qt
import os


class Vfo(object):
    def __init__(
        self,
        name,
        mqtt,
        rxButton,
        txButton,
        fcLabel,
        bwLabel,
        modeButton,
        freqButton
    ):
        self.name = name
        self.mqtt = mqtt
        self.rxButton = rxButton
        self.txButton = txButton
        self.fcLabel = fcLabel,
        self.bwLabel = bwLabel
        self.modeButton = modeButton
        self.freqButton = freqButton

        self._stepSize = 10000

        # Popup for mode selection
        self.modeWindow = QWidget()
        self._ui = modeSelector.Ui_main()
        self._ui.setupUi(self.modeWindow)
        # Load Dark mode because it's 2021
        styleStream = QFile(
            os.path.join(
                os.path.dirname(__file__), 'resources/qdarkstyle/style.qss'
            )
        )
        styleStream.open(QIODevice.ReadOnly)
        self.modeWindow.setStyleSheet(QTextStream(styleStream).readAll())
        self.modeWindow.setWindowFlags(Qt.FramelessWindowHint)

        self.modeButton.clicked.connect(lambda: self.modeWindow.show())
        self._ui.button_cw.clicked.connect(lambda: self.publish_mode("CW"))
        self._ui.button_usb.clicked.connect(lambda: self.publish_mode("USB"))
        self._ui.button_lsb.clicked.connect(lambda: self.publish_mode("LSB"))
        self._ui.button_tone.clicked.connect(lambda: self.publish_mode("Tone"))

        self.freq = None
        self.publishedFreq = None
        self.mode = None
        self.mqtt.register_callback("/00:0A:35:00:1E:53/vfoA", self.rx_status)
        self.publish_freq(28000000)
        self.publish_mode("USB")

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
