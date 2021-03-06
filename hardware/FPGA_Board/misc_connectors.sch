EESchema Schematic File Version 4
LIBS:v1-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 18 32
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
L Connector:Micro_SD_Card_Det J?
U 1 1 5D718005
P 5600 4700
AR Path="/5D96AEF4/5D718005" Ref="J?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D718005" Ref="J12"  Part="1" 
F 0 "J12" H 5550 5517 50  0000 C CNN
F 1 "Micro_SD_Card_Det" H 5550 5426 50  0000 C CNN
F 2 "Connector_WUT:Micro-SD_Molex_503398-1892" H 7650 5400 50  0001 C CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/DM3/category/Catalog/doc_file_id/49662/?file_category_id=4&item_id=195&is_series=1" H 5600 4800 50  0001 C CNN
	1    5600 4700
	1    0    0    -1  
$EndComp
$Comp
L IC_WUT:TXS02612 U?
U 1 1 5D757936
P 2500 4850
AR Path="/5D96AEF4/5D757936" Ref="U?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D757936" Ref="U20"  Part="1" 
F 0 "U20" H 2850 5950 50  0000 C CNN
F 1 "TXS02612" H 2850 3750 50  0000 C CNN
F 2 "IC_WUT:WQFN-24-1EP_4.1x4.1mm_P0.5mm_EP2.45x2.45mm" H 2500 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txs02612.pdf" H 2500 4850 50  0001 C CNN
	1    2500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5200 4050 5200
Wire Wire Line
	4050 5200 4050 4300
Wire Wire Line
	4050 4300 4700 4300
Wire Wire Line
	4150 4400 4150 5450
Wire Wire Line
	4150 5450 3000 5450
Wire Wire Line
	4150 4400 4700 4400
Wire Wire Line
	4700 4500 3800 4500
Wire Wire Line
	3800 4500 3800 4450
Wire Wire Line
	3800 4450 3000 4450
Wire Wire Line
	4700 4700 3650 4700
Wire Wire Line
	3650 4700 3650 4200
Wire Wire Line
	3650 4200 3000 4200
Wire Wire Line
	4700 4900 3500 4900
Wire Wire Line
	3500 4900 3500 4700
Wire Wire Line
	3500 4700 3000 4700
Wire Wire Line
	4700 5000 3450 5000
NoConn ~ 3000 4300
NoConn ~ 3000 4550
NoConn ~ 3000 4800
Wire Wire Line
	3000 4950 3450 4950
Wire Wire Line
	3450 4950 3450 5000
NoConn ~ 3000 5050
NoConn ~ 3000 5300
NoConn ~ 3000 5550
$Comp
L power:GND #PWR?
U 1 1 5D75C973
P 2500 6050
AR Path="/5D96AEF4/5D75C973" Ref="#PWR?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D75C973" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 2500 5800 50  0001 C CNN
F 1 "GND" H 2505 5877 50  0000 C CNN
F 2 "" H 2500 6050 50  0001 C CNN
F 3 "" H 2500 6050 50  0001 C CNN
	1    2500 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5950 2500 6050
Text Notes 2950 6400 0    50   ~ 0
Yes, it's overkill to use a switch\nbut the one port version was BGA \nonly and this is hard enough without that!
Wire Wire Line
	2600 3450 2500 3450
Wire Wire Line
	2500 3450 2500 3700
Wire Wire Line
	2700 3700 2700 3450
Wire Wire Line
	2700 3450 2600 3450
Connection ~ 2600 3450
$Comp
L Device:C C?
U 1 1 5D75E544
P 3100 3350
AR Path="/5D96AEF4/5D75E544" Ref="C?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D75E544" Ref="C96"  Part="1" 
F 0 "C96" H 3215 3396 50  0000 L CNN
F 1 "100nF" H 3215 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 3200 50  0001 C CNN
F 3 "~" H 3100 3350 50  0001 C CNN
	1    3100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3200 3100 3100
Wire Wire Line
	2600 3100 2600 3450
$Comp
L power:GND #PWR?
U 1 1 5D75FACA
P 3100 3600
AR Path="/5D96AEF4/5D75FACA" Ref="#PWR?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D75FACA" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 3100 3350 50  0001 C CNN
F 1 "GND" H 3105 3427 50  0000 C CNN
F 2 "" H 3100 3600 50  0001 C CNN
F 3 "" H 3100 3600 50  0001 C CNN
	1    3100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4600 4550 4600
$Comp
L Device:C C?
U 1 1 5D761B76
P 4750 3650
AR Path="/5D96AEF4/5D761B76" Ref="C?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D761B76" Ref="C97"  Part="1" 
F 0 "C97" H 4865 3696 50  0000 L CNN
F 1 "100nF" H 4865 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4788 3500 50  0001 C CNN
F 3 "~" H 4750 3650 50  0001 C CNN
	1    4750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3500 4750 3500
$Comp
L power:GND #PWR?
U 1 1 5D7624E0
P 4750 3900
AR Path="/5D96AEF4/5D7624E0" Ref="#PWR?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D7624E0" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 4750 3650 50  0001 C CNN
F 1 "GND" H 4755 3727 50  0000 C CNN
F 2 "" H 4750 3900 50  0001 C CNN
F 3 "" H 4750 3900 50  0001 C CNN
	1    4750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3900 4750 3800
$Comp
L power:GND #PWR?
U 1 1 5D767658
P 4550 5450
AR Path="/5D96AEF4/5D767658" Ref="#PWR?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D767658" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 4550 5200 50  0001 C CNN
F 1 "GND" H 4555 5277 50  0000 C CNN
F 2 "" H 4550 5450 50  0001 C CNN
F 3 "" H 4550 5450 50  0001 C CNN
	1    4550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4800 4550 4800
Wire Wire Line
	4550 4800 4550 5450
$Comp
L power:GND #PWR?
U 1 1 5D7681D7
P 6450 5450
AR Path="/5D96AEF4/5D7681D7" Ref="#PWR?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D7681D7" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 6450 5200 50  0001 C CNN
F 1 "GND" H 6455 5277 50  0000 C CNN
F 2 "" H 6450 5450 50  0001 C CNN
F 3 "" H 6450 5450 50  0001 C CNN
	1    6450 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5450 6450 5200
Wire Wire Line
	6450 5200 6400 5200
