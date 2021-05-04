import serial


class TransverterHandler:
    def __init__(self, filename, warnings):
        self.warnings = warnings
        try:
            self.serial = serial.Serial(filename, 9600, timeout=1)
        except serial.serialutil.SerialException:
            self.warnings.add_error(
                "Controller", "Transverter Control",
                "Couldn't open serial port: {}".format(filename)
            )

        self.serial.write(b"Hello world")
