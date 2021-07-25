# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'freqWindow.ui'
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
        main.resize(960, 540)
        self.verticalLayout = QVBoxLayout(main)
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.label_enteredFreq = QLabel(main)
        self.label_enteredFreq.setObjectName(u"label_enteredFreq")
        sizePolicy = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.label_enteredFreq.sizePolicy().hasHeightForWidth())
        self.label_enteredFreq.setSizePolicy(sizePolicy)
        self.label_enteredFreq.setMinimumSize(QSize(0, 50))
        font = QFont()
        font.setFamily(u"Waree")
        font.setPointSize(48)
        font.setBold(True)
        font.setWeight(75)
        self.label_enteredFreq.setFont(font)
        self.label_enteredFreq.setStyleSheet(u"background-color: transparent;\n"
"border: 1px solid transparent;\n"
"text-align: right;")
        self.label_enteredFreq.setAlignment(Qt.AlignRight|Qt.AlignTrailing|Qt.AlignVCenter)

        self.verticalLayout.addWidget(self.label_enteredFreq)

        self.gridLayout = QGridLayout()
        self.gridLayout.setObjectName(u"gridLayout")
        self.button_4 = QPushButton(main)
        self.button_4.setObjectName(u"button_4")
        sizePolicy1 = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.button_4.sizePolicy().hasHeightForWidth())
        self.button_4.setSizePolicy(sizePolicy1)
        font1 = QFont()
        font1.setFamily(u"Waree")
        font1.setPointSize(32)
        font1.setBold(True)
        font1.setWeight(75)
        self.button_4.setFont(font1)

        self.gridLayout.addWidget(self.button_4, 2, 0, 1, 1)

        self.button_5 = QPushButton(main)
        self.button_5.setObjectName(u"button_5")
        sizePolicy1.setHeightForWidth(self.button_5.sizePolicy().hasHeightForWidth())
        self.button_5.setSizePolicy(sizePolicy1)
        self.button_5.setFont(font1)

        self.gridLayout.addWidget(self.button_5, 2, 1, 1, 1)

        self.button_2 = QPushButton(main)
        self.button_2.setObjectName(u"button_2")
        sizePolicy1.setHeightForWidth(self.button_2.sizePolicy().hasHeightForWidth())
        self.button_2.setSizePolicy(sizePolicy1)
        self.button_2.setFont(font1)

        self.gridLayout.addWidget(self.button_2, 3, 1, 1, 1)

        self.button_8 = QPushButton(main)
        self.button_8.setObjectName(u"button_8")
        sizePolicy1.setHeightForWidth(self.button_8.sizePolicy().hasHeightForWidth())
        self.button_8.setSizePolicy(sizePolicy1)
        self.button_8.setFont(font1)

        self.gridLayout.addWidget(self.button_8, 1, 1, 1, 1)

        self.button_0 = QPushButton(main)
        self.button_0.setObjectName(u"button_0")
        sizePolicy1.setHeightForWidth(self.button_0.sizePolicy().hasHeightForWidth())
        self.button_0.setSizePolicy(sizePolicy1)
        self.button_0.setFont(font1)

        self.gridLayout.addWidget(self.button_0, 4, 0, 1, 1)

        self.button_7 = QPushButton(main)
        self.button_7.setObjectName(u"button_7")
        sizePolicy1.setHeightForWidth(self.button_7.sizePolicy().hasHeightForWidth())
        self.button_7.setSizePolicy(sizePolicy1)
        self.button_7.setFont(font1)

        self.gridLayout.addWidget(self.button_7, 1, 0, 1, 1)

        self.button_3 = QPushButton(main)
        self.button_3.setObjectName(u"button_3")
        sizePolicy1.setHeightForWidth(self.button_3.sizePolicy().hasHeightForWidth())
        self.button_3.setSizePolicy(sizePolicy1)
        self.button_3.setFont(font1)

        self.gridLayout.addWidget(self.button_3, 3, 2, 1, 1)

        self.button_G = QPushButton(main)
        self.button_G.setObjectName(u"button_G")
        sizePolicy1.setHeightForWidth(self.button_G.sizePolicy().hasHeightForWidth())
        self.button_G.setSizePolicy(sizePolicy1)
        self.button_G.setFont(font1)

        self.gridLayout.addWidget(self.button_G, 1, 3, 1, 1)

        self.button_dp = QPushButton(main)
        self.button_dp.setObjectName(u"button_dp")
        sizePolicy1.setHeightForWidth(self.button_dp.sizePolicy().hasHeightForWidth())
        self.button_dp.setSizePolicy(sizePolicy1)
        self.button_dp.setFont(font1)

        self.gridLayout.addWidget(self.button_dp, 4, 1, 1, 1)

        self.button_minus = QPushButton(main)
        self.button_minus.setObjectName(u"button_minus")
        sizePolicy1.setHeightForWidth(self.button_minus.sizePolicy().hasHeightForWidth())
        self.button_minus.setSizePolicy(sizePolicy1)
        self.button_minus.setFont(font1)

        self.gridLayout.addWidget(self.button_minus, 4, 2, 1, 1)

        self.button_6 = QPushButton(main)
        self.button_6.setObjectName(u"button_6")
        sizePolicy1.setHeightForWidth(self.button_6.sizePolicy().hasHeightForWidth())
        self.button_6.setSizePolicy(sizePolicy1)
        self.button_6.setFont(font1)

        self.gridLayout.addWidget(self.button_6, 2, 2, 1, 1)

        self.button_M = QPushButton(main)
        self.button_M.setObjectName(u"button_M")
        sizePolicy1.setHeightForWidth(self.button_M.sizePolicy().hasHeightForWidth())
        self.button_M.setSizePolicy(sizePolicy1)
        self.button_M.setFont(font1)

        self.gridLayout.addWidget(self.button_M, 2, 3, 1, 1)

        self.button_9 = QPushButton(main)
        self.button_9.setObjectName(u"button_9")
        sizePolicy1.setHeightForWidth(self.button_9.sizePolicy().hasHeightForWidth())
        self.button_9.setSizePolicy(sizePolicy1)
        self.button_9.setFont(font1)

        self.gridLayout.addWidget(self.button_9, 1, 2, 1, 1)

        self.button_1 = QPushButton(main)
        self.button_1.setObjectName(u"button_1")
        sizePolicy1.setHeightForWidth(self.button_1.sizePolicy().hasHeightForWidth())
        self.button_1.setSizePolicy(sizePolicy1)
        self.button_1.setFont(font1)

        self.gridLayout.addWidget(self.button_1, 3, 0, 1, 1)

        self.button_k = QPushButton(main)
        self.button_k.setObjectName(u"button_k")
        sizePolicy1.setHeightForWidth(self.button_k.sizePolicy().hasHeightForWidth())
        self.button_k.setSizePolicy(sizePolicy1)
        self.button_k.setFont(font1)

        self.gridLayout.addWidget(self.button_k, 3, 3, 1, 1)

        self.button_x = QPushButton(main)
        self.button_x.setObjectName(u"button_x")
        sizePolicy1.setHeightForWidth(self.button_x.sizePolicy().hasHeightForWidth())
        self.button_x.setSizePolicy(sizePolicy1)
        self.button_x.setFont(font1)

        self.gridLayout.addWidget(self.button_x, 4, 3, 1, 1)


        self.verticalLayout.addLayout(self.gridLayout)


        self.retranslateUi(main)

        QMetaObject.connectSlotsByName(main)
    # setupUi

    def retranslateUi(self, main):
        main.setWindowTitle(QCoreApplication.translate("main", u"Form", None))
        self.label_enteredFreq.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.button_4.setText(QCoreApplication.translate("main", u"4", None))
        self.button_5.setText(QCoreApplication.translate("main", u"5", None))
        self.button_2.setText(QCoreApplication.translate("main", u"2", None))
        self.button_8.setText(QCoreApplication.translate("main", u"8", None))
        self.button_0.setText(QCoreApplication.translate("main", u"0", None))
        self.button_7.setText(QCoreApplication.translate("main", u"7", None))
        self.button_3.setText(QCoreApplication.translate("main", u"3", None))
        self.button_G.setText(QCoreApplication.translate("main", u"G", None))
        self.button_dp.setText(QCoreApplication.translate("main", u".", None))
        self.button_minus.setText(QCoreApplication.translate("main", u"-", None))
        self.button_6.setText(QCoreApplication.translate("main", u"6", None))
        self.button_M.setText(QCoreApplication.translate("main", u"M", None))
        self.button_9.setText(QCoreApplication.translate("main", u"9", None))
        self.button_1.setText(QCoreApplication.translate("main", u"1", None))
        self.button_k.setText(QCoreApplication.translate("main", u"k", None))
        self.button_x.setText(QCoreApplication.translate("main", u"x1", None))
    # retranslateUi

