EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 900  1900 1400 2000
U AC18FB37
F0 "led_matrix" 50
F1 "mqttDisplay_led_matrix.sch" 50
$EndSheet
Wire Wire Line
	5000 10300 5300 10300
Wire Wire Line
	5000 10400 5300 10400
Text GLabel 5000 10400 0    50   Input ~ 0
I2C_SCL
Text GLabel 5000 10300 0    50   BiDi ~ 0
I2C_SDA
Connection ~ 5150 10600
Wire Wire Line
	5150 10500 5150 10600
Wire Wire Line
	5300 10500 5150 10500
$Comp
L power:GND #PWR0944
U 1 1 99D68C4B
P 5150 10750
F 0 "#PWR0944" H 5150 10500 50  0001 C CNN
F 1 "GND" H 5155 10577 50  0000 C CNN
F 2 "" H 5150 10750 50  0001 C CNN
F 3 "" H 5150 10750 50  0001 C CNN
	1    5150 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 10600 5150 10750
Wire Wire Line
	5300 10600 5150 10600
Wire Wire Line
	5000 10200 5300 10200
Wire Wire Line
	5000 10100 5300 10100
Text GLabel 5000 10200 0    50   Output ~ 0
MATRIX_DAT
Text GLabel 5000 10100 0    50   Output ~ 0
MATRIX_CLK
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 98F6852A
P 5500 10200
F 0 "J2" H 5580 10192 50  0000 L CNN
F 1 "EXP" H 5580 10101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 5500 10200 50  0001 C CNN
F 3 "~" H 5500 10200 50  0001 C CNN
F 4 "C50981" H 5500 10200 50  0001 C CNN "LCSC#"
	1    5500 10200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 10000 5300 10000
Wire Wire Line
	5000 9800 5000 10000
Wire Wire Line
	5200 9900 5300 9900
Wire Wire Line
	5200 9800 5200 9900
$Comp
L power:+3.3V #PWR0943
U 1 1 984F5023
P 5000 9800
F 0 "#PWR0943" H 5000 9650 50  0001 C CNN
F 1 "+3.3V" H 5015 9973 50  0000 C CNN
F 2 "" H 5000 9800 50  0001 C CNN
F 3 "" H 5000 9800 50  0001 C CNN
	1    5000 9800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0942
U 1 1 984EF8EB
P 5200 9800
F 0 "#PWR0942" H 5200 9650 50  0001 C CNN
F 1 "+5V" H 5215 9973 50  0000 C CNN
F 2 "" H 5200 9800 50  0001 C CNN
F 3 "" H 5200 9800 50  0001 C CNN
	1    5200 9800
	1    0    0    -1  
$EndComp
Text Notes 4100 9200 0    197  ~ 39
Expansion Header
Wire Notes Line
	13150 6250 13200 6250
Text Notes 13100 6600 0    197  ~ 39
Ambient Light
$Comp
L 3340_kicad:BH1730FVC U5
U 1 1 A18BA66F
P 14000 7650
F 0 "U5" H 13823 7696 50  0000 R CNN
F 1 "BH1730FVC" H 13823 7605 50  0000 R CNN
F 2 "3340:WSOF6" H 13350 8500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/ROHM-Semicon-BH1730FVC-TR_C79616.pdf" H 13350 8500 50  0001 C CNN
F 4 "C79616" H 14000 7650 50  0001 C CNN "LCSC#"
	1    14000 7650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0949
U 1 1 A18C0552
P 14000 8300
F 0 "#PWR0949" H 14000 8050 50  0001 C CNN
F 1 "GND" H 14005 8127 50  0000 C CNN
F 2 "" H 14000 8300 50  0001 C CNN
F 3 "" H 14000 8300 50  0001 C CNN
	1    14000 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 8300 14000 8150
$Comp
L power:+3.3V #PWR0950
U 1 1 A1C5947C
P 14000 6950
F 0 "#PWR0950" H 14000 6800 50  0001 C CNN
F 1 "+3.3V" H 14015 7123 50  0000 C CNN
F 2 "" H 14000 6950 50  0001 C CNN
F 3 "" H 14000 6950 50  0001 C CNN
	1    14000 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 7150 13950 7050
Wire Wire Line
	13950 7050 14000 7050
Wire Wire Line
	14000 7050 14000 6950
Wire Wire Line
	14050 7150 14050 7050
Wire Wire Line
	14050 7050 14000 7050
Connection ~ 14000 7050
$Comp
L Device:C_Small C9
U 1 1 A238C08D
P 13500 7200
F 0 "C9" H 13592 7246 50  0000 L CNN
F 1 "0.1uF" H 13592 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 13500 7200 50  0001 C CNN
F 3 "~" H 13500 7200 50  0001 C CNN
F 4 "C478888" H 13500 7200 50  0001 C CNN "LCSC#"
	1    13500 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0951
U 1 1 A2392341
P 13500 7400
F 0 "#PWR0951" H 13500 7150 50  0001 C CNN
F 1 "GND" H 13505 7227 50  0000 C CNN
F 2 "" H 13500 7400 50  0001 C CNN
F 3 "" H 13500 7400 50  0001 C CNN
	1    13500 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 7400 13500 7300
Wire Wire Line
	13500 7100 13500 7050
Wire Wire Line
	13500 7050 13950 7050
