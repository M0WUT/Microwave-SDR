EESchema Schematic File Version 4
LIBS:v1-cache
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 16 32
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
L IC_WUT:TE0720 U16
U 2 1 5D8DE3E3
P 4100 5550
F 0 "U16" H 4100 8948 50  0000 C CNN
F 1 "TE0720" H 4100 8857 50  0000 C CNN
F 2 "IC_WUT:Trenz_TE0720" H 3650 7450 50  0001 C CNN
F 3 "" H 3650 7450 50  0001 C CNN
	2    4100 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5DAB7198
P 4100 8600
F 0 "#PWR0133" H 4100 8350 50  0001 C CNN
F 1 "GND" H 4105 8427 50  0000 C CNN
F 2 "" H 4100 8600 50  0001 C CNN
F 3 "" H 4100 8600 50  0001 C CNN
	1    4100 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 8500 4000 8550
Wire Wire Line
	4000 8550 4100 8550
Wire Wire Line
	4200 8550 4200 8500
Wire Wire Line
	4100 8600 4100 8550
Connection ~ 4100 8550
Wire Wire Line
	4100 8550 4200 8550
Wire Wire Line
	3350 7650 3000 7650
Wire Wire Line
	3350 7750 3000 7750
Wire Wire Line
	3350 7850 3000 7850
Wire Wire Line
	3350 7950 3000 7950
Text GLabel 3000 7650 0    50   Input ~ 0
JTAG_TMS
Text GLabel 3000 7750 0    50   Input ~ 0
JTAG_TDI
Text GLabel 3000 7850 0    50   Output ~ 0
JTAG_TDO
Text GLabel 3000 7950 0    50   Input ~ 0
JTAG_TCK
NoConn ~ 3350 3950
$Comp
L power:+3.3V #PWR0126
U 1 1 5DABA820
P 4950 2850
F 0 "#PWR0126" H 4950 2700 50  0001 C CNN
F 1 "+3.3V" H 4965 3023 50  0000 C CNN
F 2 "" H 4950 2850 50  0001 C CNN
F 3 "" H 4950 2850 50  0001 C CNN
	1    4950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3050 4950 3050
Wire Wire Line
	4950 3050 4950 2850
$Comp
L Device:C C88
U 1 1 5DAD03D8
P 5200 3200
F 0 "C88" H 5315 3246 50  0000 L CNN
F 1 "22u" H 5315 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 5238 3050 50  0001 C CNN
F 3 "~" H 5200 3200 50  0001 C CNN
	1    5200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3050 5200 3050
Connection ~ 4950 3050
$Comp
L power:GND #PWR0130
U 1 1 5DAD110C
P 5200 3400
F 0 "#PWR0130" H 5200 3150 50  0001 C CNN
F 1 "GND" H 5205 3227 50  0000 C CNN
F 2 "" H 5200 3400 50  0001 C CNN
F 3 "" H 5200 3400 50  0001 C CNN
	1    5200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3400 5200 3350
Text GLabel 5800 3050 2    50   Input ~ 0
~PS_RESET
$Comp
L Device:R R101
U 1 1 5DDBEE20
P 7300 3600
F 0 "R101" H 7370 3646 50  0000 L CNN
F 1 "10k" H 7370 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7230 3600 50  0001 C CNN
F 3 "~" H 7300 3600 50  0001 C CNN
	1    7300 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3750 7300 3850
Connection ~ 7300 3850
Wire Wire Line
	7300 3850 7400 3850
Wire Wire Line
	7300 3450 7300 3350
$Comp
L power:+3V3 #PWR0129
U 1 1 5DDBF95F
P 7300 3350
F 0 "#PWR0129" H 7300 3200 50  0001 C CNN
F 1 "+3V3" H 7315 3523 50  0000 C CNN
F 2 "" H 7300 3350 50  0001 C CNN
F 3 "" H 7300 3350 50  0001 C CNN
	1    7300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3950 7300 3850