$Comp
L power:GND #PWR?
U 1 1 5D768D15
P 1650 6050
AR Path="/5D96AEF4/5D768D15" Ref="#PWR?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D768D15" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 1650 5800 50  0001 C CNN
F 1 "GND" H 1655 5877 50  0000 C CNN
F 2 "" H 1650 6050 50  0001 C CNN
F 3 "" H 1650 6050 50  0001 C CNN
	1    1650 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6050 1650 5750
Wire Wire Line
	1650 5300 2050 5300
$Comp
L power:+3V3 #PWR?
U 1 1 5D91372D
P 3250 950
AR Path="/5D96AEF4/5D91372D" Ref="#PWR?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D91372D" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 3250 800 50  0001 C CNN
F 1 "+3V3" H 3265 1123 50  0000 C CNN
F 2 "" H 3250 950 50  0001 C CNN
F 3 "" H 3250 950 50  0001 C CNN
	1    3250 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D913D2F
P 4550 3050
AR Path="/5D96AEF4/5D913D2F" Ref="#PWR?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D913D2F" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 4550 2900 50  0001 C CNN
F 1 "+3V3" H 4565 3223 50  0000 C CNN
F 2 "" H 4550 3050 50  0001 C CNN
F 3 "" H 4550 3050 50  0001 C CNN
	1    4550 3050
	1    0    0    -1  
$EndComp
NoConn ~ 4700 5100
NoConn ~ 4700 5200
Wire Wire Line
	3100 3500 3100 3600
Wire Wire Line
	2050 4600 1450 4600
Wire Wire Line
	2050 4700 1450 4700
Wire Wire Line
	2050 4800 1450 4800
Wire Wire Line
	2050 4900 1450 4900
Wire Wire Line
	2050 5000 1450 5000
Wire Wire Line
	2050 5100 1450 5100
Text GLabel 1450 4600 0    50   Input ~ 0
SD_CLK
Text GLabel 1450 4700 0    50   BiDi ~ 0
SD_CMD
Text GLabel 1450 4800 0    50   BiDi ~ 0
SD_DAT0
Text GLabel 1450 4900 0    50   BiDi ~ 0
SD_DAT1
Text GLabel 1450 5000 0    50   BiDi ~ 0
SD_DAT2
Text GLabel 1450 5100 0    50   BiDi ~ 0
SD_DAT3
$Comp
L Misc_WUT:JTAG-SMT3 U18
U 1 1 5D978F51
P 11150 2450
F 0 "U18" H 11450 3050 50  0000 C CNN
F 1 "JTAG-SMT3" H 11500 1900 50  0000 C CNN
F 2 "Misc_WUT:JTAG-SMT3-NC" H 11300 2300 50  0001 C CNN
F 3 "" H 11300 2300 50  0001 C CNN
	1    11150 2450
	-1   0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0137
U 1 1 5D97A31A
P 1850 1000
F 0 "#PWR0137" H 1850 850 50  0001 C CNN
F 1 "+1V8" H 1865 1173 50  0000 C CNN
F 2 "" H 1850 1000 50  0001 C CNN
F 3 "" H 1850 1000 50  0001 C CNN
	1    1850 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D97E428
P 1850 3350
AR Path="/5D96AEF4/5D97E428" Ref="C?"  Part="1" 
AR Path="/5D96AFF8/5D96C261/5D97E428" Ref="C95"  Part="1" 
F 0 "C95" H 1965 3396 50  0000 L CNN
F 1 "100nF" H 1965 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1888 3200 50  0001 C CNN
F 3 "~" H 1850 3350 50  0001 C CNN
	1    1850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3200 1850 3100
Wire Wire Line
	1850 3500 1850 3600
Wire Wire Line
	1850 3100 2050 3100
Wire Wire Line
	2300 3100 2300 3700
$Comp
L power:GND #PWR0144
U 1 1 5D97FF80
P 1850 3600
F 0 "#PWR0144" H 1850 3350 50  0001 C CNN
F 1 "GND" H 1855 3427 50  0000 C CNN
F 2 "" H 1850 3600 50  0001 C CNN
F 3 "" H 1850 3600 50  0001 C CNN
	1    1850 3600
	1    0    0    -1  
$EndComp
$Comp
L FET_WUT:SI1539CDL-T1-GE3 Q11
U 1 1 5D98B10A
P 3250 1850
F 0 "Q11" H 3356 1896 50  0000 L CNN
F 1 "SI1539CDL-T1-GE3" H 3356 1805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3250 1850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2046888.pdf?_ga=2.10385267.757253015.1566033402-1939168838.1503764787&_gac=1.194507103.1566045244.Cj0KCQjwy97qBRDoARIsAITONTJuV5xFoCHf_GI1a48CAr1bhcTG8MWnV8MNsj2BZU5FrIPf5CF8XT8aAi5HEALw_wcB" H 3250 1850 50  0001 C CNN
	1    3250 1850
	1    0    0    -1  
$EndComp
$Comp
L FET_WUT:SI1539CDL-T1-GE3 Q11
U 2 1 5D98C183
P 2300 2450
F 0 "Q11" H 2406 2496 50  0000 L CNN
F 1 "SI1539CDL-T1-GE3" H 2406 2405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2300 2450 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2046888.pdf?_ga=2.10385267.757253015.1566033402-1939168838.1503764787&_gac=1.194507103.1566045244.Cj0KCQjwy97qBRDoARIsAITONTJuV5xFoCHf_GI1a48CAr1bhcTG8MWnV8MNsj2BZU5FrIPf5CF8XT8aAi5HEALw_wcB" H 2300 2450 50  0001 C CNN
	2    2300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2500 1850 2500
Wire Wire Line
	1850 2500 1850 3100
Connection ~ 1850 2500
Connection ~ 1850 3100
$Comp
L power:GND #PWR0141
U 1 1 5D9AE75F
P 2300 2750
F 0 "#PWR0141" H 2300 2500 50  0001 C CNN
F 1 "GND" H 2305 2577 50  0000 C CNN
F 2 "" H 2300 2750 50  0001 C CNN
F 3 "" H 2300 2750 50  0001 C CNN
	1    2300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2750 2300 2650