Connection ~ 13950 7050
Text GLabel 15000 7550 2    50   Input ~ 0
I2C_SCL
Text GLabel 15000 7650 2    50   BiDi ~ 0
I2C_SDA
Text GLabel 15000 7750 2    50   Output ~ 0
AMBIENT_INT
Wire Wire Line
	14250 7750 14800 7750
Wire Wire Line
	14250 7650 14550 7650
Wire Wire Line
	14250 7550 14300 7550
$Comp
L Device:R_Small_US R9
U 1 1 A3942272
P 14300 7400
F 0 "R9" H 14350 7550 50  0000 L CNN
F 1 "2.7K" H 14350 7450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 14300 7400 50  0001 C CNN
F 3 "~" H 14300 7400 50  0001 C CNN
F 4 "C403121" H 14300 7400 50  0001 C CNN "LCSC#"
	1    14300 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R10
U 1 1 A39862CF
P 14550 7500
F 0 "R10" H 14600 7750 50  0000 L CNN
F 1 "2.7K" H 14600 7650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 14550 7500 50  0001 C CNN
F 3 "~" H 14550 7500 50  0001 C CNN
F 4 "C403121" H 14550 7500 50  0001 C CNN "LCSC#"
	1    14550 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R11
U 1 1 A39867E5
P 14800 7600
F 0 "R11" H 14850 7950 50  0000 L CNN
F 1 "2.7K" H 14850 7850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 14800 7600 50  0001 C CNN
F 3 "~" H 14800 7600 50  0001 C CNN
F 4 "C403121" H 14800 7600 50  0001 C CNN "LCSC#"
	1    14800 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 7750 14800 7700
Connection ~ 14800 7750
Wire Wire Line
	14800 7750 15000 7750
Wire Wire Line
	14550 7650 14550 7600
Connection ~ 14550 7650
Wire Wire Line
	14550 7650 15000 7650
Wire Wire Line
	14300 7550 14300 7500
Connection ~ 14300 7550
Wire Wire Line
	14300 7550 15000 7550
$Comp
L power:+3.3V #PWR0952
U 1 1 A4468775
P 14550 7100
F 0 "#PWR0952" H 14550 6950 50  0001 C CNN
F 1 "+3.3V" H 14565 7273 50  0000 C CNN
F 2 "" H 14550 7100 50  0001 C CNN
F 3 "" H 14550 7100 50  0001 C CNN
	1    14550 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	14300 7300 14300 7200
Wire Wire Line
	14300 7200 14550 7200
Wire Wire Line
	14550 7200 14550 7100
Wire Wire Line
	14550 7400 14550 7200
Connection ~ 14550 7200
Wire Wire Line
	14800 7500 14800 7200
Wire Wire Line
	14800 7200 14550 7200
$Comp
L eec:MP34DT05TR-A U4
U 1 1 9BBB6826
P 10250 7500
F 0 "U4" H 10900 7765 50  0000 C CNN
F 1 "MP34DT05TR-A" H 10900 7674 50  0000 C CNN
F 2 "STM_MIC:STMicroelectronics-HCLGA-DM00231908-0-3-MFG" H 10250 7900 50  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/mp34dt05-a.pdf" H 10250 8000 50  0001 L CNN
F 4 "No" H 10250 8100 50  0001 L CNN "automotive"
F 5 "100pF" H 10250 8200 50  0001 L CNN "capacitance"
F 6 "IC" H 10250 8300 50  0001 L CNN "category"
F 7 "650uA" H 10250 8400 50  0001 L CNN "current"
F 8 "Electromechanical" H 10250 8500 50  0001 L CNN "device class L1"
F 9 "Audio Products" H 10250 8600 50  0001 L CNN "device class L2"
F 10 "Microphones" H 10250 8700 50  0001 L CNN "device class L3"
F 11 "MICROPHONE MEMS DIGITAL PDM OMNI" H 10250 8800 50  0001 L CNN "digikey description"
F 12 "497-17809-1-ND" H 10250 8900 50  0001 L CNN "digikey part number"
F 13 "Omidirectional" H 10250 9000 50  0001 L CNN "direction"
F 14 "2.4MHz" H 10250 9100 50  0001 L CNN "frequency"
F 15 "1.1mm" H 10250 9200 50  0001 L CNN "height"
F 16 "Yes" H 10250 9300 50  0001 L CNN "lead free"
F 17 "41343c4dff45ba6f" H 10250 9400 50  0001 L CNN "library id"
F 18 "STMicroelectronics" H 10250 9500 50  0001 L CNN "manufacturer"
F 19 "3.6V" H 10250 9600 50  0001 L CNN "max supply voltage"
F 20 "1.6V" H 10250 9700 50  0001 L CNN "min supply voltage"
F 21 "MP34DT05: 3.6 V MEMS Audio Sensor Omnidirectional Digital Microphone - HCLGA-4LD" H 10250 9800 50  0001 L CNN "mouser description"
F 22 "511-MP34DT05TR-A" H 10250 9900 50  0001 L CNN "mouser part number"
F 23 "1.8V" H 10250 10000 50  0001 L CNN "operating supply voltage"
F 24 "HCLGA-4" H 10250 10100 50  0001 L CNN "package"
F 25 "Yes" H 10250 10200 50  0001 L CNN "rohs"
F 26 "+85°C" H 10250 10300 50  0001 L CNN "temperature range high"
F 27 "-40°C" H 10250 10400 50  0001 L CNN "temperature range low"
F 28 "C2688664" H 10250 7500 50  0001 C CNN "LCSC#"
	1    10250 7500
	1    0    0    -1  