$Comp
L power:GND #PWR0132
U 1 1 5DDC194E
P 7100 4500
F 0 "#PWR0132" H 7100 4250 50  0001 C CNN
F 1 "GND" H 7105 4327 50  0000 C CNN
F 2 "" H 7100 4500 50  0001 C CNN
F 3 "" H 7100 4500 50  0001 C CNN
	1    7100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4400 7300 4350
$Comp
L Device:C C89
U 1 1 5DDC52CC
P 6950 4150
F 0 "C89" H 7065 4196 50  0000 L CNN
F 1 "100n" H 7065 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6988 4000 50  0001 C CNN
F 3 "~" H 6950 4150 50  0001 C CNN
	1    6950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4000 6950 3850
Connection ~ 6950 3850
Wire Wire Line
	6950 3850 7300 3850
Wire Wire Line
	6950 4300 6950 4400
Wire Wire Line
	6950 4400 7100 4400
Wire Wire Line
	7100 4500 7100 4400
Connection ~ 7100 4400
Wire Wire Line
	7100 4400 7300 4400
$Comp
L Switch_WUT:Tactile_Switch_Generic SW2
U 1 1 5DBC8C0C
P 7400 4150
F 0 "SW2" V 7400 4298 50  0000 L CNN
F 1 "Tactile_Switch_Generic" H 7400 4150 50  0001 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 7400 4150 50  0001 C CNN
F 3 "" H 7400 4150 50  0001 C CNN
	1    7400 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3950 7400 3850
Wire Wire Line
	7400 4350 7400 4400
Wire Wire Line
	7400 4400 7300 4400
Connection ~ 7300 4400
Wire Wire Line
	3350 7350 2850 7350
Wire Wire Line
	3350 7250 2850 7250
Wire Wire Line
	3350 7150 2850 7150
Wire Wire Line
	3350 7050 2850 7050
Wire Wire Line
	3350 6850 2850 6850
Wire Wire Line
	3350 6750 2850 6750
Wire Wire Line
	3350 6650 2850 6650
Wire Wire Line
	3350 6550 2850 6550
Wire Wire Line
	3350 6350 2850 6350
Wire Wire Line
	3350 6250 2850 6250
Wire Wire Line
	3350 6150 2850 6150
Wire Wire Line
	3350 6050 2850 6050
Wire Wire Line
	3350 5850 2850 5850
Wire Wire Line
	3350 5750 2850 5750
Wire Wire Line
	3350 5650 2850 5650
Wire Wire Line
	3350 5550 2850 5550
Text GLabel 2850 6550 0    50   Output ~ 0
RF_DAC_D5
Text GLabel 2850 6650 0    50   Output ~ 0
RF_DAC_D4
Text GLabel 2850 6750 0    50   Output ~ 0
RF_DAC_D3
Text GLabel 2850 6850 0    50   Output ~ 0
RF_DAC_D2
Text GLabel 2850 7050 0    50   Output ~ 0
RF_DAC_D1
Text GLabel 2850 7150 0    50   Output ~ 0
RF_DAC_D0
Text GLabel 2850 7250 0    50   Output ~ 0
RF_DAC_CLK_P
Text GLabel 2850 7350 0    50   Output ~ 0
RF_DAC_CLK_N
Text GLabel 2850 5550 0    50   Output ~ 0
RF_DAC_D13
Text GLabel 2850 5650 0    50   Output ~ 0
RF_DAC_D12
Text GLabel 2850 5750 0    50   Output ~ 0
RF_DAC_D11
Text GLabel 2850 5850 0    50   Output ~ 0
RF_DAC_D10
Text GLabel 2850 6050 0    50   Output ~ 0
RF_DAC_D9
Text GLabel 2850 6150 0    50   Output ~ 0
RF_DAC_D8
Text GLabel 2850 6250 0    50   Output ~ 0
RF_DAC_D7
Text GLabel 2850 6350 0    50   Output ~ 0
RF_DAC_D6
NoConn ~ 3350 7550
NoConn ~ 4850 7950
$Comp
L power:+3.3V #PWR0127
U 1 1 5DD96845
P 2850 3000
F 0 "#PWR0127" H 2850 2850 50  0001 C CNN
F 1 "+3.3V" H 2865 3173 50  0000 C CNN
F 2 "" H 2850 3000 50  0001 C CNN
F 3 "" H 2850 3000 50  0001 C CNN
	1    2850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3350 2850 3350