$Comp
L Device:R R102
U 1 1 5D9B1841
P 2800 1550
F 0 "R102" H 2870 1596 50  0000 L CNN
F 1 "10k" H 2870 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2730 1550 50  0001 C CNN
F 3 "~" H 2800 1550 50  0001 C CNN
	1    2800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1700 2800 1800
Wire Wire Line
	3000 1800 2800 1800
Wire Wire Line
	2800 1400 2800 1350
Wire Wire Line
	2800 1350 3250 1350
Wire Wire Line
	3250 1350 3250 1300
Wire Wire Line
	3250 1650 3250 1350
Connection ~ 3250 1350
Wire Wire Line
	2600 3100 2800 3100
Wire Wire Line
	2300 2250 2300 1800
Connection ~ 2800 1800
Wire Wire Line
	2300 1800 2800 1800
Wire Wire Line
	3250 2050 3250 3100
Wire Wire Line
	3250 3100 3100 3100
Connection ~ 3100 3100
Text Notes 3350 2350 0    50   ~ 0
VCCA must be applied before VCCB.\nAs 1V8 is stage 3 and 3V3 is stage 2,\na delay is needed
$Comp
L power:GND #PWR0143
U 1 1 5D9C7550
P 11150 3150
F 0 "#PWR0143" H 11150 2900 50  0001 C CNN
F 1 "GND" H 11155 2977 50  0000 C CNN
F 2 "" H 11150 3150 50  0001 C CNN
F 3 "" H 11150 3150 50  0001 C CNN
	1    11150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 3150 11150 3050
Wire Wire Line
	10650 2250 10250 2250
Wire Wire Line
	10650 2350 9750 2350
Wire Wire Line
	10650 2450 9750 2450
Wire Wire Line
	10650 2550 10250 2550
Text GLabel 10250 2250 0    50   Output ~ 0
JTAG_TMS
Text GLabel 9350 2350 0    50   Output ~ 0
JTAG_TDI
Text GLabel 9350 2450 0    50   Input ~ 0
JTAG_TDO
Text GLabel 10250 2550 0    50   Output ~ 0
JTAG_TCK
Wire Wire Line
	11050 1800 11050 1400
$Comp
L Device:C C90
U 1 1 5D9DC947
P 9900 1550
F 0 "C90" H 10015 1596 50  0000 L CNN
F 1 "1u" H 10015 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9938 1400 50  0001 C CNN
F 3 "~" H 9900 1550 50  0001 C CNN
	1    9900 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C91
U 1 1 5D9DD213
P 10300 1550
F 0 "C91" H 10415 1596 50  0000 L CNN
F 1 "100n" H 10415 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10338 1400 50  0001 C CNN
F 3 "~" H 10300 1550 50  0001 C CNN
	1    10300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1400 9900 1250
Wire Wire Line
	10300 1400 10300 1250
Wire Wire Line
	10300 1700 10300 1800
Wire Wire Line
	10700 1800 10500 1800
Wire Wire Line
	9900 1800 9900 1700
$Comp
L power:GND #PWR0138
U 1 1 5D9E2800
P 10500 1850
F 0 "#PWR0138" H 10500 1600 50  0001 C CNN
F 1 "GND" H 10505 1677 50  0000 C CNN
F 2 "" H 10500 1850 50  0001 C CNN
F 3 "" H 10500 1850 50  0001 C CNN
	1    10500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1850 10500 1800
Connection ~ 10500 1800
Wire Wire Line
	11250 1800 11250 1400
$Comp
L power:+3.3V #PWR0136
U 1 1 5D9E64B9
P 11250 950
F 0 "#PWR0136" H 11250 800 50  0001 C CNN
F 1 "+3.3V" H 11265 1123 50  0000 C CNN
F 2 "" H 11250 950 50  0001 C CNN
F 3 "" H 11250 950 50  0001 C CNN
	1    11250 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB5
U 1 1 5D9E7138
P 3250 1150
F 0 "FB5" H 3387 1196 50  0000 L CNN
F 1 "Ferrite_Bead" H 3387 1105 50  0001 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3180 1150 50  0001 C CNN
F 3 "~" H 3250 1150 50  0001 C CNN
	1    3250 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB7
U 1 1 5D9EA75C
P 1850 1200
F 0 "FB7" H 1987 1246 50  0000 L CNN
F 1 "Ferrite_Bead" H 1987 1155 50  0001 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1780 1200 50  0001 C CNN
F 3 "~" H 1850 1200 50  0001 C CNN
	1    1850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1050 1850 1000
Wire Wire Line
	1850 1350 1850 2500
Wire Wire Line
	3250 1000 3250 950 
$Comp
L Device:Ferrite_Bead FB6
U 1 1 5D9F7A94
P 11250 1150
F 0 "FB6" H 11387 1196 50  0000 L CNN
F 1 "Ferrite_Bead" H 11387 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 11180 1150 50  0001 C CNN
F 3 "~" H 11250 1150 50  0001 C CNN
	1    11250 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R103
U 1 1 5D9FBE01
P 13350 1800
F 0 "R103" H 13420 1846 50  0000 L CNN
F 1 "4k7" H 13420 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 13280 1800 50  0001 C CNN
F 3 "~" H 13350 1800 50  0001 C CNN
	1    13350 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R104
U 1 1 5D9FD0EE
P 13350 2200
F 0 "R104" H 13420 2246 50  0000 L CNN
F 1 "10k" H 13420 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 13280 2200 50  0001 C CNN
F 3 "~" H 13350 2200 50  0001 C CNN
	1    13350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 1950 13350 2000
Wire Wire Line
	13000 2000 13350 2000
Connection ~ 13350 2000
Wire Wire Line
	13350 2000 13350 2050
$Comp
L power:GND #PWR0140
U 1 1 5DA016E6
P 13350 2400
F 0 "#PWR0140" H 13350 2150 50  0001 C CNN
F 1 "GND" H 13355 2227 50  0000 C CNN
F 2 "" H 13350 2400 50  0001 C CNN
F 3 "" H 13350 2400 50  0001 C CNN
	1    13350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 2400 13350 2350
Wire Wire Line
	10650 2650 10250 2650
