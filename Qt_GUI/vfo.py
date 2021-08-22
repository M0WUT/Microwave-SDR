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
from PySide2.QtWidgets import QLabel, QPushButton, QSizePolicy, \
    QWidget, QHBoxLayout
from PySide2.QtCore import Qt
from PySide2.QtGui import QIcon
from threading import Lock, Event
from config_user import NAME
from usefulFunctions import get_mac


# Credit to K.Muller from
# https://stackoverflow.com/questions/2990060/qt-qpushbutton-text-formatting
class RichTextPushButton(QPushButton):
    def __init__(self, parent=None, text=None):
        if parent is not None:
            super().__init__(parent)
        else:
            super().__init__()
        self.__lbl = QLabel(self)
        if text is not None:
            self.__lbl.setText(text)
        self.__lyt = QHBoxLayout()
        self.__lyt.setContentsMargins(0, 0, 0, 0)
        self.__lyt.setSpacing(0)
        self.setLayout(self.__lyt)
        self.__lbl.setAttribute(Qt.WA_TranslucentBackground)
        self.__lbl.setAttribute(Qt.WA_TransparentForMouseEvents)
        self.__lbl.setSizePolicy(
            QSizePolicy.Expanding,
            QSizePolicy.Expanding,
        )
        self.__lbl.setTextFormat(Qt.RichText)
        self.__lyt.addWidget(self.__lbl)

    def setText(self, text):
        self.__lbl.setText(text)
        self.updateGeometry()

    def sizeHint(self):
        self.__lbl.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Minimum)
        self.__lbl.setAlignment(Qt.AlignRight | Qt.AlignVCenter)
        s = QPushButton.sizeHint(self)
        w = self.__lbl.sizeHint()
        s.setWidth(720)
        s.setHeight(w.height())
        return s