$EndComp
Text Notes 9600 6450 0    197  ~ 39
Mic
$Comp
L power:+3.3V #PWR0945
U 1 1 9BBC3CA9
P 10150 7200
F 0 "#PWR0945" H 10150 7050 50  0001 C CNN
F 1 "+3.3V" H 10165 7373 50  0000 C CNN
F 2 "" H 10150 7200 50  0001 C CNN
F 3 "" H 10150 7200 50  0001 C CNN
	1    10150 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 7200 10150 7500
Wire Wire Line
	10150 7500 10350 7500
$Comp
L power:GND #PWR0946
U 1 1 9BF4E6EB
P 12400 8550
F 0 "#PWR0946" H 12400 8300 50  0001 C CNN
F 1 "GND" H 12405 8377 50  0000 C CNN
F 2 "" H 12400 8550 50  0001 C CNN
F 3 "" H 12400 8550 50  0001 C CNN
	1    12400 8550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 9C2DB739
P 10150 8050
F 0 "JP1" V 10000 7800 50  0000 L CNN
F 1 "L/R" V 9900 7800 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10150 8050 50  0001 C CNN
F 3 "~" H 10150 8050 50  0001 C CNN
F 4 "--" H 10150 8050 50  0001 C CNN "LCSC#"
	1    10150 8050
	0    -1   -1   0   
$EndComp
Connection ~ 10150 7500
$Comp
L power:GND #PWR0947
U 1 1 9C9FECA6
P 10150 8350
F 0 "#PWR0947" H 10150 8100 50  0001 C CNN
F 1 "GND" H 10155 8177 50  0000 C CNN
F 2 "" H 10150 8350 50  0001 C CNN
F 3 "" H 10150 8350 50  0001 C CNN
	1    10150 8350
	1    0    0    -1  
$EndComp
Text GLabel 9900 7700 0    50   Input ~ 0
MIC_CLK
Wire Wire Line
	9900 7700 10350 7700
Text GLabel 11750 7500 2    50   Output ~ 0
MIC_DAT
Wire Wire Line
	11450 7500 11750 7500
Wire Wire Line
	10150 8350 10150 8250
Wire Wire Line
	10150 7850 10150 7500
Wire Wire Line
	11450 7900 11450 8300
$Comp
L Device:C_Small C7
U 1 1 9DBF0E1E
P 11650 8100
F 0 "C7" H 11750 8100 50  0000 L CNN
F 1 "0.1uF" H 11750 8000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 11650 8100 50  0001 C CNN
F 3 "~" H 11650 8100 50  0001 C CNN
F 4 "C478888" H 11650 8100 50  0001 C CNN "LCSC#"
	1    11650 8100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 9EDD51E5
P 12100 8100
F 0 "C8" H 12200 8100 50  0000 L CNN
F 1 "1uF" H 12200 8000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 12100 8100 50  0001 C CNN
F 3 "~" H 12100 8100 50  0001 C CNN
F 4 "C272771" H 12100 8100 50  0001 C CNN "LCSC#"
	1    12100 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	11450 8300 11650 8300
Wire Wire Line
	12400 8300 12400 8550
$Comp
L power:+3.3V #PWR0948
U 1 1 9F871A17
P 11900 7850
F 0 "#PWR0948" H 11900 7700 50  0001 C CNN
F 1 "+3.3V" H 11915 8023 50  0000 C CNN
F 2 "" H 11900 7850 50  0001 C CNN
F 3 "" H 11900 7850 50  0001 C CNN
	1    11900 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 8000 11900 8000
Wire Wire Line
	11900 8000 11900 7850
Wire Wire Line
	11900 8000 12100 8000
Connection ~ 11900 8000
Wire Wire Line
	11650 8200 11650 8300
Connection ~ 11650 8300
Wire Wire Line
	11650 8300 12100 8300
Wire Wire Line
	12100 8200 12100 8300
Connection ~ 12100 8300
Wire Wire Line
	12100 8300 12400 8300
Wire Wire Line
	10350 7900 10350 8050
Wire Wire Line
	10350 8050 10300 8050
$Comp
L RF_Module:ESP32-WROOM-32D U1
U 1 1 60C3CBF8
P 13850 3550
F 0 "U1" H 13850 5131 50  0000 C CNN
F 1 "ESP32-WROOM-32E(16MB)" H 13850 5040 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 13850 2050 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 13550 3600 50  0001 C CNN
F 4 "C701343" H 13850 3550 50  0001 C CNN "LCSC#"
	1    13850 3550
	1    0    0    -1  
$EndComp
Text Notes 11900 1150 0    197  ~ 39
ESP32
NoConn ~ 13250 3550
NoConn ~ 13250 3650
NoConn ~ 13250 3750
NoConn ~ 13250 3850
NoConn ~ 13250 3950
NoConn ~ 13250 4050
$Comp
L power:GND #PWR0939
U 1 1 91CECA12
P 13850 5050
F 0 "#PWR0939" H 13850 4800 50  0001 C CNN
F 1 "GND" H 13855 4877 50  0000 C CNN
F 2 "" H 13850 5050 50  0001 C CNN
F 3 "" H 13850 5050 50  0001 C CNN
	1    13850 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 5050 13850 4950