Text GLabel 10250 2650 0    50   Output ~ 0
~PS_RESET
$Comp
L Device:EMI_Filter_CommonMode FL2
U 1 1 5DA06835
P 14000 3300
F 0 "FL2" H 14000 3581 50  0000 C CNN
F 1 "744231091" H 14000 3490 50  0000 C CNN
F 2 "Filter_WUT:Wurth_CM_USB_744231091" H 14000 3340 50  0001 C CNN
F 3 "~" H 14000 3340 50  0001 C CNN
	1    14000 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	13500 3200 13800 3200
Wire Wire Line
	13800 3400 13500 3400
Text Label 11800 2450 0    50   ~ 0
USB_DBG_D-
Text Label 11800 2550 0    50   ~ 0
USB_DBG_D+
Wire Wire Line
	14550 3050 14650 3050
$Comp
L power:GND #PWR0146
U 1 1 5DA19783
P 15000 3750
F 0 "#PWR0146" H 15000 3500 50  0001 C CNN
F 1 "GND" H 15005 3577 50  0000 C CNN
F 2 "" H 15000 3750 50  0001 C CNN
F 3 "" H 15000 3750 50  0001 C CNN
	1    15000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	14950 3650 14950 3700
Wire Wire Line
	14950 3700 15000 3700
Wire Wire Line
	15050 3700 15050 3650
Wire Wire Line
	15000 3750 15000 3700
Connection ~ 15000 3700
Wire Wire Line
	15000 3700 15050 3700
NoConn ~ 14650 3450
Wire Wire Line
	14200 3200 14450 3200
Wire Wire Line
	14450 3200 14450 3350
Wire Wire Line
	14450 3350 14650 3350
Wire Wire Line
	14200 3400 14400 3400
Wire Wire Line
	14400 3400 14400 3250
Wire Wire Line
	14400 3250 14650 3250
$Comp
L Device:C C93
U 1 1 5DA2DA45
P 14200 1750
F 0 "C93" H 14315 1796 50  0000 L CNN
F 1 "1u" H 14315 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14238 1600 50  0001 C CNN
F 3 "~" H 14200 1750 50  0001 C CNN
	1    14200 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C94
U 1 1 5DA2EA3E
P 14700 1750
F 0 "C94" H 14815 1796 50  0000 L CNN
F 1 "100n" H 14815 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14738 1600 50  0001 C CNN
F 3 "~" H 14700 1750 50  0001 C CNN
	1    14700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	14700 1500 14700 1600
Wire Wire Line
	14200 1500 14200 1600
Connection ~ 14200 1500
Wire Wire Line
	14200 1500 14700 1500
Wire Wire Line
	14200 1900 14200 2000
Wire Wire Line
	14200 2000 14450 2000
Wire Wire Line
	14700 2000 14700 1900
$Comp
L power:GND #PWR0139
U 1 1 5DA38D2A
P 14450 2100
F 0 "#PWR0139" H 14450 1850 50  0001 C CNN
F 1 "GND" H 14455 1927 50  0000 C CNN
F 2 "" H 14450 2100 50  0001 C CNN
F 3 "" H 14450 2100 50  0001 C CNN
	1    14450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 2100 14450 2000
Connection ~ 14450 2000
Wire Wire Line
	14450 2000 14700 2000
$Comp
L Device:Ferrite_Bead FB8
U 1 1 5D99A701
P 13950 2450
F 0 "FB8" H 14087 2496 50  0000 L CNN
F 1 "Ferrite_Bead" H 14087 2405 50  0001 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 13880 2450 50  0001 C CNN
F 3 "~" H 13950 2450 50  0001 C CNN
	1    13950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14550 2800 14550 3050
Wire Wire Line
	13950 2300 13950 1500
$Comp
L Power_Protection:TPD2S017 U19
U 1 1 5D9A8848
P 13000 3300
F 0 "U19" H 13000 3981 50  0000 C CNN
F 1 "TPD2S017" H 13000 3890 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 12250 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd2s017.pdf" H 13000 3300 50  0001 C CNN
	1    13000 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0148
U 1 1 5D9B4EAB
P 13000 3850
F 0 "#PWR0148" H 13000 3600 50  0001 C CNN
F 1 "GND" H 13005 3677 50  0000 C CNN
F 2 "" H 13000 3850 50  0001 C CNN
F 3 "" H 13000 3850 50  0001 C CNN
	1    13000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 3850 13000 3800
Wire Wire Line
	12500 2450 12500 3200
Wire Wire Line
	11700 2450 12500 2450
Wire Wire Line
	12400 3400 12400 2550
Wire Wire Line
	11700 2550 12400 2550
Wire Wire Line
	11700 2350 13000 2350
Wire Wire Line
	13000 2000 13000 2350
Wire Wire Line
	13350 1650 13350 1500
Wire Wire Line
	13950 2600 13950 2800
Wire Wire Line
	13950 2800 14550 2800
Wire Wire Line
	13000 2800 13950 2800
Connection ~ 13950 2800
Wire Wire Line
	12500 3400 12400 3400
Wire Wire Line
	13950 1500 14200 1500
Wire Wire Line
	13350 1500 13950 1500
Connection ~ 13950 1500
$Comp
L Device:Ferrite_Bead FB9
U 1 1 5D9FFC03
P 4550 3250
F 0 "FB9" H 4687 3296 50  0000 L CNN
F 1 "Ferrite_Bead" H 4687 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4480 3250 50  0001 C CNN
F 3 "~" H 4550 3250 50  0001 C CNN
	1    4550 3250
	1    0    0    -1  
$EndComp
Connection ~ 4550 3500
Wire Wire Line
	4550 3500 4550 3700
Wire Wire Line
	4550 3050 4550 3100
Wire Wire Line
	4550 3400 4550 3500
Wire Wire Line
	11250 950  11250 1000
Wire Wire Line
	13950 7350 13700 7350
Wire Wire Line
	13950 7550 13700 7550
Wire Wire Line
	13950 7700 13700 7700
Wire Wire Line
	13950 8050 13700 8050
Wire Wire Line
	13950 8250 13700 8250
Wire Wire Line
	13950 8400 13700 8400
Wire Wire Line
	13950 8600 13700 8600
Wire Wire Line
	13950 7900 13700 7900
Wire Wire Line
	13950 9050 13800 9050
Wire Wire Line
	13950 9350 13800 9350
