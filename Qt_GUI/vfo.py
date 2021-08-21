from NetworkDevices.transverter import Transverter
import logging
from warningHandler import WarningHandler
from mqttHandler import MqttHandler
from networkHandler import NetworkHandler
from usefulFunctions import readable_freq
from math import log10
import json
import modeSelector
import freqWindow
from PySide2.QtWidgets import QLabel, QPushButton, QWidget
from PySide2.QtCore import Qt
from PySide2.QtGui import QIcon


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
        name: str,
        mqtt: MqttHandler,
        networkHandler: NetworkHandler,
        warnings: WarningHandler,
        rxButton: QPushButton,
        txButton: QPushButton,
        fcLabel: QLabel,
        bwLabel: QLabel,
        modeButton: QPushButton,
        freqButton: QPushButton
    ):
        self.name = name
        self.mqtt = mqtt
        self.networkHandler = networkHandler
        self.warnings = warnings
        self.rxButton = rxButton
        self.txButton = txButton
        self.fcLabel = fcLabel,
        self.bwLabel = bwLabel
        self.modeButton = modeButton
        self.freqButton = freqButton
        self.transverter = None

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
        ui.button_backspace.clicked.connect(lambda: self.handle_keypress(-1))
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

        self.rxEnabled = False
        self.txEnabled = False

        self.enableRx(False)
        self.enableTx(False)

        # Can connect toggle RX to button
        # TX has to be handled at higher level as there must be <= 1 TX VFOs
        self.rxButton.clicked.connect(self.toggleRx)

        self.freqButton.setText("Click to select freq")

    def enableRx(self, enabled: bool) -> None:
        self.rxEnabled = enabled
        if self.rxEnabled:
            self.rxButton.setIcon(QIcon('resources/img/icon_rx_enabled.png'))
        else:
            self.rxButton.setIcon(QIcon('resources/img/icon_rx_disabled.png'))

    def toggleRx(self):
        """ Toggles whether RX is enabled """
        self.enableRx(not self.rxEnabled)

    def enableTx(self, enabled: bool) -> None:
        self.txEnabled = enabled
        if self.txEnabled:
            self.txButton.setIcon(QIcon('resources/img/icon_tx_enabled.png'))
        else:
            self.txButton.setIcon(QIcon('resources/img/icon_tx_disabled.png'))

    def toggleTx(self):
        """ Toggles whether TX is enabled """
        self.enableTx(not self.txEnabled)

    def handle_keypress(self, key):
        constants = {
            "G": 1e9,
            "M": 1e6,
            "k": 1e3,
            "x": 1
        }
        if key in ["G", "M", "k", "x"]:
            freq = float(self.enteredFreq) * constants[key]
            if self.set_freq(freq):
                # Successfully set frequency
                self.freqWindow.hide()
        elif key == -1:
            self.enteredFreq = self.enteredFreq[:-1]
            self.enteredFreqLabel.setText(self.enteredFreq)
        else:
            self.enteredFreq += str(key)
            self.enteredFreqLabel.setText(self.enteredFreq)

    def open_freq_window(self):
        self.enteredFreq = ""
        self.enteredFreqLabel.setText(self.enteredFreq)
        self.freqWindow.show()

    def set_freq(self, freq) -> bool:
        """ Attempts to set VFO to frequency. Returns True if it succeeds """
        if not self.transverter or \
                freq < self.transverter.minFreq or \
                self.transverter > self.transverter.maxFreq:
            # Current transverter is unsuitable or we don't have one
            if not self.get_suitable_transverter(freq):
                # Can't find a suitable one
                return False

        # We now have a suitable transverter
        self.publish_freq(freq)
        logging.info(
            f"VFO {self.name} set to {readable_freq(freq)}"
        )
        return True

    def get_suitable_transverter(self, freq) -> None:
        """
        Attempts to find a transverter that can operate at a frequency and
        requests control of that transverter. Returns True if succeeds
        """
        # Have to find a suitable transverter
        candidates = self.networkHandler.get_supported_transverters(freq)
        if not candidates:
            return False
        elif len(candidates) == 1:
            transverter = candidates[0]
            if transverter.controller:
                # @TODO How to behave if transverter is already controlled
                raise NotImplementedError
            else:
                if self.request_transverter_control(transverter):
                    return True
                else:
                    # Request failed
                    return False  # @TODO
        else:
            # TODO decide between multiple possibilities
            raise NotImplementedError

    def request_transverter_control(self, transverter: Transverter) -> bool:
        """ Requests control of a specific transverter """
        if self.transverter:
            self.surrender_transverter_control()

        logging.info('Attempting to take control of transverter "{}"'.format(
            transverter.name
        ))
        """
        self.mqtt.register_callback(
            "{}/status".format(transverter.sdrMac),

        )
        """  # @ TODO
        return True

    def surrender_transverter_control(self):
        """ Stops this VFO being the controller of a transverter """
        logging.info("Surrendering control of transverter {}".format(
            self.transverter.name
        ))
        raise NotImplementedError  # @TODO


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
        if self.transverter:
            self.publish_freq(self.publishedFreq + self._stepSize)

    def decrement(self):
        if self.transverter:
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
