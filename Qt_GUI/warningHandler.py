# This Python file uses the following encoding: utf-8
from PySide2.QtGui import QIcon
from PySide2.QtWidgets import QTableWidgetItem, QAbstractItemView, QHeaderView
from PySide2.QtCore import QObject, Qt, Signal
from datetime import datetime, timezone
import logging
from config_developer import TAB_WARNINGS, TAB_HOME
from config_user import NAME
import json


class Sadness():
    """
    Object containing details of errors / warnings reported by any device
    on MQTT network

    Args:
        sourceMac (str): MAC Address of the machine reporting the error
            expressed as xx:xx:xx:xx:xx:xx where x is a hexadecimal
            character (uppercase if letter). This is used to uniquely
            identify a device as all other properties
            can change.
        category (str): General category of section reporting the error
            This can be anything - it's not defined anywhere
        message (str): Detailed explanation of the problem

    Attributes:
        source (str): Name of the device reporting the error
        category (str): General category of section reporting the error
            This can be anything - it's not defined anywhere
        message (str): Detailed explanation of the problem
        time (datetime.datetime): Datetime object when the problem
            was recorded

    Returns:
        None

    Raises:
        None
    """
    def __init__(self, source, category, message, date=None, time=None):
        if date is not None:
            assert time is not None
            day, month, year = date.split('/')
            hour, minute, second = time.split(' ')[0].split(':')
            self.time = datetime(
                int(year), int(month), int(day), int(hour), int(minute), int(second), microsecond=0,
                tzinfo=timezone.utc
            )
        else:
            self.time = datetime.now(timezone.utc)

        self.source = source
        self.category = category
        self.message = message

    def json(self):
        jsonBlob = {
            "date": self.time.strftime('%d/%m/%Y'),
            "time": self.time.strftime('%H:%M:%S Z'),
            "source": self.source,
            "category": self.category,
            "message": self.message
        }
        return jsonBlob


class Warning(Sadness):
    def __init__(self, source, category, message, date=None, time=None):
        super().__init__(source, category, message, date, time)


class Error(Sadness):
    def __init__(self, source, category, message, date=None, time=None):
        super().__init__(source, category, message, date, time)