Text GLabel 13700 7350 0    50   Input ~ 0
ETH_MDI0_P
Text GLabel 13700 7550 0    50   Input ~ 0
ETH_MDI0_N
Text GLabel 13700 7700 0    50   Input ~ 0
ETH_MDI1_P
Text GLabel 13700 7900 0    50   Input ~ 0
ETH_MDI1_N
Text GLabel 13700 8050 0    50   Input ~ 0
ETH_MDI2_P
Text GLabel 13700 8250 0    50   Input ~ 0
ETH_MDI2_N
Text GLabel 13700 8400 0    50   Input ~ 0
ETH_MDI3_P
Text GLabel 13700 8600 0    50   Input ~ 0
ETH_MDI3_N
$Comp
L power:GND #PWR0161
U 1 1 5DA9238D
P 13650 8950
F 0 "#PWR0161" H 13650 8700 50  0001 C CNN
F 1 "GND" H 13655 8777 50  0000 C CNN
F 2 "" H 13650 8950 50  0001 C CNN
F 3 "" H 13650 8950 50  0001 C CNN
	1    13650 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 8900 13650 8950
Wire Wire Line
	13650 8900 13950 8900
Text GLabel 13150 9200 0    50   Input ~ 0
~ETH_Link
Text GLabel 13150 9500 0    50   Input ~ 0
~ETH_Active
$Comp
L power:+3.3V #PWR0160
U 1 1 5DA994F8
P 13800 8850
F 0 "#PWR0160" H 13800 8700 50  0001 C CNN
F 1 "+3.3V" H 13815 9023 50  0000 C CNN
F 2 "" H 13800 8850 50  0001 C CNN
F 3 "" H 13800 8850 50  0001 C CNN
	1    13800 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 8850 13800 9050
Connection ~ 13800 9050
Wire Wire Line
	13800 9350 13800 9050
$Comp
L Device:R R111
U 1 1 5DAA50D3
P 13400 9200
F 0 "R111" V 13300 9200 50  0000 C CNN
F 1 "1k" V 13500 9200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 13330 9200 50  0001 C CNN
F 3 "~" H 13400 9200 50  0001 C CNN
	1    13400 9200
	0    1    1    0   
$EndComp
Wire Wire Line
	13550 9200 13950 9200
Wire Wire Line
	13150 9200 13250 9200
$Comp
L Device:R R112
U 1 1 5DAB05CC
P 13400 9500
F 0 "R112" V 13300 9500 50  0000 C CNN
F 1 "1k" V 13500 9500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 13330 9500 50  0001 C CNN
F 3 "~" H 13400 9500 50  0001 C CNN
	1    13400 9500
	0    1    1    0   
$EndComp
Wire Wire Line
	13550 9500 13950 9500
Wire Wire Line
	13150 9500 13250 9500
$Comp
L Device:C C100
U 1 1 5DAC6754
P 12700 7400
F 0 "C100" H 12815 7446 50  0000 L CNN
F 1 "100n" H 12815 7355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 12738 7250 50  0001 C CNN
F 3 "~" H 12700 7400 50  0001 C CNN
	1    12700 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 7200 12700 7200
Wire Wire Line
	12700 7200 12700 7250
$Comp
L power:GND #PWR0155
U 1 1 5DACC978
P 12700 7600
F 0 "#PWR0155" H 12700 7350 50  0001 C CNN
F 1 "GND" H 12705 7427 50  0000 C CNN
F 2 "" H 12700 7600 50  0001 C CNN
F 3 "" H 12700 7600 50  0001 C CNN
	1    12700 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 7600 12700 7550
$Comp
L Device:EMI_Filter_CommonMode FL3
U 1 1 5DADBF6E
P 2300 9600
F 0 "FL3" H 2300 9881 50  0000 C CNN
F 1 "744231091" H 2300 9790 50  0000 C CNN
F 2 "Filter_WUT:Wurth_CM_USB_744231091" H 2300 9640 50  0001 C CNN
F 3 "~" H 2300 9640 50  0001 C CNN
	1    2300 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 9500 2100 9500
Wire Wire Line
	2100 9700 1800 9700
$Comp
L Power_Protection:TPD2S017 U22
U 1 1 5DADBF76
P 3150 9600
F 0 "U22" H 3150 10281 50  0000 C CNN
F 1 "TPD2S017" H 3150 10190 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2400 9250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd2s017.pdf" H 3150 9600 50  0001 C CNN
	1    3150 9600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0163
U 1 1 5DADBF7C
P 3150 10150
F 0 "#PWR0163" H 3150 9900 50  0001 C CNN
F 1 "GND" H 3155 9977 50  0000 C CNN
F 2 "" H 3150 10150 50  0001 C CNN
F 3 "" H 3150 10150 50  0001 C CNN
	1    3150 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 10150 3150 10100
$Comp
L Connector:USB_A J14
U 1 1 5DB39495
P 4700 9500
F 0 "J14" H 4470 9489 50  0000 R CNN
F 1 "USB_A" H 4470 9398 50  0000 R CNN
F 2 "Connector_WUT:USB-A_Wurth_61400416021_TH_RA" H 4850 9450 50  0001 C CNN
F 3 " ~" H 4850 9450 50  0001 C CNN
	1    4700 9500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3650 9500 4400 9500
Wire Wire Line
	4400 9600 4050 9600
Wire Wire Line
	4050 9600 4050 9700
Wire Wire Line
	4050 9700 3650 9700
$Comp
L power:GND #PWR0164
U 1 1 5DB46BD1
P 4750 10150
F 0 "#PWR0164" H 4750 9900 50  0001 C CNN
F 1 "GND" H 4755 9977 50  0000 C CNN
F 2 "" H 4750 10150 50  0001 C CNN
F 3 "" H 4750 10150 50  0001 C CNN
	1    4750 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 10150 4750 10050
Wire Wire Line
	4750 10050 4700 10050
Wire Wire Line
	4700 10050 4700 9900
Wire Wire Line
	4800 9900 4800 10050
Wire Wire Line
	4800 10050 4750 10050
Connection ~ 4750 10050
Wire Wire Line
	2500 9500 2650 9500
Wire Wire Line
	2500 9700 2650 9700
Wire Wire Line
	3150 9100 4000 9100
Wire Wire Line
	4400 9100 4400 9300
