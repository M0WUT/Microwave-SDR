import os
from fcntl import ioctl
from config_user import NAME

STATUS_REGS_MAJOR_NUMBER = 202


class StatusRegs():
    ID = 0
    DISPFREQ = 1
    DISPMODE = 2
    RXMODE = 3
    PHACC1 = 4
    FFTACC = 5

    def __init__(self, filename, warnings):
        self.filename = filename
        self.warnings = warnings
        self.dev = os.open(self.filename, os.O_RDWR)

    def write(self, addr, data):
        dataBytes = str(data).encode('ascii')
        if ioctl(self.dev, STATUS_REGS_MAJOR_NUMBER, addr):
            self.warnings.add_error(
                NAME, "FPGA",
                "Failed to set status register address to {}".format(addr)
            )
        if(os.write(self.dev, dataBytes) != (len(dataBytes) + 1)):
            self.warnings.add_error(
                NAME, "FPGA",
                "Failed to write to status register address {}".format(addr)
            )

    def __del__(self):
        os.close(self.dev)