Text GLabel 5200 5650 2    50   Input ~ 0
RF_ADC_Clk_N
Text GLabel 5200 5750 2    50   Input ~ 0
RF_ADC_D0
Text GLabel 5200 5850 2    50   Input ~ 0
RF_ADC_D1
Text GLabel 5200 6050 2    50   Input ~ 0
RF_ADC_D2
Text GLabel 5200 6150 2    50   Input ~ 0
RF_ADC_D3
Text GLabel 5200 6250 2    50   Input ~ 0
RF_ADC_D4
Text GLabel 5200 6350 2    50   Input ~ 0
RF_ADC_D5
Text GLabel 5200 6550 2    50   Input ~ 0
RF_ADC_D6
Text GLabel 5200 6650 2    50   Input ~ 0
RF_ADC_D7
Text GLabel 5200 6750 2    50   Input ~ 0
RF_ADC_D8
Text GLabel 5200 6850 2    50   Input ~ 0
RF_ADC_D9
Text GLabel 5200 7050 2    50   Input ~ 0
RF_ADC_D10
Text GLabel 5200 7150 2    50   Input ~ 0
RF_ADC_D11
Text GLabel 5200 7250 2    50   Input ~ 0
RF_ADC_D12
Text GLabel 5200 7350 2    50   Input ~ 0
RF_ADC_D13
Text GLabel 5200 7550 2    50   Input ~ 0
RF_ADC_D14
Text GLabel 5200 5550 2    50   Input ~ 0
RF_ADC_Clk_P
Wire Wire Line
	5200 7250 4850 7250
Wire Wire Line
	5200 7350 4850 7350
Wire Wire Line
	5200 7550 4850 7550
Wire Wire Line
	5200 5550 4850 5550
Wire Wire Line
	5200 5650 4850 5650
Wire Wire Line
	5200 5750 4850 5750
Wire Wire Line
	5200 5850 4850 5850
Wire Wire Line
	5200 6050 4850 6050
Wire Wire Line
	5200 6150 4850 6150
Wire Wire Line
	5200 6250 4850 6250
Wire Wire Line
	5200 6350 4850 6350
Wire Wire Line
	5200 6550 4850 6550
Wire Wire Line
	5200 6650 4850 6650
Wire Wire Line
	5200 6750 4850 6750
Wire Wire Line
	5200 6850 4850 6850
Wire Wire Line
	5200 7050 4850 7050
Wire Wire Line
	5200 7150 4850 7150
Text GLabel 5200 7650 2    50   Input ~ 0
RF_ADC_D15
Wire Wire Line
	5200 7650 4850 7650
Wire Wire Line
	4850 7750 5200 7750
Wire Wire Line
	4850 7850 5200 7850
Text GLabel 5200 7750 2    50   Input ~ 0
RF_ADC_Overflow
Text GLabel 5200 7850 2    50   Output ~ 0
RF_ADC_Random
Wire Wire Line
	4850 5350 5200 5350
Text GLabel 5200 5350 2    50   Output ~ 0
RF_ADC_Dither
Wire Wire Line
	3350 3050 2850 3050
Wire Wire Line
	2850 3050 2850 3000
Wire Wire Line
	2850 3050 2850 3250
Connection ~ 2850 3050
Wire Wire Line
	3350 3250 2850 3250
Connection ~ 2850 3250
Wire Wire Line
	2850 3250 2850 3350
Wire Wire Line
	3350 3850 2850 3850
Wire Wire Line
	3350 3750 2850 3750
Wire Wire Line
	3350 3650 2850 3650
Wire Wire Line
	3350 3550 2850 3550