$Comp
L power:+3.3V #PWR0940
U 1 1 923CC9A6
P 13050 1550
F 0 "#PWR0940" H 13050 1400 50  0001 C CNN
F 1 "+3.3V" H 13065 1723 50  0000 C CNN
F 2 "" H 13050 1550 50  0001 C CNN
F 3 "" H 13050 1550 50  0001 C CNN
	1    13050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13050 1550 13050 1700
Wire Wire Line
	13050 1700 13850 1700
Wire Wire Line
	13850 1700 13850 2150
$Comp
L Device:R_Small_US R4
U 1 1 927438D9
P 13050 2050
F 0 "R4" H 13118 2096 50  0000 L CNN
F 1 "10K" H 13118 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 13050 2050 50  0001 C CNN
F 3 "~" H 13050 2050 50  0001 C CNN
F 4 "C441897" H 13050 2050 50  0001 C CNN "LCSC#"
	1    13050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13050 1950 13050 1700
Connection ~ 13050 1700
Wire Wire Line
	13050 2150 13050 2350
Wire Wire Line
	13050 2350 13250 2350
Text GLabel 12750 2350 0    50   Input ~ 0
CHIP_EN
Wire Wire Line
	12750 2350 13050 2350
Connection ~ 13050 2350
NoConn ~ 13250 2550
NoConn ~ 13250 2650
Text GLabel 14950 2650 2    50   Input ~ 0
TX
Text GLabel 14950 2350 2    50   Input ~ 0
GPIO0
$Comp
L Switch:SW_Push SW1
U 1 1 950D5A93
P 14850 1500
F 0 "SW1" V 14804 1648 50  0000 L CNN
F 1 "K2-1187SQ-A4SW" V 14895 1648 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 14850 1700 50  0001 C CNN
F 3 "~" H 14850 1700 50  0001 C CNN
F 4 "C92584" H 14850 1500 50  0001 C CNN "LCSC#"
	1    14850 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0941
U 1 1 950DBEDC
P 14850 1850
F 0 "#PWR0941" H 14850 1600 50  0001 C CNN
F 1 "GND" H 14855 1677 50  0000 C CNN
F 2 "" H 14850 1850 50  0001 C CNN
F 3 "" H 14850 1850 50  0001 C CNN
	1    14850 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14850 1850 14850 1700
Text GLabel 14850 1200 1    50   Output ~ 0
CHIP_EN
Wire Wire Line
	14850 1300 14850 1200
Text GLabel 14950 3550 2    50   Output ~ 0
MATRIX_CLK
Text GLabel 14950 3950 2    50   Output ~ 0
MATRIX_DAT
Wire Wire Line
	14450 3550 14950 3550
Wire Wire Line
	14450 3950 14950 3950
Text GLabel 14950 3850 2    50   Output ~ 0
I2C_SCL
Text GLabel 14950 3750 2    50   BiDi ~ 0
I2C_SDA
Wire Wire Line
	14450 3850 14950 3850
Wire Wire Line
	14450 3750 14950 3750
Text GLabel 14950 3150 2    50   Output ~ 0
MIC_CLK
Text GLabel 14950 2950 2    50   Input ~ 0
MIC_DAT
Wire Wire Line
	14450 3150 14950 3150
Wire Wire Line
	14450 2950 14950 2950
Text GLabel 14950 4350 2    50   Input ~ 0
AMBIENT_INT
Wire Wire Line
	14450 4350 14950 4350
NoConn ~ 14450 2550
Wire Wire Line
	14450 2650 14950 2650
Wire Wire Line
	14450 2450 14950 2450
Wire Wire Line
	14450 2350 14950 2350
NoConn ~ 14450 2750
NoConn ~ 14450 2850
NoConn ~ 14450 3050
NoConn ~ 14450 3250
NoConn ~ 14450 3350
NoConn ~ 14450 3450
NoConn ~ 14450 3650
NoConn ~ 14450 4050
NoConn ~ 14450 4150
NoConn ~ 14450 4250
NoConn ~ 14450 4450
NoConn ~ 14450 4650
NoConn ~ 14450 4550
Text GLabel 14950 2450 2    50   Output ~ 0
RX
Wire Wire Line
	7500 8450 7850 8450
Wire Wire Line
	7500 8350 7500 8450
Wire Wire Line
	7500 6900 7850 6900
Wire Wire Line
	7500 7000 7500 6900
Text GLabel 7850 6900 2    50   Output ~ 0
CHIP_EN
Text GLabel 7850 8450 2    50   Output ~ 0
GPIO0
Wire Wire Line
	6350 7200 6550 7200
Connection ~ 6350 7200
Wire Wire Line
	7500 7750 7500 7950
Wire Wire Line
	6350 7750 7500 7750
Wire Wire Line
	6350 7200 6350 7750
Wire Wire Line
	6450 8150 6550 8150
Connection ~ 6450 8150
Wire Wire Line
	7500 7650 7500 7400
Wire Wire Line
	6450 7650 7500 7650
Wire Wire Line
	6450 8150 6450 7650
Wire Wire Line
	6750 8150 7200 8150
Wire Wire Line
	6150 8150 6450 8150
Wire Wire Line
	6750 7200 7200 7200
Wire Wire Line
	6150 7200 6350 7200
