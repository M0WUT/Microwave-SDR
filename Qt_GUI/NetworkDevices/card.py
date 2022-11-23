from dataclasses import dataclass
from PySide2.QtWidgets import QPushButton
import logging


class Card:
    """Base class for anything installed in an SDR Rack"""
    def __init__(
        self, address: int, name: str
    ):
        self.address = address
        self.name = name
        self.warnings = []
        self.errors = []
        self.state = None
        self.rfPowerReadings = {}
        self.dcPowerReadings = {}
        self.temperatures = {}
        self.button = None

    def __eq__(self, other):
        return (
            (type(self) == type(other)) and
            (self.address == other.address) and
            (self.name) == other.name
        )

    def set_button(self, button: QPushButton):
        self.button = button
        button.clicked.connect(lambda: self.show_info())

    def show_info(self):
        logging.critical("Hello from card in address {}!".format(self.address))  # @DEBUG

    def get_type(self) -> str:
        """ Returns string name of this card type """
        raise NotImplementedError
