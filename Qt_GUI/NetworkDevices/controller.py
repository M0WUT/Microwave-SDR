from NetworkDevices.networkDevice import NetworkDevice
from warningHandler import WarningHandler
from PySide2.QtWidgets import QTabWidget


class Controller(NetworkDevice):
    def __init__(
        self, jsonDict: dict, warningHandler: WarningHandler,
        tabWidget: QTabWidget
    ):
        super().__init__(
            "controller", jsonDict, warningHandler, tabWidget
        )
