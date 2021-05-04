# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'form.ui'
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
        main.resize(1916, 1080)
        sizePolicy = QSizePolicy(QSizePolicy.Maximum, QSizePolicy.Maximum)
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
        font.setPointSize(20)
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
        self.widget = QWidget(self.tab_home)
        self.widget.setObjectName(u"widget")
        self.widget.setGeometry(QRect(20, 60, 1011, 261))
        self.horizontalLayout_4 = QHBoxLayout(self.widget)
        self.horizontalLayout_4.setObjectName(u"horizontalLayout_4")
        self.horizontalLayout_4.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_8 = QVBoxLayout()
        self.verticalLayout_8.setObjectName(u"verticalLayout_8")
        self.label_freqA = QLabel(self.widget)
        self.label_freqA.setObjectName(u"label_freqA")

        self.verticalLayout_8.addWidget(self.label_freqA)

        self.label_12 = QLabel(self.widget)
        self.label_12.setObjectName(u"label_12")

        self.verticalLayout_8.addWidget(self.label_12)


        self.horizontalLayout_4.addLayout(self.verticalLayout_8)

        self.verticalLayout_7 = QVBoxLayout()
        self.verticalLayout_7.setObjectName(u"verticalLayout_7")
        self.button_up = QPushButton(self.widget)
        self.button_up.setObjectName(u"button_up")

        self.verticalLayout_7.addWidget(self.button_up)

        self.button_down = QPushButton(self.widget)
        self.button_down.setObjectName(u"button_down")

        self.verticalLayout_7.addWidget(self.button_down)


        self.horizontalLayout_4.addLayout(self.verticalLayout_7)

        icon = QIcon()
        icon.addFile(u"resources/img/icon_home.png", QSize(), QIcon.Normal, QIcon.Off)
        self.tab_widget.addTab(self.tab_home, icon, "")
        self.tab_settings = QWidget()
        self.tab_settings.setObjectName(u"tab_settings")
        icon1 = QIcon()
        icon1.addFile(u"resources/img/icon_settings.png", QSize(), QIcon.Normal, QIcon.Off)
        self.tab_widget.addTab(self.tab_settings, icon1, "")
        self.tab_info = QWidget()
        self.tab_info.setObjectName(u"tab_info")
        self.horizontalLayout_3 = QHBoxLayout(self.tab_info)
        self.horizontalLayout_3.setObjectName(u"horizontalLayout_3")
        self.verticalLayout_3 = QVBoxLayout()
        self.verticalLayout_3.setObjectName(u"verticalLayout_3")
        self.label_10 = QLabel(self.tab_info)
        self.label_10.setObjectName(u"label_10")
        sizePolicy3 = QSizePolicy(QSizePolicy.Expanding, QSizePolicy.Preferred)
        sizePolicy3.setHorizontalStretch(0)
        sizePolicy3.setVerticalStretch(0)
        sizePolicy3.setHeightForWidth(self.label_10.sizePolicy().hasHeightForWidth())
        self.label_10.setSizePolicy(sizePolicy3)

        self.verticalLayout_3.addWidget(self.label_10)


        self.horizontalLayout_3.addLayout(self.verticalLayout_3)

        self.line_4 = QFrame(self.tab_info)
        self.line_4.setObjectName(u"line_4")
        self.line_4.setFrameShape(QFrame.VLine)
        self.line_4.setFrameShadow(QFrame.Sunken)

        self.horizontalLayout_3.addWidget(self.line_4)

        self.verticalLayout_4 = QVBoxLayout()
        self.verticalLayout_4.setObjectName(u"verticalLayout_4")
        self.label_5 = QLabel(self.tab_info)
        self.label_5.setObjectName(u"label_5")
        sizePolicy3.setHeightForWidth(self.label_5.sizePolicy().hasHeightForWidth())
        self.label_5.setSizePolicy(sizePolicy3)

        self.verticalLayout_4.addWidget(self.label_5)


        self.horizontalLayout_3.addLayout(self.verticalLayout_4)

        self.verticalLayout_5 = QVBoxLayout()
        self.verticalLayout_5.setObjectName(u"verticalLayout_5")
        self.verticalLayout_6 = QVBoxLayout()
        self.verticalLayout_6.setObjectName(u"verticalLayout_6")
        self.label = QLabel(self.tab_info)
        self.label.setObjectName(u"label")
        sizePolicy4 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Preferred)
        sizePolicy4.setHorizontalStretch(0)
        sizePolicy4.setVerticalStretch(0)
        sizePolicy4.setHeightForWidth(self.label.sizePolicy().hasHeightForWidth())
        self.label.setSizePolicy(sizePolicy4)
        self.label.setAlignment(Qt.AlignCenter)

        self.verticalLayout_6.addWidget(self.label)

        self.label_3 = QLabel(self.tab_info)
        self.label_3.setObjectName(u"label_3")
        sizePolicy5 = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Preferred)
        sizePolicy5.setHorizontalStretch(0)
        sizePolicy5.setVerticalStretch(0)
        sizePolicy5.setHeightForWidth(self.label_3.sizePolicy().hasHeightForWidth())
        self.label_3.setSizePolicy(sizePolicy5)
        self.label_3.setPixmap(QPixmap(u"resources/img/m0wut.png"))
        self.label_3.setAlignment(Qt.AlignCenter)
        self.label_3.setTextInteractionFlags(Qt.NoTextInteraction)

        self.verticalLayout_6.addWidget(self.label_3)

        self.label_2 = QLabel(self.tab_info)
        self.label_2.setObjectName(u"label_2")
        sizePolicy4.setHeightForWidth(self.label_2.sizePolicy().hasHeightForWidth())
        self.label_2.setSizePolicy(sizePolicy4)
        self.label_2.setAlignment(Qt.AlignCenter)

        self.verticalLayout_6.addWidget(self.label_2)

        self.verticalSpacer = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Fixed)

        self.verticalLayout_6.addItem(self.verticalSpacer)

        self.label_4 = QLabel(self.tab_info)
        self.label_4.setObjectName(u"label_4")
        sizePolicy6 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Minimum)
        sizePolicy6.setHorizontalStretch(0)
        sizePolicy6.setVerticalStretch(0)
        sizePolicy6.setHeightForWidth(self.label_4.sizePolicy().hasHeightForWidth())
        self.label_4.setSizePolicy(sizePolicy6)
        self.label_4.setAlignment(Qt.AlignCenter)

        self.verticalLayout_6.addWidget(self.label_4)

        self.gridLayout = QGridLayout()
        self.gridLayout.setSpacing(10)
        self.gridLayout.setObjectName(u"gridLayout")
        self.gridLayout.setContentsMargins(10, 10, 10, 10)
        self.label_6 = QLabel(self.tab_info)
        self.label_6.setObjectName(u"label_6")
        sizePolicy5.setHeightForWidth(self.label_6.sizePolicy().hasHeightForWidth())
        self.label_6.setSizePolicy(sizePolicy5)
        self.label_6.setPixmap(QPixmap(u"resources/img/m0vfc.png"))
        self.label_6.setAlignment(Qt.AlignCenter)
        self.label_6.setTextInteractionFlags(Qt.NoTextInteraction)

        self.gridLayout.addWidget(self.label_6, 0, 0, 1, 1)

        self.label_8 = QLabel(self.tab_info)
        self.label_8.setObjectName(u"label_8")
        sizePolicy5.setHeightForWidth(self.label_8.sizePolicy().hasHeightForWidth())
        self.label_8.setSizePolicy(sizePolicy5)
        self.label_8.setPixmap(QPixmap(u"resources/img/m1geo.png"))
        self.label_8.setAlignment(Qt.AlignCenter)
        self.label_8.setTextInteractionFlags(Qt.NoTextInteraction)

        self.gridLayout.addWidget(self.label_8, 0, 1, 1, 1)

        self.label_7 = QLabel(self.tab_info)
        self.label_7.setObjectName(u"label_7")
        sizePolicy5.setHeightForWidth(self.label_7.sizePolicy().hasHeightForWidth())
        self.label_7.setSizePolicy(sizePolicy5)
        self.label_7.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.label_7, 1, 0, 1, 1)

        self.label_9 = QLabel(self.tab_info)
        self.label_9.setObjectName(u"label_9")
        sizePolicy5.setHeightForWidth(self.label_9.sizePolicy().hasHeightForWidth())
        self.label_9.setSizePolicy(sizePolicy5)
        self.label_9.setAlignment(Qt.AlignCenter)

        self.gridLayout.addWidget(self.label_9, 1, 1, 1, 1)


        self.verticalLayout_6.addLayout(self.gridLayout)

        self.verticalSpacer_2 = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.verticalLayout_6.addItem(self.verticalSpacer_2)

        self.pushButton_7 = QPushButton(self.tab_info)
        self.pushButton_7.setObjectName(u"pushButton_7")
        sizePolicy7 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Fixed)
        sizePolicy7.setHorizontalStretch(0)
        sizePolicy7.setVerticalStretch(0)
        sizePolicy7.setHeightForWidth(self.pushButton_7.sizePolicy().hasHeightForWidth())
        self.pushButton_7.setSizePolicy(sizePolicy7)
        self.pushButton_7.setMinimumSize(QSize(0, 100))

        self.verticalLayout_6.addWidget(self.pushButton_7)


        self.verticalLayout_5.addLayout(self.verticalLayout_6)


        self.horizontalLayout_3.addLayout(self.verticalLayout_5)

        icon2 = QIcon()
        icon2.addFile(u"resources/img/icon_info.png", QSize(), QIcon.Normal, QIcon.Off)
        self.tab_widget.addTab(self.tab_info, icon2, "")

        self.horizontalLayout.addWidget(self.tab_widget)

        self.line_2 = QFrame(main)
        self.line_2.setObjectName(u"line_2")
        self.line_2.setFrameShape(QFrame.VLine)
        self.line_2.setFrameShadow(QFrame.Sunken)

        self.horizontalLayout.addWidget(self.line_2)

        self.verticalLayout = QVBoxLayout()
        self.verticalLayout.setObjectName(u"verticalLayout")
        self.pushButton = QPushButton(main)
        self.pushButton.setObjectName(u"pushButton")
        sizePolicy8 = QSizePolicy(QSizePolicy.Minimum, QSizePolicy.Expanding)
        sizePolicy8.setHorizontalStretch(0)
        sizePolicy8.setVerticalStretch(0)
        sizePolicy8.setHeightForWidth(self.pushButton.sizePolicy().hasHeightForWidth())
        self.pushButton.setSizePolicy(sizePolicy8)
        self.pushButton.setFont(font)

        self.verticalLayout.addWidget(self.pushButton)

        self.pushButton_2 = QPushButton(main)
        self.pushButton_2.setObjectName(u"pushButton_2")
        sizePolicy8.setHeightForWidth(self.pushButton_2.sizePolicy().hasHeightForWidth())
        self.pushButton_2.setSizePolicy(sizePolicy8)
        self.pushButton_2.setFont(font)

        self.verticalLayout.addWidget(self.pushButton_2)

        self.pushButton_3 = QPushButton(main)
        self.pushButton_3.setObjectName(u"pushButton_3")
        sizePolicy8.setHeightForWidth(self.pushButton_3.sizePolicy().hasHeightForWidth())
        self.pushButton_3.setSizePolicy(sizePolicy8)
        self.pushButton_3.setFont(font)

        self.verticalLayout.addWidget(self.pushButton_3)

        self.pushButton_4 = QPushButton(main)
        self.pushButton_4.setObjectName(u"pushButton_4")
        sizePolicy8.setHeightForWidth(self.pushButton_4.sizePolicy().hasHeightForWidth())
        self.pushButton_4.setSizePolicy(sizePolicy8)
        self.pushButton_4.setFont(font)

        self.verticalLayout.addWidget(self.pushButton_4)

        self.pushButton_5 = QPushButton(main)
        self.pushButton_5.setObjectName(u"pushButton_5")
        sizePolicy8.setHeightForWidth(self.pushButton_5.sizePolicy().hasHeightForWidth())
        self.pushButton_5.setSizePolicy(sizePolicy8)
        self.pushButton_5.setFont(font)

        self.verticalLayout.addWidget(self.pushButton_5)

        self.pushButton_6 = QPushButton(main)
        self.pushButton_6.setObjectName(u"pushButton_6")
        sizePolicy9 = QSizePolicy(QSizePolicy.Fixed, QSizePolicy.Expanding)
        sizePolicy9.setHorizontalStretch(0)
        sizePolicy9.setVerticalStretch(0)
        sizePolicy9.setHeightForWidth(self.pushButton_6.sizePolicy().hasHeightForWidth())
        self.pushButton_6.setSizePolicy(sizePolicy9)
        self.pushButton_6.setMinimumSize(QSize(0, 0))
        self.pushButton_6.setFont(font)

        self.verticalLayout.addWidget(self.pushButton_6)


        self.horizontalLayout.addLayout(self.verticalLayout)


        self.horizontalLayout_2.addLayout(self.horizontalLayout)


        self.verticalLayout_2.addLayout(self.horizontalLayout_2)


        self.retranslateUi(main)

        self.tab_widget.setCurrentIndex(0)


        QMetaObject.connectSlotsByName(main)
    # setupUi

    def retranslateUi(self, main):
        main.setWindowTitle(QCoreApplication.translate("main", u"main", None))
        self.label_freqA.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_12.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.button_up.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.button_down.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.tab_widget.setTabText(self.tab_widget.indexOf(self.tab_home), QCoreApplication.translate("main", u"Home", None))
        self.tab_widget.setTabText(self.tab_widget.indexOf(self.tab_settings), QCoreApplication.translate("main", u"Settings", None))
        self.label_10.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label_5.setText(QCoreApplication.translate("main", u"TextLabel", None))
        self.label.setText(QCoreApplication.translate("main", u"Developed by:", None))
        self.label_3.setText("")
        self.label_2.setText(QCoreApplication.translate("main", u"Dan M0WUT", None))
        self.label_4.setText(QCoreApplication.translate("main", u"With thanks to:", None))
        self.label_6.setText("")
        self.label_8.setText("")
        self.label_7.setText(QCoreApplication.translate("main", u"Rob M0VFC", None))
        self.label_9.setText(QCoreApplication.translate("main", u"George M1GEO", None))
        self.pushButton_7.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.tab_widget.setTabText(self.tab_widget.indexOf(self.tab_info), QCoreApplication.translate("main", u"Info", None))
        self.pushButton.setText(QCoreApplication.translate("main", u"Button 1", None))
        self.pushButton_2.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.pushButton_3.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.pushButton_4.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.pushButton_5.setText(QCoreApplication.translate("main", u"PushButton", None))
        self.pushButton_6.setText(QCoreApplication.translate("main", u"PushButton", None))
    # retranslateUi