Text GLabel 2850 3550 0    50   Input ~ 0
ENC1_SW
Text GLabel 2850 3650 0    50   Input ~ 0
ENC2_B
Text GLabel 2850 3750 0    50   Input ~ 0
ENC2_A
Text GLabel 2850 4050 0    50   Input ~ 0
ENC1_B
Text GLabel 2850 4150 0    50   Input ~ 0
ENC1_A
Wire Wire Line
	2850 4050 3350 4050
Wire Wire Line
	3350 4150 2850 4150
Text GLabel 2850 3850 0    50   Input ~ 0
ENC2_SW
Wire Wire Line
	3350 4250 2850 4250
Text GLabel 2850 4250 0    50   Input ~ 0
ENC3_SW
Wire Wire Line
	4850 3650 5200 3650
Text GLabel 5200 3650 2    50   Output ~ 0
AF_DAC_DAT
Wire Wire Line
	4850 3750 5200 3750
Text GLabel 5200 3750 2    50   Input ~ 0
AF_ADC_DAT
Wire Wire Line
	4850 4050 5350 4050
Text GLabel 5350 4050 2    50   Output ~ 0
AF_BCLK
Wire Wire Line
	4850 4150 5350 4150
Text GLabel 5350 4150 2    50   Output ~ 0
AF_LRCLK
Wire Wire Line
	4850 4250 5350 4250
Text GLabel 5350 4250 2    50   BiDi ~ 0
AF_SDA
Wire Wire Line
	4850 4350 5350 4350
Text GLabel 5350 4350 2    50   Output ~ 0
AF_SCL
Wire Wire Line
	3350 4350 2850 4350
Text GLabel 2850 4350 0    50   Output ~ 0
AF_MCLK
Wire Wire Line
	4850 4650 5050 4650
Wire Wire Line
	4850 4550 5350 4550
Wire Wire Line
	4850 4750 5350 4750
Text GLabel 5050 4650 2    50   Input ~ 0
~PTT
Text GLabel 5350 4550 2    50   Output ~ 0
AF_MIC_BIAS_EN
Text GLabel 5350 4750 2    50   Output ~ 0
AF_HP_DETECT
$Comp
L Power_Protection:TPD2S017 U?
U 1 1 5DEE8FD8
P 6300 3950
AR Path="/5D96AFF8/5D96C261/5DEE8FD8" Ref="U?"  Part="1" 
AR Path="/5D96AFF8/5D96B0E8/5DEE8FD8" Ref="U17"  Part="1" 
F 0 "U17" H 6150 4350 50  0000 C CNN
F 1 "TPD2S017" H 6050 3550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5550 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd2s017.pdf" H 6300 3950 50  0001 C CNN
	1    6300 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 3850 5750 3850
Wire Wire Line
	6800 3850 6950 3850
$Comp
L power:GND #PWR0131
U 1 1 5DF226C4
P 6300 4500
F 0 "#PWR0131" H 6300 4250 50  0001 C CNN
F 1 "GND" H 6305 4327 50  0000 C CNN
F 2 "" H 6300 4500 50  0001 C CNN
F 3 "" H 6300 4500 50  0001 C CNN
	1    6300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4500 6300 4450
Wire Wire Line
	5800 3050 5750 3050
Wire Wire Line
	5750 3050 5750 3850
Connection ~ 5750 3850
Wire Wire Line
	5750 3850 5800 3850
$Comp
L power:+3.3V #PWR0128
U 1 1 5DF54979
P 6300 3350
F 0 "#PWR0128" H 6300 3200 50  0001 C CNN
F 1 "+3.3V" H 6315 3523 50  0000 C CNN
F 2 "" H 6300 3350 50  0001 C CNN
F 3 "" H 6300 3350 50  0001 C CNN
	1    6300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3350 6300 3450