Text GLabel 1800 9500 0    50   BiDi ~ 0
USB_OTG_D+
Text GLabel 1800 9700 0    50   BiDi ~ 0
USB_OTG_D-
Text GLabel 1800 9950 0    50   Output ~ 0
USB_OTG_ID
$Comp
L Jumper:SolderJumper_2_Bridged JP5
U 1 1 5DB7A4BD
P 2000 10100
F 0 "JP5" V 2000 10168 50  0000 L CNN
F 1 "SolderJumper_2_Bridged" V 2045 10168 50  0001 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 2000 10100 50  0001 C CNN
F 3 "~" H 2000 10100 50  0001 C CNN
	1    2000 10100
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 9950 2000 9950
$Comp
L power:GND #PWR0165
U 1 1 5DB82AE8
P 2000 10350
F 0 "#PWR0165" H 2000 10100 50  0001 C CNN
F 1 "GND" H 2005 10177 50  0000 C CNN
F 2 "" H 2000 10350 50  0001 C CNN
F 3 "" H 2000 10350 50  0001 C CNN
	1    2000 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 10350 2000 10250
Text Notes 1350 10100 0    50   ~ 0
Host only
$Comp
L power:GND #PWR0158
U 1 1 5DB8CB7A
P 3150 8650
F 0 "#PWR0158" H 3150 8400 50  0001 C CNN
F 1 "GND" H 3155 8477 50  0000 C CNN
F 2 "" H 3150 8650 50  0001 C CNN
F 3 "" H 3150 8650 50  0001 C CNN
	1    3150 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 8550 3150 8650
$Comp
L IC_WUT:TPS2051B U21
U 1 1 5DB9EA22
P 3150 8100
F 0 "U21" H 3150 8517 50  0000 C CNN
F 1 "TPS2051B" H 3150 8426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3150 8600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps2041.pdf" H 3100 8350 50  0001 C CNN
	1    3150 8100
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB11
U 1 1 5DB9FC29
P 4400 8100
F 0 "FB11" H 4537 8100 50  0000 L CNN
F 1 "Ferrite_Bead" H 4537 8055 50  0001 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4330 8100 50  0001 C CNN
F 3 "~" H 4400 8100 50  0001 C CNN
	1    4400 8100
	1    0    0    -1  
$EndComp
Connection ~ 4400 9100
Wire Wire Line
	3650 7950 4400 7950
Wire Wire Line
	4400 8250 4400 8300
$Comp
L power:+5V #PWR0156
U 1 1 5DBC8198
P 2250 7850
F 0 "#PWR0156" H 2250 7700 50  0001 C CNN
F 1 "+5V" H 2265 8023 50  0000 C CNN
F 2 "" H 2250 7850 50  0001 C CNN
F 3 "" H 2250 7850 50  0001 C CNN
	1    2250 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 7950 2250 7950
Wire Wire Line
	2250 7950 2250 7850
Wire Wire Line
	2650 8150 1800 8150
Text GLabel 1800 8150 0    50   Input ~ 0
USB_OTG_VEN
$Comp
L Device:C C101
U 1 1 5DBE37E5
P 4750 8550
F 0 "C101" H 4865 8596 50  0000 L CNN
F 1 "47u" H 4865 8505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 4788 8400 50  0001 C CNN
F 3 "~" H 4750 8550 50  0001 C CNN
	1    4750 8550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C102
U 1 1 5DBE4398
P 5150 8550
F 0 "C102" H 5265 8596 50  0000 L CNN
F 1 "47u" H 5265 8505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 5188 8400 50  0001 C CNN
F 3 "~" H 5150 8550 50  0001 C CNN
	1    5150 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 8400 5150 8300
Wire Wire Line
	5150 8300 4750 8300
Connection ~ 4400 8300
Wire Wire Line
	4400 8300 4400 9100
Wire Wire Line
	4750 8400 4750 8300
Connection ~ 4750 8300
Wire Wire Line
	4750 8300 4400 8300
$Comp
L power:GND #PWR0159
U 1 1 5DBF4D89
P 4950 8800
F 0 "#PWR0159" H 4950 8550 50  0001 C CNN
F 1 "GND" H 4955 8627 50  0000 C CNN
F 2 "" H 4950 8800 50  0001 C CNN
F 3 "" H 4950 8800 50  0001 C CNN
	1    4950 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 8700 4750 8750
Wire Wire Line
	4750 8750 4950 8750
Wire Wire Line
	5150 8750 5150 8700
Wire Wire Line
	4950 8800 4950 8750
Connection ~ 4950 8750
Wire Wire Line
	4950 8750 5150 8750
Wire Wire Line
	3650 8150 4150 8150
Text Label 4150 8150 2    50   ~ 0
~USB_OC
$Comp
L Device:R R109
U 1 1 5DC1743B
P 6050 8850
F 0 "R109" H 6120 8896 50  0000 L CNN
F 1 "33k" H 6120 8805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 8850 50  0001 C CNN
F 3 "~" H 6050 8850 50  0001 C CNN
	1    6050 8850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R110
U 1 1 5DC18198
P 6450 8850
F 0 "R110" H 6520 8896 50  0000 L CNN
F 1 "22k" H 6520 8805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6380 8850 50  0001 C CNN
F 3 "~" H 6450 8850 50  0001 C CNN
	1    6450 8850
	1    0    0    -1  
$EndComp
$Comp
L LED_WUT:LED_Cree_CLX6E-FKC LD11
U 2 1 5DC18D7E
P 6250 9700
F 0 "LD11" V 6243 9582 50  0000 R CNN
F 1 "LED_Cree_CLX6E-FKC" H 6250 10050 50  0001 C CNN
F 2 "LED_SMD:LED_RGB_PLCC-6" H 6250 9700 50  0001 C CNN
F 3 "https://www.cree.com/led-components/media/documents/ds-CLX6E-FKC-1359.pdf" H 6250 9700 200 0001 C CNN
	2    6250 9700
	0    -1   -1   0   
$EndComp
$Comp
L LED_WUT:LED_Cree_CLX6E-FKC LD11
U 3 1 5DC1A4FD
P 6450 9200
F 0 "LD11" V 6443 9082 50  0000 R CNN
F 1 "LED_Cree_CLX6E-FKC" H 6450 9550 50  0001 C CNN
F 2 "LED_SMD:LED_RGB_PLCC-6" H 6450 9200 50  0001 C CNN
F 3 "https://www.cree.com/led-components/media/documents/ds-CLX6E-FKC-1359.pdf" H 6450 9200 200 0001 C CNN
	3    6450 9200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 9000 6450 9050
