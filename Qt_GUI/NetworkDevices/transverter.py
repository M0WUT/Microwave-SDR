from NetworkDevices.card import Card


class Transverter(Card):
    def __init__(
        self, address: int, name: str, sdrMac: str, loFreq: int,
        loAdd: bool, minFreq: int, maxFreq: int, minPower: int,
        maxPower: int, supportsRx: bool, supportsTx: bool,
        supportsDuplex: bool = False
    ):
        super().__init__(address=address, name=name)
        self.sdrMac = sdrMac
        self.loFreq = loFreq
        self.loAdd = loAdd
        self.minFreq = minFreq
        self.maxFreq = maxFreq
        self.minPower = minPower
        self.maxPower = maxPower
        self.supportsRx = supportsRx
        self.supportsTx = supportsTx
        self.supportsDuplex = supportsDuplex
        self.channel = None

    def get_type(self):
        return "Transverter"