class WarningHandler(QObject):
    """
    Handler for all errors / warnings reported by any device
    on MQTT network

    Args:
        tabWidget (QTabWidget): Tab Widget in which errors / warnings
            should be reported
        warningTable (QTableWidget): Table for displaying errors / warnings
        buttons (List[QButton]): List of 6 buttons used to control
            this handler's features

    Attributes:
        tabWidget (QTabWidget): Tab Widget in which errors / warnings
            should be reported
        warningTable (QTableWidget): Table for displaying errors / warnings
        buttons (List[QButton]): List of 6 buttons used to control
            this handler's features
        warnings (List[Sadness]): List of all reported warnings
        errors (List[Sadness]): List of all reported errors
        button_clear (QButton): Button used to erase all previous errors
        button_showErrors (QButton): Button used to show / hide errors
        button_showWarnings (QButton): Button used to show / hide warnings

    Returns:
        None

    Raises:
        None
    """

    def __init__(self, tabWidget, warningTable, buttons, statusBar):

        # Initialisation
        self.tabWidget = tabWidget
        self.warningTable = warningTable
        self.buttons = buttons
        self.statusBar = statusBar
        self.warnings = []
        self.errors = []
        self.mqtt = None
        self._update_icon()

        # Name buttons to allow for easier re-arrangment
        self.button_clear = self.buttons[0]
        self.button_showErrors = self.buttons[1]
        self.button_showWarnings = self.buttons[2]

        # Setup table layout
        self.columnHeadings = \
            ['Date', 'Time', 'Source', 'Type', 'Category', 'Message']
        self.warningTable.setColumnCount(len(self.columnHeadings))
        self.warningTable.setHorizontalHeaderLabels(
            self.columnHeadings
        )

        # Set all but last column to 200px wide
        for i in range(len(self.columnHeadings) - 1):
            self.warningTable.setColumnWidth(i, 200)

        self.warningTable.horizontalHeader().setStretchLastSection(True)
        self.warningTable.verticalHeader().setSectionResizeMode(
            QHeaderView.ResizeMode.ResizeToContents
        )
        self.warningTable.verticalHeader().setVisible(False)

        # Prevent silly border when table is clicked on
        self.warningTable.setFocusPolicy(Qt.NoFocus)
        self.warningTable.setSelectionMode(QAbstractItemView.NoSelection)

        # Initially show both errors and warnings
        self.show_errors()
        self.show_warnings()

    def __enter__(self):
        return self

    def __exit__(self, *args, **kwargs):
        pass

    def register_mqtt(self, x):
        self.mqtt = x

        # Add MQTT callback for warnings
        self.mqtt.register_callback(
            "/discovery/warnings",
            self.rx_warnings
        )

        self.mqtt.register_callback(
            "/discovery/errors",
            self.rx_errors
        )

    def _update_icon(self):
        if self.errors:
            self.tabWidget.setTabEnabled(TAB_WARNINGS, True)
            self.tabWidget.setTabIcon(
                TAB_WARNINGS,
                QIcon('resources/img/icon_error.png')
            )
        elif self.warnings:
            self.tabWidget.setTabEnabled(TAB_WARNINGS, True)
        else:
            self.tabWidget.setTabEnabled(TAB_WARNINGS, False)

    def add_status(self, message: str) -> None:
        self.statusBar.showMessage(message, timeout=2000)

    def add_warning(
        self, source, category, message, broadcast=False, date=None, time=None
    ):
        """
        Records new warnings

        Args:
            source (str): Human readable name of the device
                reporting the error
            category (str): Error category - can be anything
            message (str): Detailed description of the warning
            broadcast (str): True if warning should be published
                to MQTT broker. This should only happen if the error
                happens local to this application.

        Returns:
            None

        Raises:
            None
        """
        logging.warning(f"[{source}] {category}: {message}")
        x = Warning(
            source,
            category,
            message,
            date,
            time
        )
        self._add_item(x)
        self.warnings.append(x)
        self._update_icon()
        if(broadcast):
            self.mqtt.publish(
                '/discovery/warnings',
                json.dumps(x.json())
            )

    def add_error(
        self, source, category, message, broadcast=False, date=None, time=None
    ):
        """
        Records new error

        Args:
            source (str): Human readable name of the device
                reporting the error
            category (str): Error category - can be anything
            message (str): Detailed description of the error
            broadcast (str): True if error should be published
                to MQTT broker. This should only happen if the error
                happens local to this application

        Returns:
            None

        Raises:
            None
        """
        logging.error(f"[{source}] {category}: {message}")
        x = Error(
            source,
            category,
            message,
            date,
            time
        )
        self._add_item(x)
        self.errors.append(x)
        self._update_icon()
        if(broadcast):
            self.mqtt.publish(
                '/discovery/warnings',
                json.dumps(x.json())
            )

    def _add_item(self, sadness: Sadness):

        rowCount = self.warningTable.rowCount()
        self.warningTable.insertRow(rowCount)

        x = QTableWidgetItem(sadness.time.strftime('%d/%m/%Y'))
        x.setTextAlignment(Qt.AlignCenter)
        x.setFlags(Qt.NoItemFlags)
        self.warningTable.setItem(rowCount, 0, x)

        x = QTableWidgetItem(sadness.time.strftime('%H:%M:%S Z'))
        x.setTextAlignment(Qt.AlignCenter)
        x.setFlags(Qt.NoItemFlags)
        self.warningTable.setItem(rowCount, 1, x)

        x = QTableWidgetItem(sadness.source)
        x.setFlags(Qt.NoItemFlags)
        self.warningTable.setItem(rowCount, 2, x)

        x = QTableWidgetItem(
            "ERROR" if isinstance(sadness, Error) else "Warning"
        )
        x.setTextAlignment(Qt.AlignCenter)
        x.setFlags(Qt.NoItemFlags)
        self.warningTable.setItem(rowCount, 3, x)

        x = QTableWidgetItem(sadness.category)
        x.setTextAlignment(Qt.AlignCenter)
        x.setFlags(Qt.NoItemFlags)
        self.warningTable.setItem(rowCount, 4, x)

        x = QTableWidgetItem(sadness.message)
        x.setFlags(Qt.NoItemFlags)
        self.warningTable.setItem(rowCount, 5, x)

        if(isinstance(sadness, Error)):
            self.warningTable.setRowHidden(rowCount, not self.showingErrors)
        elif(isinstance(sadness, Warning)):
            self.warningTable.setRowHidden(rowCount, not self.showingWarnings)
        else:
            raise NotImplementedError

        self._update_icon()

    def rx_warnings(self, msg):
        if(msg['source'] != NAME):
            self.add_warning(
                date=msg['date'],
                time=msg['time'],
                source=msg['source'],
                category=msg['category'],
                message=msg['message'],
                broadcast=False
            )

    def rx_errors(self, msg):
        if(msg['source'] != NAME):
            self.add_error(
                date=msg['date'],
                time=msg['time'],
                source=msg['source'],
                category=msg['category'],
                message=msg['message'],
                broadcast=False
            )

    def clear_all(self):
        """
        Deletes all recorded warnings/errors

        Args:
            None

        Returns:
            None

        Raises:
            None
        """
        logging.info("Warnings and errors cleared")
        while self.warningTable.rowCount() > 0:
            self.warningTable.removeRow(0)
        self.warnings = []
        self.errors = []
        self._update_icon()
        self.tabWidget.setCurrentIndex(TAB_HOME)

    def _filter(self):
        for i in range(self.warningTable.rowCount()):
            typeColumn = self.columnHeadings.index("Type")
            if(self.warningTable.item(i, typeColumn).text() == "ERROR"):
                self.warningTable.setRowHidden(i, not self.showingErrors)
            else:
                self.warningTable.setRowHidden(i, not self.showingWarnings)

    def show_errors(self, enabled=True):
        self.button_showErrors.setText(
            "Show\nErrors\n" + ("✓" if enabled else "x")
        )
        logging.debug(
            ("Showing" if enabled else "Hiding") +
            " errors from warnings table"
        )
        self.showingErrors = enabled
        self._filter()

    def show_warnings(self, enabled=True):
        self.button_showWarnings.setText(
            "Show\nWarnings\n" + ("✓" if enabled else "x")
        )
        logging.debug(
            ("Showing" if enabled else "Hiding") +
            " warnings from warnings table"
        )
        self.showingWarnings = enabled
        self._filter()

    def get_warnings(self):
        # Get only warnings generated by this machine
        myWarningList = [e for e in self.warnings if e.source == NAME]
        jsonBlob = []
        for x in myWarningList:
            jsonBlob.append({
                "date": x.time.strftime('%d/%m/%Y'),
                "time": x.time.strftime('%H:%M:%S Z'),
                "source": NAME,
                "category": x.category,
                "message": x.message
            })
        return jsonBlob

    def get_errors(self):
        # Get only errors generated by this machine
        myWarningList = [e for e in self.errors if e.source == NAME]
        jsonBlob = []
        for x in myWarningList:
            jsonBlob.append(x.json())
        return jsonBlob

    def tab_enabled(self):
        """
        Callback when the warnings tab becomes active

        Args:
            None

        Returns:
            None

        Raises:
            None
        """
        # Setup buttons
        self.button_clear.setText("Clear\nAll")
        self.button_clear.setEnabled(True)
        self.button_clear.clicked.connect(self.clear_all)

        self.button_showErrors.setEnabled(True)
        self.button_showErrors.setCheckable(True)
        self.button_showErrors.toggled.connect(self.show_errors)
        self.button_showErrors.toggle()

        self.button_showWarnings.setEnabled(True)
        self.button_showWarnings.setCheckable(True)
        self.button_showWarnings.toggled.connect(self.show_warnings)
        self.button_showWarnings.toggle()
