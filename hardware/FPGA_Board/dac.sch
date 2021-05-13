EESchema Schematic File Version 4
LIBS:v1-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 19 26
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Analog_DAC:AD5689RxCPZ U23
U 1 1 5DDE418E
P 5750 3800
F 0 "U23" H 6050 4350 50  0000 C CNN
F 1 "AD5689RxCPZ" H 6200 3250 50  0000 C CNN
F 2 "Package_CSP:LFCSP-16-1EP_3x3mm_P0.5mm_EP1.854x1.854mm" H 5750 3800 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD5689R_5687R.pdf" H 5750 3800 50  0001 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 5DDE4B70
P 5850 4500
F 0 "#PWR0162" H 5850 4250 50  0001 C CNN
F 1 "GND" H 5855 4327 50  0000 C CNN
F 2 "" H 5850 4500 50  0001 C CNN
F 3 "" H 5850 4500 50  0001 C CNN
	1    5850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4500 5850 4400
$EndSCHEMATC