NoConn ~ 5800 4050
NoConn ~ 6800 4050
NoConn ~ 3350 4550
NoConn ~ 3350 4650
NoConn ~ 3350 4750
NoConn ~ 3350 4850
NoConn ~ 3350 5050
NoConn ~ 3350 5150
NoConn ~ 3350 5250
NoConn ~ 3350 5350
NoConn ~ 4850 5250
NoConn ~ 4850 5150
NoConn ~ 4850 5050
NoConn ~ 4850 4850
Wire Wire Line
	3350 7450 2850 7450
Text GLabel 2850 7450 0    50   Output ~ 0
RF_DAC_MODE
Text Notes 4850 7750 0    50   ~ 0
U6
Text Notes 4850 7850 0    50   ~ 0
U5
Text Notes 4850 7650 0    50   ~ 0
T6
Text Notes 4850 7550 0    50   ~ 0
R6
Text Notes 4850 7350 0    50   ~ 0
W5
Text Notes 4850 7250 0    50   ~ 0
W6
Text Notes 4850 7150 0    50   ~ 0
W7
Text Notes 4850 7050 0    50   ~ 0
V7
Text Notes 4850 6850 0    50   ~ 0
W8
Text Notes 4850 6750 0    50   ~ 0
V8
Text Notes 4850 6650 0    50   ~ 0
Y10
Text Notes 4850 6550 0    50   ~ 0
Y11
Text Notes 4850 6350 0    50   ~ 0
W10
Text Notes 4850 6250 0    50   ~ 0
W11
Text Notes 4850 6150 0    50   ~ 0
W12
Text Notes 4850 6050 0    50   ~ 0
V12
Text Notes 4850 5850 0    50   ~ 0
Y5
Text Notes 4850 5750 0    50   ~ 0
Y6
Text Notes 4850 5650 0    50   ~ 0
AA6
Text Notes 4850 5550 0    50   ~ 0
AA7
Text Notes 4850 5350 0    50   ~ 0
Y8
Text Notes 4850 4750 0    50   ~ 0
U10
Text Notes 4850 4650 0    50   ~ 0
U11
Text Notes 4850 4550 0    50   ~ 0
U12
Text Notes 3350 7450 2    50   ~ 0
U7
Text Notes 3350 7350 2    50   ~ 0
V4
Text Notes 3350 7250 2    50   ~ 0
V5
Text Notes 3350 7150 2    50   ~ 0
AB1
Text Notes 3350 7050 2    50   ~ 0
AB2
Text Notes 3350 6850 2    50   ~ 0
AA4
Text Notes 3350 6750 2    50   ~ 0
Y4
Text Notes 3350 6650 2    50   ~ 0
AB4
Text Notes 3350 6550 2    50   ~ 0
AB5
Text Notes 3350 6350 2    50   ~ 0
AB6
Text Notes 3350 6250 2    50   ~ 0
AB7
Text Notes 3350 6150 2    50   ~ 0
U4
Text Notes 3350 6050 2    50   ~ 0
T4
Text Notes 3350 5850 2    50   ~ 0
AB9
Text Notes 3350 5750 2    50   ~ 0
AB10
Text Notes 3350 5650 2    50   ~ 0
AA8
Text Notes 3350 5550 2    50   ~ 0
AA9
Text Notes 4850 4350 0    50   ~ 0
Y16
Text Notes 4850 4250 0    50   ~ 0
W16
Text Notes 4850 4150 0    50   ~ 0
W18
Text Notes 4850 4050 0    50   ~ 0
W17
Text Notes 4850 3750 0    50   ~ 0
W21
Text Notes 4850 3650 0    50   ~ 0
W20
Text Notes 3350 4350 2    50   ~ 0
AA18
Text Notes 3350 4250 2    50   ~ 0
Y18
Text Notes 3350 4150 2    50   ~ 0
AA19
Text Notes 3350 4050 2    50   ~ 0
Y19
Text Notes 3350 3850 2    50   ~ 0
AB21
Text Notes 3350 3750 2    50   ~ 0
AA21
Text Notes 3350 3650 2    50   ~ 0
AB22
Text Notes 3350 3550 2    50   ~ 0
AA22
$EndSCHEMATC