class Vfo():
    mqtt: MqttHandler

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

        self.bwLabel = bwLabel
        self.modeButton = modeButton
        self.modeButton.setStyleSheet(
            self.modeButton.styleSheet() +
            "font: Waree; font-size: 64px; font-weight: bold;"
        )
        self.modeButton.setText("")

        # Replace freq QPushButton with one that supports rich text
        layout = freqButton.parent().layout()
        self.freqButton = RichTextPushButton()

        self.freqButton.setStyleSheet(
            "background-color: transparent;\nborder: 1px solid transparent;"
            "font: Waree; font-size: 80px; font-weight: bold;"
        )

        layout.replaceWidget(freqButton, self.freqButton)
        freqButton.setParent(None)  # Delete old button
        self.freqButton.setText("Click to select freq")

        self.transverter = None
        self.transverterMutex = Lock()
        self.transverterResponded = Event()
        self.sdrChannel = None
        self.mqttTopic = None
        self.transverterMutex.acquire()

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

        self.freqButton.clicked.connect(self.open_freq_window)

        self.freq = None
        self.enteredFreqString = ""
        self.publishedFreq = None
        self.mode = None
        self.channel = None

        self.rxEnabled = False
        self.txEnabled = False

        self.enable_rx(False)
        self.enable_tx(False)

        # Can connect toggle RX to button
        # TX has to be handled at higher level as there must be <= 1 TX VFOs
        self.rxButton.clicked.connect(self.toggle_rx)

    def enable_rx(self, enabled: bool) -> None:
        if not self.transverter and enabled:
            logging.warning(
                f"Cannot enable RX on VFO {self.name}without transverter"
            )
            return
        self.rxEnabled = enabled
        if self.rxEnabled:
            self.rxButton.setIcon(QIcon('resources/img/icon_rx_enabled.png'))
        else:
            self.rxButton.setIcon(QIcon('resources/img/icon_rx_disabled.png'))

    def toggle_rx(self):
        """ Toggles whether RX is enabled """
        if self.transverter:
            self.enable_rx(not self.rxEnabled)

    def enable_tx(self, enabled: bool) -> None:
        if not self.transverter and enabled:
            logging.warning(
                f"Cannot enable TX on VFO {self.name}without transverter"
            )
            return
        self.txEnabled = enabled
        if self.txEnabled:
            self.txButton.setIcon(QIcon('resources/img/icon_tx_enabled.png'))
        else:
            self.txButton.setIcon(QIcon('resources/img/icon_tx_disabled.png'))

    def toggle_tx(self):
        """ Toggles whether TX is enabled """
        if self.transverter:
            self.enable_tx(not self.txEnabled)

    def set_transverter(self, transverter: Transverter) -> None:
        self.transverterMutex.acquire()
        self.transverter = transverter
        logging.info(
            f"VFO {self.name} now controlling transverter"
            " \"{transverter.name}\""
        )
        self.transverterMutex.release()

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
                freq > self.transverter.maxFreq:
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

    def get_suitable_transverter(self, freq) -> bool:
        """
        Attempts to find a transverter that can operate at a frequency and
        requests control of that transverter. Returns True if succeeds
        """
        # Have to find a suitable transverter
        candidates = self.networkHandler.get_supported_transverters(freq)
        if not candidates:
            self.warnings.add_status(
                "No transverter found for {}".format(readable_freq(freq))
            )
            return False
        elif len(candidates) == 1:
            transverter = candidates[0]
            if transverter.channel:
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

        assert self.transverter is None
        assert self.sdrChannel is None

        logging.info('Attempting to take control of transverter "{}"'.format(
            transverter.name
        ))

        self.transverterMutex.release()

        self.mqtt.register_callback(
            "/{}/requestResponse".format(transverter.sdrMac),
            self.process_transverter_control_request_response,
            requiresMainThread=False
        )

        self.transverterResponded.clear()

        try:
            self.mqtt.publish(
                "/{}/requests".format(transverter.sdrMac),
                json.dumps({
                    "address": transverter.address,
                    "controllerName": NAME,
                    "controllerMac": get_mac(),
                    "vfo": self.name
                })
            )
            if not self.transverterResponded.wait(timeout=5):
                # Requested timed out
                self.warnings.add_warning(
                    NAME,
                    "MQTT",
                    f"Timed out waiting for response from {transverter.sdrMac}"
                )
            else:
                # Got here so SDR responded, self.sdrChannel now either
                # contains the channel name if everything was successfuly
                # or None if it failed
                if self.sdrChannel:
                    self.transverter = transverter
                    self.mqttTopic = "/{}/channel{}".format(
                        transverter.sdrMac, self.sdrChannel
                    )
                    self.mqtt.register_callback(
                        self.mqttTopic,
                        self.rx_status
                    )
                else:
                    # SDR responded but refused connection
                    self.warnings.add_warning(
                        NAME,
                        "MQTT",
                        f"Refused transverter control by {transverter.sdrMac}"
                    )

        finally:
            self.mqtt.remove_callback(
                "/{}/requestResponse".format(transverter.sdrMac)
            )
            self.transverterMutex.acquire()

        return bool(self.transverter)

    def process_transverter_control_request_response(self, msg):
        self.transverterMutex.acquire()
        self.transverterResponse = msg
        if(
            msg["status"] == "success" and
            msg["controllerMac"] == get_mac() and
            msg["vfo"] == self.name
        ):
            self.sdrChannel = msg["channel"]

        self.transverterMutex.release()
        self.transverterResponded.set()

    def process_transverter_control_surrender_response(self, msg):
        self.transverterMutex.acquire()
        self.transverterResponse = msg
        if(
            msg["status"] == "success" and
            msg["controllerMac"] is None and
            msg["vfo"] is None
        ):
            self.sdrChannel = None

        self.transverterMutex.release()
        self.transverterResponded.set()

    def surrender_transverter_control(self) -> None:
        """ Stops this VFO being the controller of a transverter """
        logging.info("Surrendering control of transverter {}".format(
            self.transverter.name
        ))

        self.transverterMutex.release()

        self.mqtt.register_callback(
            "/{}/requestResponse".format(self.transverter.sdrMac),
            self.process_transverter_control_surrender_response,
            requiresMainThread=False
        )

        self.transverterResponded.clear()
        sdrMac = self.transverter.sdrMac

        try:
            self.mqtt.publish(
                "/{}/requests".format(sdrMac),
                json.dumps({
                    "address": self.transverter.address,
                    "controllerName": None,
                    "controllerMac": None,
                    "vfo": None
                })
            )
            if not self.transverterResponded.wait(timeout=5):
                # Requested timed out
                self.warnings.add_warning(
                    NAME,
                    "MQTT",
                    f"Timed out waiting for response from {sdrMac}"
                )
            else:
                # Got here so SDR responded, self.sdrChannel now either
                # contains None if everything was successfuly
                # or the old channel name if it failed
                if self.sdrChannel is None:
                    self.mqtt.remove_callback(self.mqttTopic)
                    self.sdrChannel = None
                    self.mqttTopic = None
                    self.transverter = None
                else:
                    # SDR responded but refused connection
                    self.warnings.add_warning(
                        NAME,
                        "MQTT",
                        f"Refused release of transverter control by {sdrMac}"
                    )

        finally:
            self.mqtt.remove_callback(
                "/{}/requestResponse".format(sdrMac)
            )
            self.transverterMutex.acquire()

    def publish_freq(self, freq):

        x = {"freq": freq}

        self.mqtt.publish(
            "{}/set".format(self.mqttTopic),
            json.dumps(x)
        )
        self.publishedFreq = int(freq)

    def publish_mode(self, mode):
        x = {"mode": mode}

        self.mqtt.publish(
            "{}/set".format(self.mqttTopic),
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

        freq = msg['freq']
        mode = msg['mode']
        if(freq != self.freq):
            self.freq = freq

            # Easier to work with strings now
            freq = str(freq)

            prettyFreq = ""

            stepIndex = log10(self._stepSize)

            for i in range(len(freq)):
                if(i == stepIndex):
                    prettyFreq = "<u>" + freq[len(freq) - 1 - i] + "</u>" + prettyFreq
                else:
                    prettyFreq = freq[len(freq) - 1 - i] + prettyFreq

                if((i + 1) % 3 == 0):
                    prettyFreq = "." + prettyFreq

            self.freqButton.setText(prettyFreq.lstrip("."))

            logging.debug(f"VFO {self.name} set to {readable_freq(self.freq)}")

        if mode != self.mode:
            if self.mode is None:
                self.modeButton.clicked.connect(self.modeWindow.show)

            self.mode = mode
            self.modeButton.setText(mode)

            if self.modeWindow.isVisible():
                self.modeWindow.hide()

            logging.debug(f"VFO {self.name} set to {self.mode}")
