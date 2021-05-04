# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'modeSelector.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_main(object):
    def setupUi(self, main):
        if not main.objectName():
            main.setObjectName(u"main")
        main.resize(640, 480)
        sizePolicy = QSizePolicy(QSizePolicy.Maximum, QSizePolicy.MinimumExpanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(main.sizePolicy().hasHeightForWidth())
        main.setSizePolicy(sizePolicy)
        main.setStyleSheet(u"")
        self.horizontalLayout = QHBoxLayout(main)
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.gridLayout = QGridLayout()
        self.gridLayout.setObjectName(u"gridLayout")
        self.button_usb = QPushButton(main)
        self.button_usb.setObjectName(u"button_usb")
        sizePolicy1 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Preferred)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.button_usb.sizePolicy().hasHeightForWidth())
        self.button_usb.setSizePolicy(sizePolicy1)
        font = QFont()
        font.setFamily(u"Waree")
        font.setPointSize(32)
        font.setBold(True)
        font.setWeight(75)
        self.button_usb.setFont(font)

        self.gridLayout.addWidget(self.button_usb, 0, 0, 1, 1)

        self.button_lsb = QPushButton(main)
        self.button_lsb.setObjectName(u"button_lsb")
        sizePolicy1.setHeightForWidth(self.button_lsb.sizePolicy().hasHeightForWidth())
        self.button_lsb.setSizePolicy(sizePolicy1)
        self.button_lsb.setFont(font)

        self.gridLayout.addWidget(self.button_lsb, 0, 1, 1, 1)

        self.button_cw = QPushButton(main)
        self.button_cw.setObjectName(u"button_cw")
        sizePolicy1.setHeightForWidth(self.button_cw.sizePolicy().hasHeightForWidth())
        self.button_cw.setSizePolicy(sizePolicy1)
        self.button_cw.setFont(font)

        self.gridLayout.addWidget(self.button_cw, 1, 0, 1, 1)

        self.button_tone = QPushButton(main)
        self.button_tone.setObjectName(u"button_tone")
        sizePolicy1.setHeightForWidth(self.button_tone.sizePolicy().hasHeightForWidth())
        self.button_tone.setSizePolicy(sizePolicy1)
        self.button_tone.setFont(font)

        self.gridLayout.addWidget(self.button_tone, 1, 1, 1, 1)


        self.horizontalLayout.addLayout(self.gridLayout)


        self.retranslateUi(main)

        QMetaObject.connectSlotsByName(main)
    # setupUi

    def retranslateUi(self, main):
        main.setWindowTitle(QCoreApplication.translate("main", u"main", None))
        self.button_usb.setText(QCoreApplication.translate("main", u"USB", None))
        self.button_lsb.setText(QCoreApplication.translate("main", u"LSB", None))
        self.button_cw.setText(QCoreApplication.translate("main", u"CW", None))
        self.button_tone.setText(QCoreApplication.translate("main", u"Tone", None))
    # retranslateUi

