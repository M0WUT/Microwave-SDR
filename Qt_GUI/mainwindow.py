# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'mainwindow.ui'
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
        main.resize(1920, 1080)
        sizePolicy = QSizePolicy(QSizePolicy.Maximum, QSizePolicy.MinimumExpanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(main.sizePolicy().hasHeightForWidth())
        main.setSizePolicy(sizePolicy)
        main.setStyleSheet(u"")
        self.verticalLayout_2 = QVBoxLayout(main)
        self.verticalLayout_2.setObjectName(u"verticalLayout_2")
        self.horizontalLayout_2 = QHBoxLayout()
        self.horizontalLayout_2.setObjectName(u"horizontalLayout_2")
        self.horizontalLayout = QHBoxLayout()
        self.horizontalLayout.setObjectName(u"horizontalLayout")
        self.tab_widget = QTabWidget(main)
        self.tab_widget.setObjectName(u"tab_widget")
        sizePolicy1 = QSizePolicy(QSizePolicy.MinimumExpanding, QSizePolicy.MinimumExpanding)
        sizePolicy1.setHorizontalStretch(0)
        sizePolicy1.setVerticalStretch(0)
        sizePolicy1.setHeightForWidth(self.tab_widget.sizePolicy().hasHeightForWidth())
        self.tab_widget.setSizePolicy(sizePolicy1)
        self.tab_widget.setMinimumSize(QSize(100, 100))
        font = QFont()
        font.setFamily(u"Waree")
        font.setPointSize(32)
        font.setBold(True)
        font.setWeight(75)
        self.tab_widget.setFont(font)
        self.tab_widget.setStyleSheet(u"")
        self.tab_widget.setIconSize(QSize(80, 80))
        self.tab_widget.setUsesScrollButtons(False)
        self.tab_home = QWidget()
        self.tab_home.setObjectName(u"tab_home")
        sizePolicy2 = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        sizePolicy2.setHorizontalStretch(0)
        sizePolicy2.setVerticalStretch(0)
        sizePolicy2.setHeightForWidth(self.tab_home.sizePolicy().hasHeightForWidth())
        self.tab_home.setSizePolicy(sizePolicy2)
        self.verticalLayout_9 = QVBoxLayout(self.tab_home)
        self.verticalLayout_9.setObjectName(u"verticalLayout_9")
        self.gridLayout_5 = QGridLayout()
        self.gridLayout_5.setObjectName(u"gridLayout_5")
        self.line_5 = QFrame(self.tab_home)
        self.line_5.setObjectName(u"line_5")
        self.line_5.setStyleSheet(u"color: #FFFFFF;")
        self.line_5.setFrameShadow(QFrame.Plain)
        self.line_5.setLineWidth(10)
        self.line_5.setFrameShape(QFrame.VLine)

        self.gridLayout_5.addWidget(self.line_5, 3, 1, 1, 1)

        self.line_4 = QFrame(self.tab_home)
        self.line_4.setObjectName(u"line_4")
        self.line_4.setStyleSheet(u"color: #FFFFFF;")
        self.line_4.setFrameShadow(QFrame.Plain)
        self.line_4.setLineWidth(10)
        self.line_4.setFrameShape(QFrame.VLine)

        self.gridLayout_5.addWidget(self.line_4, 2, 1, 1, 1)

        self.widget = QWidget(self.tab_home)
        self.widget.setObjectName(u"widget")
        sizePolicy3 = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Expanding)
        sizePolicy3.setHorizontalStretch(0)
        sizePolicy3.setVerticalStretch(0)
        sizePolicy3.setHeightForWidth(self.widget.sizePolicy().hasHeightForWidth())
        self.widget.setSizePolicy(sizePolicy3)

        self.gridLayout_5.addWidget(self.widget, 2, 0, 1, 1)

        self.widget_3 = QWidget(self.tab_home)
        self.widget_3.setObjectName(u"widget_3")
        sizePolicy3.setHeightForWidth(self.widget_3.sizePolicy().hasHeightForWidth())
        self.widget_3.setSizePolicy(sizePolicy3)

        self.gridLayout_5.addWidget(self.widget_3, 2, 2, 1, 1)

        self.line = QFrame(self.tab_home)
        self.line.setObjectName(u"line")
        self.line.setStyleSheet(u"color: #FFFFFF;")
        self.line.setFrameShadow(QFrame.Plain)
        self.line.setLineWidth(10)
        self.line.setFrameShape(QFrame.VLine)

        self.gridLayout_5.addWidget(self.line, 0, 1, 1, 1)

        self.verticalLayout_8 = QVBoxLayout()
        self.verticalLayout_8.setObjectName(u"verticalLayout_8")
        self.horizontalLayout_5 = QHBoxLayout()
        self.horizontalLayout_5.setObjectName(u"horizontalLayout_5")
        self.button_B_mode = QPushButton(self.tab_home)
        self.button_B_mode.setObjectName(u"button_B_mode")
        self.button_B_mode.setEnabled(True)
        sizePolicy4 = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Minimum)
        sizePolicy4.setHorizontalStretch(0)
        sizePolicy4.setVerticalStretch(0)
        sizePolicy4.setHeightForWidth(self.button_B_mode.sizePolicy().hasHeightForWidth())
        self.button_B_mode.setSizePolicy(sizePolicy4)
        self.button_B_mode.setMinimumSize(QSize(251, 0))

        self.horizontalLayout_5.addWidget(self.button_B_mode)

        self.gridLayout_4 = QGridLayout()
        self.gridLayout_4.setObjectName(u"gridLayout_4")
        self.label_27 = QLabel(self.tab_home)
        self.label_27.setObjectName(u"label_27")
        sizePolicy5 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Minimum)
        sizePolicy5.setHorizontalStretch(0)
        sizePolicy5.setVerticalStretch(0)
        sizePolicy5.setHeightForWidth(self.label_27.sizePolicy().hasHeightForWidth())
        self.label_27.setSizePolicy(sizePolicy5)
        font1 = QFont()
        font1.setFamily(u"Waree")
        font1.setPointSize(24)
        font1.setBold(True)
        font1.setWeight(75)
        self.label_27.setFont(font1)

        self.gridLayout_4.addWidget(self.label_27, 0, 0, 1, 1)

        self.label_B_fc = QLabel(self.tab_home)
        self.label_B_fc.setObjectName(u"label_B_fc")
        sizePolicy6 = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Minimum)
        sizePolicy6.setHorizontalStretch(0)
        sizePolicy6.setVerticalStretch(0)
        sizePolicy6.setHeightForWidth(self.label_B_fc.sizePolicy().hasHeightForWidth())
        self.label_B_fc.setSizePolicy(sizePolicy6)
        font2 = QFont()
        font2.setFamily(u"Waree")
        font2.setPointSize(24)
        font2.setBold(False)
        font2.setWeight(50)
        self.label_B_fc.setFont(font2)

        self.gridLayout_4.addWidget(self.label_B_fc, 0, 1, 1, 1)

        self.label_29 = QLabel(self.tab_home)
        self.label_29.setObjectName(u"label_29")
        sizePolicy6.setHeightForWidth(self.label_29.sizePolicy().hasHeightForWidth())
        self.label_29.setSizePolicy(sizePolicy6)
        self.label_29.setFont(font1)

        self.gridLayout_4.addWidget(self.label_29, 0, 2, 1, 1)

        self.label_30 = QLabel(self.tab_home)
        self.label_30.setObjectName(u"label_30")
        sizePolicy6.setHeightForWidth(self.label_30.sizePolicy().hasHeightForWidth())
        self.label_30.setSizePolicy(sizePolicy6)
        self.label_30.setFont(font1)

        self.gridLayout_4.addWidget(self.label_30, 1, 0, 1, 1)

        self.label_B_bw = QLabel(self.tab_home)
        self.label_B_bw.setObjectName(u"label_B_bw")
        sizePolicy6.setHeightForWidth(self.label_B_bw.sizePolicy().hasHeightForWidth())
        self.label_B_bw.setSizePolicy(sizePolicy6)
        self.label_B_bw.setFont(font2)

        self.gridLayout_4.addWidget(self.label_B_bw, 1, 1, 1, 1)

        self.label_32 = QLabel(self.tab_home)
        self.label_32.setObjectName(u"label_32")
        sizePolicy6.setHeightForWidth(self.label_32.sizePolicy().hasHeightForWidth())
        self.label_32.setSizePolicy(sizePolicy6)
        self.label_32.setFont(font1)

        self.gridLayout_4.addWidget(self.label_32, 1, 2, 1, 1)


        self.horizontalLayout_5.addLayout(self.gridLayout_4)

        self.button_B_rx = QPushButton(self.tab_home)
        self.button_B_rx.setObjectName(u"button_B_rx")
        self.button_B_rx.setStyleSheet(u"background-color: transparent;\n"
"border: 1px solid transparent;")
        icon = QIcon()
        icon.addFile(u"resources/img/icon_rx_enabled.png", QSize(), QIcon.Normal, QIcon.On)
        self.button_B_rx.setIcon(icon)
        self.button_B_rx.setIconSize(QSize(100, 100))

        self.horizontalLayout_5.addWidget(self.button_B_rx)

        self.button_B_tx = QPushButton(self.tab_home)
        self.button_B_tx.setObjectName(u"button_B_tx")
        self.button_B_tx.setStyleSheet(u"background-color: transparent;\n"
"border: 1px solid transparent;")
        icon1 = QIcon()
        icon1.addFile(u"resources/img/icon_tx_enabled.png", QSize(), QIcon.Normal, QIcon.On)
        self.button_B_tx.setIcon(icon1)
        self.button_B_tx.setIconSize(QSize(100, 100))

        self.horizontalLayout_5.addWidget(self.button_B_tx)


        self.verticalLayout_8.addLayout(self.horizontalLayout_5)


        self.gridLayout_5.addLayout(self.verticalLayout_8, 0, 2, 1, 1)

        self.widget_4 = QWidget(self.tab_home)
        self.widget_4.setObjectName(u"widget_4")
        sizePolicy3.setHeightForWidth(self.widget_4.sizePolicy().hasHeightForWidth())
        self.widget_4.setSizePolicy(sizePolicy3)

        self.gridLayout_5.addWidget(self.widget_4, 3, 2, 1, 1)

        self.widget_2 = QWidget(self.tab_home)
        self.widget_2.setObjectName(u"widget_2")
        sizePolicy3.setHeightForWidth(self.widget_2.sizePolicy().hasHeightForWidth())
        self.widget_2.setSizePolicy(sizePolicy3)

        self.gridLayout_5.addWidget(self.widget_2, 3, 0, 1, 1)

        self.horizontalLayout_8 = QHBoxLayout()
        self.horizontalLayout_8.setObjectName(u"horizontalLayout_8")
        self.button_A_freq = QPushButton(self.tab_home)
        self.button_A_freq.setObjectName(u"button_A_freq")
        sizePolicy7 = QSizePolicy(QSizePolicy.Ignored, QSizePolicy.Fixed)
        sizePolicy7.setHorizontalStretch(0)
        sizePolicy7.setVerticalStretch(0)
        sizePolicy7.setHeightForWidth(self.button_A_freq.sizePolicy().hasHeightForWidth())
        self.button_A_freq.setSizePolicy(sizePolicy7)
        font3 = QFont()
        font3.setFamily(u"Waree")
        font3.setPointSize(64)
        font3.setBold(True)
        font3.setWeight(75)
        self.button_A_freq.setFont(font3)
        self.button_A_freq.setStyleSheet(u"background-color: transparent;\n"
"border: 1px solid transparent;\n"
"text-align: right;")

        self.horizontalLayout_8.addWidget(self.button_A_freq)


        self.gridLayout_5.addLayout(self.horizontalLayout_8, 1, 0, 1, 1)

        self.horizontalLayout_9 = QHBoxLayout()
        self.horizontalLayout_9.setObjectName(u"horizontalLayout_9")
        self.button_B_freq = QPushButton(self.tab_home)
        self.button_B_freq.setObjectName(u"button_B_freq")
        sizePolicy7.setHeightForWidth(self.button_B_freq.sizePolicy().hasHeightForWidth())
        self.button_B_freq.setSizePolicy(sizePolicy7)
        self.button_B_freq.setFont(font3)
        self.button_B_freq.setStyleSheet(u"background-color: transparent;\n"
"border: 1px solid transparent;\n"
"text-align: right;")

        self.horizontalLayout_9.addWidget(self.button_B_freq)


        self.gridLayout_5.addLayout(self.horizontalLayout_9, 1, 2, 1, 1)

        self.line_6 = QFrame(self.tab_home)
        self.line_6.setObjectName(u"line_6")
        self.line_6.setStyleSheet(u"color: #FFFFFF;")
        self.line_6.setFrameShadow(QFrame.Plain)
        self.line_6.setLineWidth(10)
        self.line_6.setFrameShape(QFrame.VLine)

        self.gridLayout_5.addWidget(self.line_6, 4, 1, 1, 1)

        self.line_3 = QFrame(self.tab_home)
        self.line_3.setObjectName(u"line_3")
        self.line_3.setStyleSheet(u"color: #FFFFFF;")
        self.line_3.setFrameShadow(QFrame.Plain)
        self.line_3.setLineWidth(10)
        self.line_3.setFrameShape(QFrame.VLine)

        self.gridLayout_5.addWidget(self.line_3, 1, 1, 1, 1)

        self.verticalLayout_7 = QVBoxLayout()
        self.verticalLayout_7.setObjectName(u"verticalLayout_7")
        self.horizontalLayout_4 = QHBoxLayout()
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.button_A_mode = QPushButton(self.tab_home)
        self.button_A_mode.setObjectName(u"button_A_mode")
        sizePolicy4.setHeightForWidth(self.button_A_mode.sizePolicy().hasHeightForWidth())
        self.button_A_mode.setSizePolicy(sizePolicy4)
        self.button_A_mode.setMinimumSize(QSize(251, 0))

        self.horizontalLayout_4.addWidget(self.button_A_mode)

        self.gridLayout_2 = QGridLayout()
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.label_12 = QLabel(self.tab_home)
        self.label_12.setObjectName(u"label_12")
        sizePolicy5.setHeightForWidth(self.label_12.sizePolicy().hasHeightForWidth())
        self.label_12.setSizePolicy(sizePolicy5)
        self.label_12.setFont(font1)

        self.gridLayout_2.addWidget(self.label_12, 0, 0, 1, 1)

        self.label_A_fc = QLabel(self.tab_home)
        self.label_A_fc.setObjectName(u"label_A_fc")
        sizePolicy6.setHeightForWidth(self.label_A_fc.sizePolicy().hasHeightForWidth())
        self.label_A_fc.setSizePolicy(sizePolicy6)
        self.label_A_fc.setFont(font2)

        self.gridLayout_2.addWidget(self.label_A_fc, 0, 1, 1, 1)

        self.label_23 = QLabel(self.tab_home)
        self.label_23.setObjectName(u"label_23")
        sizePolicy6.setHeightForWidth(self.label_23.sizePolicy().hasHeightForWidth())
        self.label_23.setSizePolicy(sizePolicy6)
        self.label_23.setFont(font1)

        self.gridLayout_2.addWidget(self.label_23, 0, 2, 1, 1)

        self.label_24 = QLabel(self.tab_home)
        self.label_24.setObjectName(u"label_24")
        sizePolicy6.setHeightForWidth(self.label_24.sizePolicy().hasHeightForWidth())
        self.label_24.setSizePolicy(sizePolicy6)
        self.label_24.setFont(font1)

        self.gridLayout_2.addWidget(self.label_24, 1, 0, 1, 1)

        self.label_A_bw = QLabel(self.tab_home)
        self.label_A_bw.setObjectName(u"label_A_bw")
        sizePolicy6.setHeightForWidth(self.label_A_bw.sizePolicy().hasHeightForWidth())
        self.label_A_bw.setSizePolicy(sizePolicy6)
        self.label_A_bw.setFont(font2)

        self.gridLayout_2.addWidget(self.label_A_bw, 1, 1, 1, 1)

        self.label_26 = QLabel(self.tab_home)
        self.label_26.setObjectName(u"label_26")
        sizePolicy6.setHeightForWidth(self.label_26.sizePolicy().hasHeightForWidth())
        self.label_26.setSizePolicy(sizePolicy6)
        self.label_26.setFont(font1)

        self.gridLayout_2.addWidget(self.label_26, 1, 2, 1, 1)


        self.horizontalLayout_4.addLayout(self.gridLayout_2)

        self.button_A_rx = QPushButton(self.tab_home)
        self.button_A_rx.setObjectName(u"button_A_rx")
        self.button_A_rx.setStyleSheet(u"background-color: transparent;\n"
"border: 1px solid transparent;")
        self.button_A_rx.setIcon(icon)
        self.button_A_rx.setIconSize(QSize(100, 100))
        self.button_A_rx.setAutoDefault(False)

        self.horizontalLayout_4.addWidget(self.button_A_rx)

        self.button_A_tx = QPushButton(self.tab_home)
        self.button_A_tx.setObjectName(u"button_A_tx")
        self.button_A_tx.setStyleSheet(u"background-color: transparent;\n"
"border: 1px solid transparent;")
        self.button_A_tx.setIcon(icon1)
        self.button_A_tx.setIconSize(QSize(100, 100))

        self.horizontalLayout_4.addWidget(self.button_A_tx)


        self.verticalLayout_7.addLayout(self.horizontalLayout_4)


        self.gridLayout_5.addLayout(self.verticalLayout_7, 0, 0, 1, 1)


        self.verticalLayout_9.addLayout(self.gridLayout_5)

        icon2 = QIcon()
        icon2.addFile(u"resources/img/icon_home.png", QSize(), QIcon.Normal, QIcon.Off)
        self.tab_widget.addTab(self.tab_home, icon2, "")
        self.tab_settings = QWidget()
        self.tab_settings.setObjectName(u"tab_settings")
        icon3 = QIcon()
        icon3.addFile(u"resources/img/icon_settings.png", QSize(), QIcon.Normal, QIcon.Off)
        self.tab_widget.addTab(self.tab_settings, icon3, "")
        self.tab_network = QWidget()
        self.tab_network.setObjectName(u"tab_network")
        self.verticalLayout_4 = QVBoxLayout(self.tab_network)
        self.verticalLayout_4.setObjectName(u"verticalLayout_4")
        self.tabWidget_network = QTabWidget(self.tab_network)
        self.tabWidget_network.setObjectName(u"tabWidget_network")
        self.tabWidget_network.setFont(font)
        self.tabWidget_network.setStyleSheet(u"QTabBar::tab { height: 120px;}")
        self.tabWidget_network.setIconSize(QSize(80, 80))
        self.tab = QWidget()
        self.tab.setObjectName(u"tab")
        self.tabWidget_network.addTab(self.tab, "")
        self.tab_2 = QWidget()
        self.tab_2.setObjectName(u"tab_2")
        self.tabWidget_network.addTab(self.tab_2, "")
        self.tab_3 = QWidget()
        self.tab_3.setObjectName(u"tab_3")
        self.tab_3.setEnabled(True)
        self.tabWidget_network.addTab(self.tab_3, "")

        self.verticalLayout_4.addWidget(self.tabWidget_network)

        icon4 = QIcon()
        icon4.addFile(u"resources/img/icon_network.png", QSize(), QIcon.Normal, QIcon.Off)
        self.tab_widget.addTab(self.tab_network, icon4, "")
        self.tab_warning = QWidget()
        self.tab_warning.setObjectName(u"tab_warning")
        self.verticalLayout_3 = QVBoxLayout(self.tab_warning)
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.table_warnings = QTableWidget(self.tab_warning)
        self.table_warnings.setObjectName(u"table_warnings")
        sizePolicy4.setHeightForWidth(self.table_warnings.sizePolicy().hasHeightForWidth())
        self.table_warnings.setSizePolicy(sizePolicy4)
        font4 = QFont()
        font4.setFamily(u"Waree")
        font4.setPointSize(20)
        font4.setBold(False)
        font4.setItalic(False)
        font4.setWeight(50)
        self.table_warnings.setFont(font4)
        self.table_warnings.setStyleSheet(u"font: 20pt \"Waree\";\n"
"color: #F0F0F0;")
        self.table_warnings.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        self.table_warnings.setEditTriggers(QAbstractItemView.NoEditTriggers)
        self.table_warnings.setColumnCount(0)

        self.verticalLayout_3.addWidget(self.table_warnings)

        icon5 = QIcon()
        icon5.addFile(u"resources/img/icon_warning_inactive.png", QSize(), QIcon.Disabled, QIcon.Off)
        icon5.addFile(u"resources/img/icon_warning.png", QSize(), QIcon.Active, QIcon.Off)
        self.tab_widget.addTab(self.tab_warning, icon5, "")
        self.tab_info = QWidget()
        self.tab_info.setObjectName(u"tab_info")
        font5 = QFont()
        font5.setFamily(u"Waree")
        font5.setPointSize(20)
        font5.setBold(True)
        font5.setWeight(75)
        self.tab_info.setFont(font5)
        self.horizontalLayout_3 = QHBoxLayout(self.tab_info)
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.gridLayout_3 = QGridLayout()
        self.gridLayout_3.setObjectName(u"gridLayout_3")
        self.label_19 = QLabel(self.tab_info)
        self.label_19.setObjectName(u"label_19")
        font6 = QFont()
        font6.setFamily(u"Waree")
        font6.setPointSize(20)
        font6.setBold(False)
        font6.setWeight(50)
        self.label_19.setFont(font6)

        self.gridLayout_3.addWidget(self.label_19, 1, 3, 1, 1)

        self.label_15 = QLabel(self.tab_info)
        self.label_15.setObjectName(u"label_15")

        self.gridLayout_3.addWidget(self.label_15, 7, 0, 1, 1)

        self.label_11 = QLabel(self.tab_info)
        self.label_11.setObjectName(u"label_11")

        self.gridLayout_3.addWidget(self.label_11, 1, 0, 1, 1)

        self.label_gitVersion = QLabel(self.tab_info)
        self.label_gitVersion.setObjectName(u"label_gitVersion")
        sizePolicy8 = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Preferred)
        sizePolicy8.setHorizontalStretch(0)
        sizePolicy8.setVerticalStretch(0)
        sizePolicy8.setHeightForWidth(self.label_gitVersion.sizePolicy().hasHeightForWidth())
        self.label_gitVersion.setSizePolicy(sizePolicy8)
        self.label_gitVersion.setFont(font4)
        self.label_gitVersion.setStyleSheet(u"font-weight: normal")

        self.gridLayout_3.addWidget(self.label_gitVersion, 0, 1, 1, 1)

        self.label_hostname = QLabel(self.tab_info)
        self.label_hostname.setObjectName(u"label_hostname")
        self.label_hostname.setFont(font6)

        self.gridLayout_3.addWidget(self.label_hostname, 4, 1, 1, 1)

        self.label_13 = QLabel(self.tab_info)
        self.label_13.setObjectName(u"label_13")

        self.gridLayout_3.addWidget(self.label_13, 4, 0, 1, 1)

        self.checkBox = QCheckBox(self.tab_info)
        self.checkBox.setObjectName(u"checkBox")

        self.gridLayout_3.addWidget(self.checkBox, 2, 2, 1, 1)

        self.label_10 = QLabel(self.tab_info)
        self.label_10.setObjectName(u"label_10")

        self.gridLayout_3.addWidget(self.label_10, 6, 0, 1, 1)

        self.label_mqttAddr = QLabel(self.tab_info)
        self.label_mqttAddr.setObjectName(u"label_mqttAddr")
        self.label_mqttAddr.setFont(font6)

        self.gridLayout_3.addWidget(self.label_mqttAddr, 6, 1, 1, 1)

        self.label_16 = QLabel(self.tab_info)
        self.label_16.setObjectName(u"label_16")
        sizePolicy8.setHeightForWidth(self.label_16.sizePolicy().hasHeightForWidth())
        self.label_16.setSizePolicy(sizePolicy8)

        self.gridLayout_3.addWidget(self.label_16, 0, 2, 1, 1)

        self.label_5 = QLabel(self.tab_info)
        self.label_5.setObjectName(u"label_5")
        sizePolicy8.setHeightForWidth(self.label_5.sizePolicy().hasHeightForWidth())
        self.label_5.setSizePolicy(sizePolicy8)
        self.label_5.setStyleSheet(u"")

        self.gridLayout_3.addWidget(self.label_5, 0, 0, 1, 1)

        self.label_mqttPort = QLabel(self.tab_info)
        self.label_mqttPort.setObjectName(u"label_mqttPort")
        self.label_mqttPort.setFont(font6)

        self.gridLayout_3.addWidget(self.label_mqttPort, 7, 1, 1, 1)

        self.label_21 = QLabel(self.tab_info)
        self.label_21.setObjectName(u"label_21")

        self.gridLayout_3.addWidget(self.label_21, 5, 0, 1, 1)

        self.label_linkSpeed = QLabel(self.tab_info)
        self.label_linkSpeed.setObjectName(u"label_linkSpeed")
        self.label_linkSpeed.setFont(font6)

        self.gridLayout_3.addWidget(self.label_linkSpeed, 5, 1, 1, 1)

        self.label_14 = QLabel(self.tab_info)
        self.label_14.setObjectName(u"label_14")

        self.gridLayout_3.addWidget(self.label_14, 2, 0, 1, 1)

        self.label_gitStatus = QLabel(self.tab_info)
        self.label_gitStatus.setObjectName(u"label_gitStatus")
        self.label_gitStatus.setFont(font4)

        self.gridLayout_3.addWidget(self.label_gitStatus, 1, 1, 1, 1)

        self.label_ipAddr = QLabel(self.tab_info)
        self.label_ipAddr.setObjectName(u"label_ipAddr")
        self.label_ipAddr.setFont(font4)

        self.gridLayout_3.addWidget(self.label_ipAddr, 2, 1, 1, 1)

        self.label_18 = QLabel(self.tab_info)
        self.label_18.setObjectName(u"label_18")

        self.gridLayout_3.addWidget(self.label_18, 1, 2, 1, 1)

        self.label_17 = QLabel(self.tab_info)
        self.label_17.setObjectName(u"label_17")
        sizePolicy8.setHeightForWidth(self.label_17.sizePolicy().hasHeightForWidth())
        self.label_17.setSizePolicy(sizePolicy8)
        self.label_17.setFont(font6)

        self.gridLayout_3.addWidget(self.label_17, 0, 3, 1, 1)

        self.verticalSpacer_3 = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.gridLayout_3.addItem(self.verticalSpacer_3, 8, 0, 1, 1)

        self.label_20 = QLabel(self.tab_info)
        self.label_20.setObjectName(u"label_20")

        self.gridLayout_3.addWidget(self.label_20, 3, 0, 1, 1)

        self.label_mac = QLabel(self.tab_info)
        self.label_mac.setObjectName(u"label_mac")
        self.label_mac.setFont(font6)

        self.gridLayout_3.addWidget(self.label_mac, 3, 1, 1, 1)


        self.horizontalLayout_3.addLayout(self.gridLayout_3)

        self.verticalLayout_5 = QVBoxLayout()
        self.verticalLayout_5.setObjectName(u"verticalLayout_5")
        self.verticalLayout_6 = QVBoxLayout()
        self.verticalLayout_6.setObjectName(u"verticalLayout_6")
        self.label = QLabel(self.tab_info)
        self.label.setObjectName(u"label")
        sizePolicy9 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Preferred)
        sizePolicy9.setHorizontalStretch(0)
        sizePolicy9.setVerticalStretch(0)
        sizePolicy9.setHeightForWidth(self.label.sizePolicy().hasHeightForWidth())
        self.label.setSizePolicy(sizePolicy9)
        self.label.setAlignment(Qt.AlignCenter)

        self.verticalLayout_6.addWidget(self.label)

        self.label_3 = QLabel(self.tab_info)
        self.label_3.setObjectName(u"label_3")
        sizePolicy10 = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Preferred)
        sizePolicy10.setHorizontalStretch(0)
        sizePolicy10.setVerticalStretch(0)
        sizePolicy10.setHeightForWidth(self.label_3.sizePolicy().hasHeightForWidth())
        self.label_3.setSizePolicy(sizePolicy10)
        self.label_3.setPixmap(QPixmap(u"resources/img/m0wut.png"))
        self.label_3.setAlignment(Qt.AlignCenter)
        self.label_3.setTextInteractionFlags(Qt.NoTextInteraction)

        self.verticalLayout_6.addWidget(self.label_3)

        self.label_2 = QLabel(self.tab_info)
        self.label_2.setObjectName(u"label_2")
        sizePolicy9.setHeightForWidth(self.label_2.sizePolicy().hasHeightForWidth())
        self.label_2.setSizePolicy(sizePolicy9)
        self.label_2.setAlignment(Qt.AlignCenter)

        self.verticalLayout_6.addWidget(self.label_2)

        self.verticalSpacer = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Fixed)

        self.verticalLayout_6.addItem(self.verticalSpacer)

        self.label_4 = QLabel(self.tab_info)
        self.label_4.setObjectName(u"label_4")
        sizePolicy5.setHeightForWidth(self.label_4.sizePolicy().hasHeightForWidth())
        self.label_4.setSizePolicy(sizePolicy5)
        self.label_4.setAlignment(Qt.AlignCenter)

        self.verticalLayout_6.addWidget(self.label_4)

        self.gridLayout = QGridLayout()
        self.gridLayout.setSpacing(10)
        self.gridLayout.setObjectName(u"gridLayout")
        self.gridLayout.setContentsMargins(10, 10, 10, 10)
        self.label_6 = QLabel(self.tab_info)
        self.label_6.setObjectName(u"label_6")
        sizePolicy10.setHeightForWidth(self.label_6.sizePolicy().hasHeightForWidth())
        self.label_6.setSizePolicy(sizePolicy10)
        self.label_6.setPixmap(QPixmap(u"resources/img/m0vfc.png"))
        self.label_6.setScaledContents(False)
        self.label_6.setAlignment(Qt.AlignCenter)
        self.label_6.setTextInteractionFlags(Qt.NoTextInteraction)

        self.gridLayout.addWidget(self.label_6, 0, 0, 1, 1)

        self.label_8 = QLabel(self.tab_info)
        self.label_8.setObjectName(u"label_8")
        sizePolicy10.setHeightForWidth(self.label_8.sizePolicy().hasHeightForWidth())
        self.label_8.setSizePolicy(sizePolicy10)
        self.label_8.setPixmap(QPixmap(u"resources/img/m1geo.png"))
        self.label_8.setAlignment(Qt.AlignCenter)
        self.label_8.setTextInteractionFlags(Qt.NoTextInteraction)

        self.gridLayout.addWidget(self.label_8, 0, 1, 1, 1)

        self.label_7 = QLabel(self.tab_info)
        self.label_7.setObjectName(u"label_7")
        sizePolicy10.setHeightForWidth(self.label_7.sizePolicy().hasHeightForWidth())
        self.label_7.setSizePolicy(sizePolicy10)
        self.label_7.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.label_7, 1, 0, 1, 1)

        self.label_9 = QLabel(self.tab_info)
        self.label_9.setObjectName(u"label_9")
        sizePolicy10.setHeightForWidth(self.label_9.sizePolicy().hasHeightForWidth())
        self.label_9.setSizePolicy(sizePolicy10)
        self.label_9.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.label_9, 1, 1, 1, 1)


        self.verticalLayout_6.addLayout(self.gridLayout)

        self.verticalSpacer_2 = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout_6.addItem(self.verticalSpacer_2)

        self.button_qt = QPushButton(self.tab_info)
        self.button_qt.setObjectName(u"button_qt")
        sizePolicy11 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Fixed)
        sizePolicy11.setHorizontalStretch(0)
        sizePolicy11.setVerticalStretch(0)
        sizePolicy11.setHeightForWidth(self.button_qt.sizePolicy().hasHeightForWidth())
        self.button_qt.setSizePolicy(sizePolicy11)
        self.button_qt.setMinimumSize(QSize(0, 100))

        self.verticalLayout_6.addWidget(self.button_qt)


        self.verticalLayout_5.addLayout(self.verticalLayout_6)


        self.horizontalLayout_3.addLayout(self.verticalLayout_5)

        icon6 = QIcon()
        icon6.addFile(u"resources/img/icon_info.png", QSize(), QIcon.Normal, QIcon.Off)
        self.tab_widget.addTab(self.tab_info, icon6, "")

        self.horizontalLayout.addWidget(self.tab_widget)

        self.line_2 = QFrame(main)
        self.line_2.setObjectName(u"line_2")
        self.line_2.setFrameShape(QFrame.VLine)
        self.line_2.setFrameShadow(QFrame.Sunken)

        self.horizontalLayout.addWidget(self.line_2)

        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.button_rhs_0 = QPushButton(main)
        self.button_rhs_0.setObjectName(u"button_rhs_0")
        self.button_rhs_0.setEnabled(True)
        sizePolicy3.setHeightForWidth(self.button_rhs_0.sizePolicy().hasHeightForWidth())
        self.button_rhs_0.setSizePolicy(sizePolicy3)
        self.button_rhs_0.setMinimumSize(QSize(400, 0))
        self.button_rhs_0.setMaximumSize(QSize(400, 16777215))
        self.button_rhs_0.setFont(font)
        self.button_rhs_0.setStyleSheet(u"width: 200px")
        self.button_rhs_0.setCheckable(True)

        self.verticalLayout.addWidget(self.button_rhs_0)

        self.button_rhs_1 = QPushButton(main)
        self.button_rhs_1.setObjectName(u"button_rhs_1")
        sizePolicy12 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Expanding)
        sizePolicy12.setHorizontalStretch(0)
        sizePolicy12.setVerticalStretch(0)
        sizePolicy12.setHeightForWidth(self.button_rhs_1.sizePolicy().hasHeightForWidth())
        self.button_rhs_1.setSizePolicy(sizePolicy12)
        self.button_rhs_1.setMinimumSize(QSize(290, 0))
        self.button_rhs_1.setFont(font)

        self.verticalLayout.addWidget(self.button_rhs_1)

        self.button_rhs_2 = QPushButton(main)
        self.button_rhs_2.setObjectName(u"button_rhs_2")
        sizePolicy12.setHeightForWidth(self.button_rhs_2.sizePolicy().hasHeightForWidth())
        self.button_rhs_2.setSizePolicy(sizePolicy12)
        self.button_rhs_2.setMinimumSize(QSize(290, 0))
        self.button_rhs_2.setFont(font)

        self.verticalLayout.addWidget(self.button_rhs_2)

        self.button_rhs_3 = QPushButton(main)
        self.button_rhs_3.setObjectName(u"button_rhs_3")
        sizePolicy12.setHeightForWidth(self.button_rhs_3.sizePolicy().hasHeightForWidth())
        self.button_rhs_3.setSizePolicy(sizePolicy12)
        self.button_rhs_3.setMinimumSize(QSize(290, 0))
        self.button_rhs_3.setFont(font)

        self.verticalLayout.addWidget(self.button_rhs_3)

        self.button_rhs_4 = QPushButton(main)
        self.button_rhs_4.setObjectName(u"button_rhs_4")
        sizePolicy12.setHeightForWidth(self.button_rhs_4.sizePolicy().hasHeightForWidth())
        self.button_rhs_4.setSizePolicy(sizePolicy12)
        self.button_rhs_4.setMinimumSize(QSize(290, 0))
        self.button_rhs_4.setFont(font)

        self.verticalLayout.addWidget(self.button_rhs_4)

        self.button_rhs_5 = QPushButton(main)
        self.button_rhs_5.setObjectName(u"button_rhs_5")
        sizePolicy12.setHeightForWidth(self.button_rhs_5.sizePolicy().hasHeightForWidth())
        self.button_rhs_5.setSizePolicy(sizePolicy12)
        self.button_rhs_5.setMinimumSize(QSize(290, 0))
        self.button_rhs_5.setFont(font)

        self.verticalLayout.addWidget(self.button_rhs_5)


        self.horizontalLayout.addLayout(self.verticalLayout)


        self.horizontalLayout_2.addLayout(self.horizontalLayout)


        self.verticalLayout_2.addLayout(self.horizontalLayout_2)


        self.retranslateUi(main)

        self.tab_widget.setCurrentIndex(0)
        self.tabWidget_network.setCurrentIndex(0)


        QMetaObject.connectSlotsByName(main)
    # setupUi

    def retranslateUi(self, main):
        main.setWindowTitle(QCoreApplication.translate("main", u"main", None))
        self.button_B_mode.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.label_27.setText(QCoreApplication.translate("main", u"Fc:", None))
        self.label_B_fc.setText(QCoreApplication.translate("main", u"1.6kHz", None))
        self.label_29.setText(QCoreApplication.translate("main", u"RIT", None))
        self.label_30.setText(QCoreApplication.translate("main", u"BW:", None))
        self.label_B_bw.setText(QCoreApplication.translate("main", u"400Hz", None))
        self.label_32.setText(QCoreApplication.translate("main", u"XIT", None))
        self.button_B_rx.setText("")
        self.button_B_tx.setText("")
        self.button_A_freq.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.button_B_freq.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.button_A_mode.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.label_12.setText(QCoreApplication.translate("main", u"Fc:", None))
        self.label_A_fc.setText(QCoreApplication.translate("main", u"1.6kHz", None))
        self.label_23.setText(QCoreApplication.translate("main", u"RIT", None))
        self.label_24.setText(QCoreApplication.translate("main", u"BW:", None))
        self.label_A_bw.setText(QCoreApplication.translate("main", u"400Hz", None))
        self.label_26.setText(QCoreApplication.translate("main", u"XIT", None))
        self.button_A_rx.setText("")
        self.button_A_tx.setText("")
        self.tab_widget.setTabText(self.tab_widget.indexOf(self.tab_home), QCoreApplication.translate("main", u"Home", None))
        self.tab_widget.setTabText(self.tab_widget.indexOf(self.tab_settings), QCoreApplication.translate("main", u"Settings", None))
        self.tabWidget_network.setTabText(self.tabWidget_network.indexOf(self.tab), QCoreApplication.translate("main", u"192.168.0.26", None))
        self.tabWidget_network.setTabText(self.tabWidget_network.indexOf(self.tab_2), QCoreApplication.translate("main", u"192.168.0.1", None))
        self.tabWidget_network.setTabText(self.tabWidget_network.indexOf(self.tab_3), QCoreApplication.translate("main", u"Page", None))
        self.tab_widget.setTabText(self.tab_widget.indexOf(self.tab_network), QCoreApplication.translate("main", u"Network", None))
        self.tab_widget.setTabText(self.tab_widget.indexOf(self.tab_warning), QCoreApplication.translate("main", u"Warnings", None))
        self.label_19.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_15.setText(QCoreApplication.translate("main", u"MQTT Port:", None))
        self.label_11.setText(QCoreApplication.translate("main", u"Git Repo Status:", None))
        self.label_gitVersion.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_hostname.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_13.setText(QCoreApplication.translate("main", u"Hostname:", None))
        self.checkBox.setText(QCoreApplication.translate("main", u"CheckBox", None))
        self.label_10.setText(QCoreApplication.translate("main", u"MQTT Server:", None))
        self.label_mqttAddr.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_16.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_5.setText(QCoreApplication.translate("main", u"Git Commit Hash:", None))
        self.label_mqttPort.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_21.setText(QCoreApplication.translate("main", u"Link Speed:", None))
        self.label_linkSpeed.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_14.setText(QCoreApplication.translate("main", u"IP Address:", None))
        self.label_gitStatus.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_ipAddr.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_18.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_17.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_20.setText(QCoreApplication.translate("main", u"MAC Address:", None))
        self.label_mac.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label.setText(QCoreApplication.translate("main", u"Developed by:", None))
        self.label_3.setText("")
        self.label_2.setText(QCoreApplication.translate("main", u"Dan M0WUT", None))
        self.label_4.setText(QCoreApplication.translate("main", u"With thanks to:", None))
        self.label_6.setText("")
        self.label_8.setText("")
        self.label_7.setText(QCoreApplication.translate("main", u"Rob M0VFC", None))
        self.label_9.setText(QCoreApplication.translate("main", u"George M1GEO", None))
        self.button_qt.setText(QCoreApplication.translate("main", u"About Qt", None))
        self.tab_widget.setTabText(self.tab_widget.indexOf(self.tab_info), QCoreApplication.translate("main", u"Info", None))
        self.button_rhs_0.setText(QCoreApplication.translate("main", u"Discovery", None))
        self.button_rhs_1.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.button_rhs_2.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.button_rhs_3.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.button_rhs_4.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.button_rhs_5.setText(QCoreApplication.translate("main", u"PushButton", None))
    # retranslateUi