Wire Wire Line
	6050 9000 6050 9450
Wire Wire Line
	6050 9450 6250 9450
Wire Wire Line
	6450 9450 6450 9350
Wire Wire Line
	6250 9450 6250 9550
Connection ~ 6250 9450
Wire Wire Line
	6250 9450 6450 9450
$Comp
L power:GND #PWR0162
U 1 1 5DC3A63B
P 6250 9900
F 0 "#PWR0162" H 6250 9650 50  0001 C CNN
F 1 "GND" H 6255 9727 50  0000 C CNN
F 2 "" H 6250 9900 50  0001 C CNN
F 3 "" H 6250 9900 50  0001 C CNN
	1    6250 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 9900 6250 9850
Wire Wire Line
	6050 8700 6050 8600
Wire Wire Line
	6050 8600 6250 8600
Wire Wire Line
	6450 8600 6450 8700
$Comp
L power:+3.3V #PWR0157
U 1 1 5DC4F291
P 6250 8500
F 0 "#PWR0157" H 6250 8350 50  0001 C CNN
F 1 "+3.3V" H 6265 8673 50  0000 C CNN
F 2 "" H 6250 8500 50  0001 C CNN
F 3 "" H 6250 8500 50  0001 C CNN
	1    6250 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 8500 6250 8600
Connection ~ 6250 8600
Wire Wire Line
	6250 8600 6450 8600
Wire Wire Line
	6050 9450 5550 9450
Connection ~ 6050 9450
Text Label 5550 9450 0    50   ~ 0
~USB_OC
NoConn ~ 7000 9050
NoConn ~ 7000 9350
Text Notes 1350 9200 0    50   ~ 0
On-module PHY handles\npull-up / pull-down resistors
$Comp
L Device:R R108
U 1 1 5DC8D58E
P 5400 8100
F 0 "R108" V 5193 8100 50  0000 C CNN
F 1 "10k" V 5284 8100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5330 8100 50  0001 C CNN
F 3 "~" H 5400 8100 50  0001 C CNN
	1    5400 8100
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 8100 5150 8100
Wire Wire Line
	5150 8100 5150 8300
Connection ~ 5150 8300
Text GLabel 5600 8100 2    50   Output ~ 0
USB_OTG_VBUS
Wire Wire Line
	5600 8100 5550 8100
$Comp
L LED_WUT:LED_Cree_CLX6E-FKC LD11
U 1 1 5DC1AE0C
P 7000 9200
F 0 "LD11" V 6993 9083 50  0000 R CNN
F 1 "LED_Cree_CLX6E-FKC" H 7000 9550 50  0001 C CNN
F 2 "LED_SMD:LED_RGB_PLCC-6" H 7000 9200 50  0001 C CNN
F 3 "https://www.cree.com/led-components/media/documents/ds-CLX6E-FKC-1359.pdf" H 7000 9200 200 0001 C CNN
	1    7000 9200
	0    -1   -1   0   
$EndComp
$Comp
L Misc_WUT:JTAG-SMT3 U18
U 2 1 5DCEB1C3
P 11150 4950
F 0 "U18" H 10672 5054 50  0000 R CNN
F 1 "JTAG-SMT3" H 10672 4963 50  0000 R CNN
F 2 "Misc_WUT:JTAG-SMT3-NC" H 11300 4800 50  0001 C CNN
F 3 "" H 11300 4800 50  0001 C CNN
	2    11150 4950
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C98
U 1 1 5DCF7EB1
P 11650 4100
F 0 "C98" H 11765 4146 50  0000 L CNN
F 1 "1u" H 11765 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11688 3950 50  0001 C CNN
F 3 "~" H 11650 4100 50  0001 C CNN
	1    11650 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C99
U 1 1 5DCF7EB7
P 12050 4100
F 0 "C99" H 12165 4146 50  0000 L CNN
F 1 "100n" H 12165 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 12088 3950 50  0001 C CNN
F 3 "~" H 12050 4100 50  0001 C CNN
	1    12050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 3950 11650 3800
Wire Wire Line
	12050 3950 12050 3800
Wire Wire Line
	11650 3800 11500 3800
Wire Wire Line
	12050 3800 11650 3800
Connection ~ 11650 3800
$Comp
L power:GND #PWR0150
U 1 1 5DD2FDD8
P 11850 4450
F 0 "#PWR0150" H 11850 4200 50  0001 C CNN
F 1 "GND" H 11855 4277 50  0000 C CNN
F 2 "" H 11850 4450 50  0001 C CNN
F 3 "" H 11850 4450 50  0001 C CNN
	1    11850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 4400 11850 4400
Wire Wire Line
	12050 4250 12050 4400
Wire Wire Line
	11650 4250 11650 4400
Wire Wire Line
	11850 4450 11850 4400
Connection ~ 11850 4400
Wire Wire Line
	11850 4400 12050 4400
$Comp
L Device:Ferrite_Bead FB10
U 1 1 5DD47F32
P 11150 4150
F 0 "FB10" H 11287 4150 50  0000 L CNN
F 1 "Ferrite_Bead" H 11287 4105 50  0001 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 11080 4150 50  0001 C CNN
F 3 "~" H 11150 4150 50  0001 C CNN
	1    11150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 4300 11150 4400
Wire Wire Line
	11150 4400 11350 4400
Wire Wire Line
	11500 4400 11500 3800
Connection ~ 11150 4400
Wire Wire Line
	11150 4400 11150 4600
Wire Wire Line
	11150 3800 11150 4000
Wire Wire Line
	10650 4800 10200 4800
Wire Wire Line
	10650 4900 10200 4900
NoConn ~ 10650 5000
NoConn ~ 10650 5100
Text GLabel 10200 4800 0    50   Output ~ 0
UART_DEBUG_TO_FPGA
Text GLabel 10200 4900 0    50   Input ~ 0
UART_DEBUG_FROM_FPGA
$Comp
L power:+3.3V #PWR0147
U 1 1 5DDAAE7F
P 11150 3800
F 0 "#PWR0147" H 11150 3650 50  0001 C CNN
F 1 "+3.3V" H 11165 3973 50  0000 C CNN
F 2 "" H 11150 3800 50  0001 C CNN
F 3 "" H 11150 3800 50  0001 C CNN
	1    11150 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_WUT:Connector_RJ45_Magjack_Abracon_ARJM11D7-502-AB-EW2 J13