$Comp
L Device:R_Small_US R3
U 1 1 8BD3840C
P 6650 8150
F 0 "R3" V 6445 8150 50  0000 C CNN
F 1 "10K" V 6536 8150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6650 8150 50  0001 C CNN
F 3 "~" H 6650 8150 50  0001 C CNN
F 4 "C441897" H 6650 8150 50  0001 C CNN "LCSC#"
	1    6650 8150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 8BD37EDB
P 6650 7200
F 0 "R2" V 6445 7200 50  0000 C CNN
F 1 "10K" V 6536 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6650 7200 50  0001 C CNN
F 3 "~" H 6650 7200 50  0001 C CNN
F 4 "C441897" H 6650 7200 50  0001 C CNN "LCSC#"
	1    6650 7200
	0    1    1    0   
$EndComp
Text GLabel 6150 7200 0    50   Input ~ 0
DTR
Text GLabel 6150 8150 0    50   Input ~ 0
RTS
Text Notes 5700 6450 0    197  ~ 39
Auto Reset Mode
$Comp
L Transistor_BJT:MBT3904DW1 Q1
U 2 1 88738F82
P 7400 8150
F 0 "Q1" H 7590 8104 50  0000 L CNN
F 1 "MBT3904DW1" H 7590 8195 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7600 8250 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT3904DW1T1-D.PDF" H 7400 8150 50  0001 C CNN
F 4 "C110150" H 7400 8150 50  0001 C CNN "LCSC#"
	2    7400 8150
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:MBT3904DW1 Q1
U 1 1 887333EB
P 7400 7200
F 0 "Q1" H 7590 7246 50  0000 L CNN
F 1 "MBT3904DW1" H 7590 7155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7600 7300 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT3904DW1T1-D.PDF" H 7400 7200 50  0001 C CNN
F 4 "C110150" H 7400 7200 50  0001 C CNN "LCSC#"
	1    7400 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 3150 11450 3150
Wire Wire Line
	11000 2950 11450 2950
Wire Wire Line
	11000 2850 11450 2850
Wire Wire Line
	11000 2750 11450 2750
Text GLabel 11450 3150 2    50   Output ~ 0
DTR
Text GLabel 11450 2750 2    50   Output ~ 0
RTS
Text GLabel 11450 2950 2    50   Output ~ 0
TX
Text GLabel 11450 2850 2    50   Input ~ 0
RX
Text Notes 7700 4550 0    50   ~ 0
CP2102  | R_VBUS_HI=0,       R_VBUS_LO=Unpopulated
Text Notes 7700 4400 0    50   ~ 0
CP2102N | R_VBUS_HI=22.1K , R_VBUS_LO=47.5K
Connection ~ 9550 3050
Wire Wire Line
	9550 3050 10000 3050
Wire Wire Line
	9550 3550 9550 3800
Wire Wire Line
	9550 3050 9550 3350
Wire Wire Line
	9500 3050 9550 3050
Connection ~ 8750 3050
Wire Wire Line
	8750 3050 9300 3050
$Comp
L Device:R_Small_US R_VBUS_HI1
U 1 1 84A8EA52
P 9400 3050
F 0 "R_VBUS_HI1" V 9300 3050 50  0000 C CNN
F 1 "0" V 9300 3100 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9400 3050 50  0001 C CNN
F 3 "~" H 9400 3050 50  0001 C CNN
F 4 "C100044" H 9400 3050 50  0001 C CNN "LCSC#"
	1    9400 3050
	0    1    1    0   
$EndComp
Text Notes 7700 4250 0    50   ~ 10
VBUS Voltage Divider
$Comp
L power:GND #PWR0938
U 1 1 85EBA41E
P 9550 3800
F 0 "#PWR0938" H 9550 3550 50  0001 C CNN
F 1 "GND" H 9555 3627 50  0000 C CNN
F 2 "" H 9550 3800 50  0001 C CNN
F 3 "" H 9550 3800 50  0001 C CNN
	1    9550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3800 8850 3700
$Comp
L Device:R_Small_US R_VBUS_LO1
U 1 1 84A8E419
P 9550 3450
F 0 "R_VBUS_LO1" H 9600 3400 50  0000 L CNN
F 1 "0" H 9618 3405 50  0001 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9550 3450 50  0001 C CNN
F 3 "~" H 9550 3450 50  0001 C CNN
F 4 "C100044" H 9550 3450 50  0001 C CNN "LCSC#"
	1    9550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3250 10000 3250
Connection ~ 8950 3250
Wire Wire Line
	8950 3300 8950 3250
Wire Wire Line
	8850 3150 10000 3150
Connection ~ 8850 3150
Wire Wire Line
	8850 3300 8850 3150
Wire Wire Line
	8750 3300 8750 3050
Wire Wire Line
	8550 3250 8950 3250
Wire Wire Line
	8550 3150 8850 3150
Wire Wire Line
	8650 3050 8750 3050
$Comp
L power:GND #PWR0937
U 1 1 81BAB2FA
P 8850 3800
F 0 "#PWR0937" H 8850 3550 50  0001 C CNN
F 1 "GND" H 8855 3627 50  0000 C CNN
F 2 "" H 8850 3800 50  0001 C CNN
F 3 "" H 8850 3800 50  0001 C CNN
	1    8850 3800
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:SP0503BAHT D385
U 1 1 7ECD3409
P 8850 3500
F 0 "D385" H 9050 3500 50  0000 L CNN
F 1 "SP0503BAHT" H 8900 3350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 9075 3450 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 8975 3625 50  0001 C CNN
F 4 "C7074" H 8850 3500 50  0001 C CNN "LCSC#"
	1    8850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2050 8650 3050
