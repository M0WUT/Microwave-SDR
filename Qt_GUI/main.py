# This Python file uses the following encoding: utf-8
import sys
import os
import logging

from PySide2.QtGui import QFont
import mainwindow
from infohandler import InfoHandler
from mqttHandler import MqttHandler
from vfo import Vfo
from config_developer import \
    TAB_HOME, TAB_INFO, TAB_NETWORK, TAB_SETTINGS, TAB_WARNINGS
from config_user import MQTT_ADDRESS, MQTT_PORT
from time import sleep


from warningHandler import WarningHandler
from networkHandler import NetworkHandler

from PySide2.QtWidgets import QApplication, QWidget
from PySide2.QtCore import QFile, QIODevice, QTextStream, Signal


class main(QWidget):
    def __init__(self, app: QApplication):
        super().__init__()

        logging.basicConfig(
            format='%(asctime)s %(levelname)-8s %(message)s',
            level=logging.DEBUG,
            datefmt='%Y-%m-%d %H:%M:%S'
        )
        logging.info("Application started")

        # Generic setup stuff
        self.app = app
        # Load Dark mode because it's 2021
        styleStream = QFile(
            os.path.join(
                os.path.dirname(__file__), 'resources/qdarkstyle/style.qss'
            )
        )
        styleStream.open(QIODevice.ReadOnly)
        self.ensurePolished()
        self.app.setStyleSheet(QTextStream(styleStream).readAll())
        self.ui = mainwindow.Ui_main()
        self.ui.setupUi(self)

        # Static signal connections
        self.ui.button_qt.clicked.connect(self.app.aboutQt)

        # Make list of always visible buttons to pass to everything
        self.buttons = [
            self.ui.button_rhs_0,
            self.ui.button_rhs_1,
            self.ui.button_rhs_2,
            self.ui.button_rhs_3,
            self.ui.button_rhs_4,
            self.ui.button_rhs_5
        ]

        # Warning Handler
        self.warnings = WarningHandler(
            self.ui.tab_widget,
            self.ui.table_warnings,
            self.buttons
        )

        # MQTT Stuff
        with MqttHandler(
                    MQTT_ADDRESS, MQTT_PORT, self.warnings
                ) as self.mqtt, NetworkHandler(
                    self.ui.tabWidget_network, self.mqtt,
                    self.warnings, self.buttons
                ) as self.network:
            self.ui.label_mqttAddr.setText(MQTT_ADDRESS)
            self.ui.label_mqttPort.setText(str(MQTT_PORT))

            # Info / Status Handler
            self.info = InfoHandler(self.ui, self.warnings)

            # Add callback for when tab is changed
            self.ui.tab_widget.currentChanged.connect(self.tabChangeDespatcher)

            # VFO Declaration
            self.vfoA = Vfo(
                "A",
                self.mqtt,
                self.network,
                self.ui.button_A_rx,
                self.ui.button_A_tx,
                self.ui.label_A_fc,
                self.ui.label_A_bw,
                self.ui.button_A_mode,
                self.ui.button_A_freq
            )

            # Doesn't count as change on startup so poke to ensure tab gets updated
            self.tabChangeDespatcher(self.ui.tab_widget.currentIndex())

            self.showFullScreen()
            self.app.exec_()

    def keyPressEvent(self, event):
        if event.key() != 16777248:  # Shift key
            logging.debug(f"Key {event.key()} ({event.text()}) pressed")

            if (event.text() == 'a'):
                self.vfoA.increment()
            elif (event.text() == 'A'):
                self.vfoA.decrement()
            elif (event.text() == 'G'):
                self.app.exit()  # DEBUG

    def tabChangeDespatcher(self, tabId):
        logging.debug(f"Changing tab to {tabId}")
        for x in self.buttons:
            x.setText("")
            x.setEnabled(False)
            x.setCheckable(False)
            try:
                x.clicked.disconnect()
            except RuntimeError:
                pass
            try:
                x.toggled.disconnect()
            except RuntimeError:
                pass

        if(tabId == TAB_HOME):
            pass  # @TODO
        elif(tabId == TAB_SETTINGS):
            pass  # @TODO
        elif(tabId == TAB_INFO):
            self.info.tab_enabled()
        elif(tabId == TAB_WARNINGS):
            self.warnings.tab_enabled()
        elif(tabId == TAB_NETWORK):
            self.network.tab_enabled()
        else:
            raise NotImplementedError


if __name__ == "__main__":
    app = QApplication()
    x = main(app)
