EESchema Schematic File Version 4
LIBS:v1-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 32
Title ""
Date ""
Rev "DRAFT"
Comp "M0WUT"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5D6CE317
P 10750 5800
F 0 "#LOGO1" H 10750 6075 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10750 5575 50  0001 C CNN
F 2 "" H 10750 5800 50  0001 C CNN
F 3 "~" H 10750 5800 50  0001 C CNN
	1    10750 5800
	1    0    0    -1  
$EndComp
$Sheet
S 3950 2550 3250 2100
U 5D688202
F0 "Power Supply" 50
F1 "regulators_top.sch" 50
$EndSheet
$Sheet
S 950  800  1650 1150
U 5D96568C
F0 "RF ADC" 50
F1 "ltc2216.sch" 50
$EndSheet
$Sheet
S 3850 1300 1550 800 
U 5D96AFF8
F0 "FPGA" 50
F1 "fpga.sch" 50
$EndSheet
$Sheet
S 2100 5250 2600 1250
U 5DBEECB6
F0 "HDMI" 50
F1 "hdmi.sch" 50
$EndSheet
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5DD27D73
P 5950 5650
F 0 "H1" V 5904 5800 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 5800 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5950 5650 50  0001 C CNN
F 3 "~" H 5950 5650 50  0001 C CNN
	1    5950 5650
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5DD28DC8
P 5950 5850
F 0 "H2" V 5904 6000 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 6000 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5950 5850 50  0001 C CNN
F 3 "~" H 5950 5850 50  0001 C CNN
	1    5950 5850
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5DD2935B
P 5950 6050
F 0 "H3" V 5904 6200 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 6200 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5950 6050 50  0001 C CNN
F 3 "~" H 5950 6050 50  0001 C CNN
	1    5950 6050
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5DD29463
P 5950 6250
F 0 "H4" V 5904 6400 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 6400 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5950 6250 50  0001 C CNN
F 3 "~" H 5950 6250 50  0001 C CNN
	1    5950 6250
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 5DD2980D
P 5950 6450
F 0 "H5" V 5904 6600 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 6600 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5950 6450 50  0001 C CNN
F 3 "~" H 5950 6450 50  0001 C CNN
	1    5950 6450
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 5DD29B67
P 5950 6650
F 0 "H6" V 5904 6800 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 6800 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5950 6650 50  0001 C CNN
F 3 "~" H 5950 6650 50  0001 C CNN
	1    5950 6650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DD29BA8
P 5750 7350
F 0 "#PWR01" H 5750 7100 50  0001 C CNN
F 1 "GND" H 5755 7177 50  0000 C CNN
F 2 "" H 5750 7350 50  0001 C CNN
F 3 "" H 5750 7350 50  0001 C CNN
	1    5750 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5650 5850 5650
Wire Wire Line
	5850 5850 5750 5850
Connection ~ 5750 5850
Wire Wire Line
	5750 5850 5750 5650
Wire Wire Line
	5850 6050 5750 6050
Connection ~ 5750 6050
Wire Wire Line
	5750 6050 5750 5850
Wire Wire Line
	5850 6250 5750 6250
Connection ~ 5750 6250
Wire Wire Line
	5750 6250 5750 6050
Wire Wire Line
	5850 6450 5750 6450
Connection ~ 5750 6450
Wire Wire Line
	5750 6450 5750 6250
Wire Wire Line
	5850 6650 5750 6650
Connection ~ 5750 6650
Wire Wire Line
	5750 6650 5750 6450
$Comp
L Mechanical:MountingHole_Pad H7
U 1 1 5DD333DF
P 5950 7050
F 0 "H7" V 5904 7200 50  0000 L CNN
F 1 "MountingHole_Pad" V 5995 7200 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 5950 7050 50  0001 C CNN
F 3 "~" H 5950 7050 50  0001 C CNN
	1    5950 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 7050 5750 7050
Connection ~ 5750 7050
$Sheet
S 7550 1100 2000 1250
U 5DD04D63
F0 "User Interface" 50
F1 "ui.sch" 50
$EndSheet
$Comp
L Misc_WUT:Logo_16mmx16mm M1
U 1 1 5DDF9530
P 10400 6150
F 0 "M1" H 10425 6196 50  0000 L CNN
F 1 "Logo_16mmx16mm" H 10425 6105 50  0000 L CNN
F 2 "Misc_WUT:Logo_16mmx16mm" H 10400 6150 50  0001 C CNN
F 3 "" H 10400 6150 50  0001 C CNN
	1    10400 6150
	1    0    0    -1  
$EndComp
$Sheet
S 8000 3400 2100 1500
U 5DD6D4F3
F0 "AF ADC/DAC" 50
F1 "af_dac.sch" 50
$EndSheet
$Sheet
S 1200 2500 1550 1050
U 5DD6E120
F0 "RF DAC" 50
F1 "ad9744.sch" 50
$EndSheet
Wire Wire Line
	5750 7050 5750 7350
Wire Wire Line
	5750 6650 5750 7050
$EndSCHEMATC