$Comp
L power:VBUS #PWR0936
U 1 1 7E9745B3
P 8650 2050
F 0 "#PWR0936" H 8650 1900 50  0001 C CNN
F 1 "VBUS" H 8665 2223 50  0000 C CNN
F 2 "" H 8650 2050 50  0001 C CNN
F 3 "" H 8650 2050 50  0001 C CNN
	1    8650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2850 10000 2850
Wire Wire Line
	9050 2550 9050 2850
Wire Wire Line
	9050 2050 9050 2350
$Comp
L power:VBUS #PWR0935
U 1 1 7E2C66CF
P 9050 2050
F 0 "#PWR0935" H 9050 1900 50  0001 C CNN
F 1 "VBUS" H 9065 2223 50  0000 C CNN
F 2 "" H 9050 2050 50  0001 C CNN
F 3 "" H 9050 2050 50  0001 C CNN
	1    9050 2050
	1    0    0    -1  
$EndComp
Connection ~ 9650 2350
Wire Wire Line
	9600 2350 9650 2350
Wire Wire Line
	9600 2050 9600 2350
Wire Wire Line
	9800 2550 9950 2550
Connection ~ 9800 2550
Wire Wire Line
	9800 2550 9800 2650
Wire Wire Line
	9650 2550 9800 2550
Wire Wire Line
	9950 2350 10400 2350
Connection ~ 9950 2350
Wire Wire Line
	9650 2350 9950 2350
$Comp
L power:GND #PWR0934
U 1 1 7D578412
P 9800 2650
F 0 "#PWR0934" H 9800 2400 50  0001 C CNN
F 1 "GND" H 9900 2550 50  0000 C CNN
F 2 "" H 9800 2650 50  0001 C CNN
F 3 "" H 9800 2650 50  0001 C CNN
	1    9800 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 7D5721BB
P 9650 2450
F 0 "C2" H 9850 2400 50  0000 R CNN
F 1 "1uF" H 9950 2500 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9650 2450 50  0001 C CNN
F 3 "~" H 9650 2450 50  0001 C CNN
F 4 "C272771" H 9650 2450 50  0001 C CNN "LCSC#"
	1    9650 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 7CEDA2A6
P 9950 2450
F 0 "C3" H 9858 2404 50  0000 R CNN
F 1 "0.1uF" H 9858 2495 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9950 2450 50  0001 C CNN
F 3 "~" H 9950 2450 50  0001 C CNN
F 4 "C478888" H 9950 2450 50  0001 C CNN "LCSC#"
	1    9950 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	10900 2150 11050 2150
Wire Wire Line
	10500 2150 10500 2450
Connection ~ 10500 2150
Wire Wire Line
	10500 2150 10700 2150
Wire Wire Line
	10500 2050 10500 2150
$Comp
L power:GND #PWR0933
U 1 1 7A723B86
P 11050 2150
F 0 "#PWR0933" H 11050 1900 50  0001 C CNN
F 1 "GND" H 11055 1977 50  0000 C CNN
F 2 "" H 11050 2150 50  0001 C CNN
F 3 "" H 11050 2150 50  0001 C CNN
	1    11050 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 7A3C8A9A
P 10800 2150
F 0 "C5" V 10571 2150 50  0000 C CNN
F 1 "0.1uF" V 10662 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 10800 2150 50  0001 C CNN
F 3 "~" H 10800 2150 50  0001 C CNN
F 4 "C478888" H 10800 2150 50  0001 C CNN "LCSC#"
	1    10800 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 79D1E41B
P 9050 2450
F 0 "R6" H 9118 2496 50  0000 L CNN
F 1 "4.7K" H 9118 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9050 2450 50  0001 C CNN
F 3 "~" H 9050 2450 50  0001 C CNN
F 4 "C163915" H 9050 2450 50  0001 C CNN "LCSC#"
	1    9050 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0932
U 1 1 799C823E
P 10500 2050
F 0 "#PWR0932" H 10500 1900 50  0001 C CNN
F 1 "+3.3V" H 10515 2223 50  0000 C CNN
F 2 "" H 10500 2050 50  0001 C CNN
F 3 "" H 10500 2050 50  0001 C CNN
	1    10500 2050
	1    0    0    -1  
$EndComp
Text GLabel 8550 3250 0    50   BiDi ~ 0
USB_D-
Text GLabel 8550 3150 0    50   BiDi ~ 0
USB_D+
Wire Wire Line
	10400 2450 10400 2350
Wire Wire Line
	10500 5350 10500 5050
$Comp
L power:GND #PWR0930
U 1 1 785DF2A8
P 10500 5350
F 0 "#PWR0930" H 10500 5100 50  0001 C CNN
F 1 "GND" H 10505 5177 50  0000 C CNN
F 2 "" H 10500 5350 50  0001 C CNN
F 3 "" H 10500 5350 50  0001 C CNN
	1    10500 5350
	1    0    0    -1  
