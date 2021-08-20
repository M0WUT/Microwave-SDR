# Standard imports
import logging
import json

# Third party imports


# Library imports
from config_developer import PIN_RS485_TX
from rs485Driver import RS485Driver, RS485Packet
from typing import List


class CardHandler:
    def __init__(self, filename, numSlots=2):
        self.numSlots = numSlots
        self.respondingAddresses = []
        self.driver = RS485Driver(
            gpio=PIN_RS485_TX,
            serialFile=filename,
            baud=115200
        )

    def __enter__(self):
        return self

    def __exit__(self, *args, **kwargs):
        self.driver.cleanup()

    def get_discovery_info(self, address: int) -> str:
        """ Gets discovery information from a single slot """
        packet = RS485Packet(
                address=address,
                command="D",
            )
        response = self.driver.query(packet)

        if response:
            # For this to be valid, first character must be a "D"
            if response[0] == ord("D"):
                response = json.loads(response[1:].decode('utf-8'))
            else:
                return None
            # If this card is new, add it
            if address not in self.respondingAddresses:
                logging.info("Discovered new card in slot {}".format(address))
                self.respondingAddresses.append(address)

        if not response and address in self.respondingAddresses:
            logging.warning("Card in slot {} not responding".format(address))
            self.respondingAddresses.remove(address)

        return response

    def get_all_discovery_info(self) -> List[str]:
        """ Returns discovery info for all slots in this rack """
        logging.info("Starting RS485 discovery")
        discoveryInfo = []
        for x in range(1, 1 + self.numSlots):
            response = self.get_discovery_info(x)
            if response:
                discoveryInfo.append(response)
        logging.info("Finished RS485 discovery")
        return discoveryInfo

    def get_status_info(self, address: int) -> str:
        """ Gets status information from a single slot """
        assert address in self.respondingAddresses
        packet = RS485Packet(
                address=address,
                command="S",
            )
        response = self.driver.query(packet)
        if response:
            # For this to be valid, first character must be a "S"
            if response[0] == ord("S"):
                response = json.loads(response[1:].decode('utf-8'))
            else:
                return None
        return response

    def get_all_status_info(self) -> List[str]:
        """ Returns status info for all responding slots in this rack """
        statusInfo = []
        for x in self.respondingAddresses:
            response = self.get_status_info(x)
            if response:
                statusInfo.append(response)
        return statusInfo