U 1 1 5DE35A81
P 14500 7850
F 0 "J13" H 14800 8600 50  0000 L CNN
F 1 "ARJM11D7-502-AB-EW2" H 14100 6000 50  0000 L CNN
F 2 "Connector_WUT:Connector_RJ45_Magjack_Abracon_ARJM11D7-502-AB-EW2" H 14200 7850 50  0001 C CNN
F 3 "" H 14200 7850 50  0001 C CNN
	1    14500 7850
	1    0    0    -1  
$EndComp
Text Label 3850 9500 0    50   ~ 0
D+
Text Label 3850 9700 0    50   ~ 0
D-
$Comp
L Device:R R107
U 1 1 5DC719C7
P 1650 5600
F 0 "R107" H 1720 5646 50  0000 L CNN
F 1 "0" H 1720 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1580 5600 50  0001 C CNN
F 3 "~" H 1650 5600 50  0001 C CNN
	1    1650 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5450 1650 5300
Wire Wire Line
	11050 1400 11250 1400
Connection ~ 11050 1400
Wire Wire Line
	11050 1400 11050 1250
Connection ~ 11250 1400
Wire Wire Line
	11250 1400 11250 1300
Wire Wire Line
	10300 1250 10700 1250
$Comp
L Device:C C92
U 1 1 5E18F01D
P 10700 1550
F 0 "C92" H 10815 1596 50  0000 L CNN
F 1 "100n" H 10815 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10738 1400 50  0001 C CNN
F 3 "~" H 10700 1550 50  0001 C CNN
	1    10700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1700 10700 1800
Wire Wire Line
	10700 1400 10700 1250
Connection ~ 10700 1250
Wire Wire Line
	10700 1250 10850 1250
Wire Wire Line
	10300 1250 9900 1250
Connection ~ 10300 1250
Wire Wire Line
	9900 1800 10300 1800
Connection ~ 10300 1800
Wire Wire Line
	10300 1800 10500 1800
$Comp
L power:PWR_FLAG #FLG022
U 1 1 5DEE438B
P 4550 3700
F 0 "#FLG022" H 4550 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 3827 50  0001 L CNN
F 2 "" H 4550 3700 50  0001 C CNN
F 3 "~" H 4550 3700 50  0001 C CNN
	1    4550 3700
	0    -1   -1   0   
$EndComp
Connection ~ 4550 3700
Wire Wire Line
	4550 3700 4550 4600
$Comp
L power:PWR_FLAG #FLG023
U 1 1 5DEE5E98
P 11350 4400
F 0 "#FLG023" H 11350 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 11350 4573 50  0001 C CNN
F 2 "" H 11350 4400 50  0001 C CNN
F 3 "~" H 11350 4400 50  0001 C CNN
	1    11350 4400
	1    0    0    -1  
$EndComp
Connection ~ 11350 4400
Wire Wire Line
	11350 4400 11500 4400
$Comp
L power:PWR_FLAG #FLG024
U 1 1 5DEE6A83
P 4000 9100
F 0 "#FLG024" H 4000 9175 50  0001 C CNN
F 1 "PWR_FLAG" H 4000 9273 50  0001 C CNN
F 2 "" H 4000 9100 50  0001 C CNN
F 3 "~" H 4000 9100 50  0001 C CNN
	1    4000 9100
	1    0    0    -1  
$EndComp
Connection ~ 4000 9100
Wire Wire Line
	4000 9100 4400 9100
$Comp
L power:PWR_FLAG #FLG019
U 1 1 5DEE7759
P 10850 1200
F 0 "#FLG019" H 10850 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 10850 1373 50  0001 C CNN
F 2 "" H 10850 1200 50  0001 C CNN
F 3 "~" H 10850 1200 50  0001 C CNN
	1    10850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 1200 10850 1250
Connection ~ 10850 1250
Wire Wire Line
	10850 1250 11050 1250
$Comp
L power:PWR_FLAG #FLG021
U 1 1 5DEF7E48
P 2800 3100
F 0 "#FLG021" H 2800 3175 50  0001 C CNN
F 1 "PWR_FLAG" H 2800 3273 50  0001 C CNN
F 2 "" H 2800 3100 50  0001 C CNN
F 3 "~" H 2800 3100 50  0001 C CNN
	1    2800 3100
	1    0    0    -1  
$EndComp
Connection ~ 2800 3100
Wire Wire Line
	2800 3100 3100 3100
$Comp
L power:PWR_FLAG #FLG020
U 1 1 5DEF85E1
P 2050 3100
F 0 "#FLG020" H 2050 3175 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 3273 50  0001 C CNN
F 2 "" H 2050 3100 50  0001 C CNN
F 3 "~" H 2050 3100 50  0001 C CNN
	1    2050 3100
	1    0    0    -1  
$EndComp
Connection ~ 2050 3100
Wire Wire Line
	2050 3100 2300 3100
$Comp
L Connector_WUT:USB_B_Micro J11
U 1 1 5DFD00E5
P 14950 3250
F 0 "J11" H 14720 3239 50  0000 R CNN
F 1 "USB_B_Micro" H 14720 3148 50  0000 R CNN
F 2 "Connector_WUT:Micro-USB_Amphenol_MUSB-K152-30_Horizontal_TH" H 14950 3250 50  0001 C CNN
F 3 "" H 14950 3250 50  0001 C CNN
	1    14950 3250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R105
U 1 1 5DE85621
P 9600 2350
F 0 "R105" V 9500 2300 50  0000 C CNN
F 1 "0" V 9500 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 2350 50  0001 C CNN
F 3 "~" H 9600 2350 50  0001 C CNN
	1    9600 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 2350 9350 2350
$Comp
L Device:R R106
U 1 1 5DE85B86
P 9600 2450
F 0 "R106" V 9500 2500 50  0000 C CNN
F 1 "0" V 9500 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 2450 50  0001 C CNN
F 3 "~" H 9600 2450 50  0001 C CNN
	1    9600 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 2450 9350 2450
Text Notes 8400 2700 0    50   ~ 0
Just in case I got them backwards!
$EndSCHEMATC