$EndComp
NoConn ~ 11000 4850
NoConn ~ 11000 4750
NoConn ~ 11000 4650
NoConn ~ 11000 4550
NoConn ~ 11000 4450
NoConn ~ 11000 4350
NoConn ~ 11000 4250
NoConn ~ 11000 4050
NoConn ~ 11000 3950
NoConn ~ 11000 3850
NoConn ~ 11000 3650
NoConn ~ 11000 3550
NoConn ~ 11000 3350
NoConn ~ 11000 3250
NoConn ~ 11000 3050
NoConn ~ 11000 2650
Text Notes 7600 1150 0    197  ~ 39
USB-UART
$Comp
L Interface_USB:CP2102N-A01-GQFN28 U3
U 1 1 60C4581B
P 10500 3750
F 0 "U3" H 10500 2361 50  0000 C CNN
F 1 "CP2102N-A01-GQFN28" H 10500 2270 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-28-1EP_5x5mm_P0.5mm_EP3.35x3.35mm" H 10950 2550 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 10550 3000 50  0001 C CNN
F 4 "C6568" H 10500 3750 50  0001 C CNN "LCSC#"
	1    10500 3750
	1    0    0    -1  
$EndComp
Text Notes 2800 1200 0    197  ~ 39
USB Connector
Text Notes 2850 1450 0    50   ~ 0
Populate USB-C either or USB Micro connector, just incase there is a problem with either connector.
Wire Wire Line
	4050 2550 4050 2600
Connection ~ 4050 2550
Wire Wire Line
	4050 2550 4800 2550
Text GLabel 4800 2550 2    50   BiDi ~ 0
USB_D+
Wire Wire Line
	4050 2350 4050 2400
Connection ~ 4050 2350
Wire Wire Line
	4050 2350 4800 2350
Text GLabel 4800 2350 2    50   BiDi ~ 0
USB_D-
NoConn ~ 4050 2800
NoConn ~ 4050 2900
NoConn ~ 4050 3100
NoConn ~ 4050 3200
NoConn ~ 4050 3400
NoConn ~ 4050 3500
NoConn ~ 4050 3700
NoConn ~ 4050 3800
NoConn ~ 4050 4000
NoConn ~ 4050 4100
Wire Wire Line
	4300 3650 4300 4450
Connection ~ 4300 3650
Wire Wire Line
	4600 3650 4300 3650
Wire Wire Line
	4600 3000 4600 3650
Wire Wire Line
	4600 2000 4600 2800
Wire Wire Line
	4050 2000 4600 2000
$Comp
L Device:R_Small_US R7
U 1 1 6D8DC070
P 4600 2900
F 0 "R7" H 4532 2854 50  0000 R CNN
F 1 "5.1K" H 4532 2945 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4600 2900 50  0001 C CNN
F 3 "~" H 4600 2900 50  0001 C CNN
F 4 "C14677" H 4600 2900 50  0001 C CNN "LCSC#"
	1    4600 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 3000 4300 3650
$Comp
L power:GND #PWR0925
U 1 1 6D58FC71
P 4300 4450
F 0 "#PWR0925" H 4300 4200 50  0001 C CNN
F 1 "GND" H 4305 4277 50  0000 C CNN
F 2 "" H 4300 4450 50  0001 C CNN
F 3 "" H 4300 4450 50  0001 C CNN
	1    4300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2100 4300 2800
Wire Wire Line
	4050 2100 4300 2100
$Comp
L Device:R_Small_US R5
U 1 1 6D248F4F
P 4300 2900
F 0 "R5" H 4232 2854 50  0000 R CNN
F 1 "5.1K" H 4232 2945 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4300 2900 50  0001 C CNN
F 3 "~" H 4300 2900 50  0001 C CNN
F 4 "C14677" H 4300 2900 50  0001 C CNN "LCSC#"
	1    4300 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 1800 4400 1700
Wire Wire Line
	4050 1800 4400 1800
$Comp
L power:VBUS #PWR0924
U 1 1 6CF04559
P 4400 1700
F 0 "#PWR0924" H 4400 1550 50  0001 C CNN
F 1 "VBUS" H 4415 1873 50  0000 C CNN
F 2 "" H 4400 1700 50  0001 C CNN
F 3 "" H 4400 1700 50  0001 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2300 4050 2350
Wire Wire Line
	4050 2500 4050 2550
Connection ~ 3300 4400
Wire Wire Line
	3300 4400 3450 4400
Wire Wire Line
	3300 4400 3300 4600
Wire Wire Line
	3150 4400 3300 4400
$Comp
L power:GND #PWR0923
U 1 1 6C216F04
P 3300 4600
F 0 "#PWR0923" H 3300 4350 50  0001 C CNN
F 1 "GND" H 3305 4427 50  0000 C CNN
F 2 "" H 3300 4600 50  0001 C CNN
F 3 "" H 3300 4600 50  0001 C CNN
	1    3300 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Receptacle J1
U 1 1 6B85E9FE
P 3450 2800
F 0 "J1" H 3557 4067 50  0000 C CNN
F 1 "USB_C_Receptacle" H 3557 3976 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_JING_EXTENSION_C168704_USB2_VERTICAL" H 3600 2800 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 3600 2800 50  0001 C CNN
F 4 "C168704" H 3450 2800 50  0001 C CNN "LCSC#"
	1    3450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7500 2550 7500
Text Notes 1000 6550 0    197  ~ 39
3.3V Power Regulator
Wire Wire Line
	4350 8050 4350 8000
Wire Wire Line
	3900 7500 4000 7500
Connection ~ 3900 7500
Wire Wire Line
	3900 7250 3900 7500
Wire Wire Line
	3850 7500 3900 7500
$Comp
L power:+3.3V #PWR0922
U 1 1 65EEDF5A
P 3900 7250
F 0 "#PWR0922" H 3900 7100 50  0001 C CNN
F 1 "+3.3V" H 3915 7423 50  0000 C CNN
F 2 "" H 3900 7250 50  0001 C CNN
F 3 "" H 3900 7250 50  0001 C CNN
	1    3900 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0921
U 1 1 6A526D7E
P 2550 7250
F 0 "#PWR0921" H 2550 7100 50  0001 C CNN
F 1 "+5V" H 2565 7423 50  0000 C CNN
F 2 "" H 2550 7250 50  0001 C CNN
F 3 "" H 2550 7250 50  0001 C CNN
	1    2550 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7250 1950 7500
$Comp
L power:VBUS #PWR0920
U 1 1 69EB304F
P 1950 7250
F 0 "#PWR0920" H 1950 7100 50  0001 C CNN
F 1 "VBUS" H 1965 7423 50  0000 C CNN
F 2 "" H 1950 7250 50  0001 C CNN
F 3 "" H 1950 7250 50  0001 C CNN
	1    1950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 7500 2550 7750
Wire Wire Line
	2550 7950 2550 8050
Connection ~ 2550 7500
Wire Wire Line
	2550 7250 2550 7500
$Comp
L Device:C_Small C4
U 1 1 65570D14
P 4000 7750
F 0 "C4" H 4050 7850 50  0000 L CNN
F 1 "1uF" H 4050 7650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4000 7750 50  0001 C CNN
F 3 "~" H 4000 7750 50  0001 C CNN
F 4 "C272771" H 4000 7750 50  0001 C CNN "LCSC#"
	1    4000 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7500 3250 7500
Connection ~ 2800 7500
Wire Wire Line
	2800 7750 2800 7500
Wire Wire Line
	2950 7750 2800 7750
Wire Wire Line
	2550 7500 2800 7500
$Comp
L Device:C_Small C1
U 1 1 6881CDD3
P 2550 7850
F 0 "C1" H 2350 7850 50  0000 L CNN
F 1 "1uF" H 2300 7750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2550 7850 50  0001 C CNN
F 3 "~" H 2550 7850 50  0001 C CNN
F 4 "C272771" H 2550 7850 50  0001 C CNN "LCSC#"
	1    2550 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 7750 3250 7600
Wire Wire Line
	3150 7750 3250 7750
Connection ~ 4350 8000
Wire Wire Line
	4350 7850 4350 8000
Wire Wire Line
	4000 8000 4350 8000
Wire Wire Line
	4000 7850 4000 8000
Wire Wire Line
	4000 7500 4350 7500
Connection ~ 4000 7500
Wire Wire Line
	4000 7650 4000 7500
Wire Wire Line
	4350 7500 4350 7650
$Comp
L Device:C_Small C6
U 1 1 65571BB0
P 4350 7750
F 0 "C6" H 4400 7850 50  0000 L CNN
F 1 "10uF" H 4400 7650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4350 7750 50  0001 C CNN
F 3 "~" H 4350 7750 50  0001 C CNN
F 4 "C19702" H 4350 7750 50  0001 C CNN "LCSC#"
	1    4350 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 7900 3550 8050
$Comp
L power:GND #PWR0919
U 1 1 6524507A
P 2550 8050
F 0 "#PWR0919" H 2550 7800 50  0001 C CNN
F 1 "GND" H 2555 7877 50  0000 C CNN
F 2 "" H 2550 8050 50  0001 C CNN
F 3 "" H 2550 8050 50  0001 C CNN
	1    2550 8050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0918
U 1 1 6523F767
P 4350 8050
F 0 "#PWR0918" H 4350 7800 50  0001 C CNN
F 1 "GND" H 4355 7877 50  0000 C CNN
F 2 "" H 4350 8050 50  0001 C CNN
F 3 "" H 4350 8050 50  0001 C CNN
	1    4350 8050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0917
U 1 1 65239EAE
P 3550 8050
F 0 "#PWR0917" H 3550 7800 50  0001 C CNN
F 1 "GND" H 3555 7877 50  0000 C CNN
F 2 "" H 3550 8050 50  0001 C CNN
F 3 "" H 3550 8050 50  0001 C CNN
	1    3550 8050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 64BF322E
P 3050 7750
F 0 "R8" V 2950 7750 50  0000 C CNN
F 1 "100K" V 3150 7750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3050 7750 50  0001 C CNN
F 3 "~" H 3050 7750 50  0001 C CNN
F 4 "C189597" H 3050 7750 50  0001 C CNN "LCSC#"
	1    3050 7750
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AP2112K-3.3 U2
U 1 1 64BED4A7
P 3550 7600
F 0 "U2" H 3550 7942 50  0000 C CNN
F 1 "AP2112K-3.3" H 3550 7851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3550 7925 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 3550 7700 50  0001 C CNN
F 4 "C51118" H 3550 7600 50  0001 C CNN "LCSC#"
	1    3550 7600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0926
U 1 1 60EA9E45
P 9600 2050
F 0 "#PWR0926" H 9600 1900 50  0001 C CNN
F 1 "+3.3V" H 9615 2223 50  0000 C CNN
F 2 "" H 9600 2050 50  0001 C CNN
F 3 "" H 9600 2050 50  0001 C CNN
	1    9600 2050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
