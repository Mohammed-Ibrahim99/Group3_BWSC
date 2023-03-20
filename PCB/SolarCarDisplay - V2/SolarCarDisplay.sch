EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Solar Car Dashboard V2"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	2400 6950 2450 6950
Wire Wire Line
	9950 2800 9950 2750
$Comp
L power:GND #PWR01
U 1 1 6190F39C
P 9950 2950
F 0 "#PWR01" H 9950 2700 50  0001 C CNN
F 1 "GND" H 9955 2777 50  0000 C CNN
F 2 "" H 9950 2950 50  0001 C CNN
F 3 "" H 9950 2950 50  0001 C CNN
	1    9950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2900 9950 2950
Text Notes 5850 650  0    118  ~ 24
Voltage Regulators and Connectors
Text Label 6800 3650 0    50   ~ 0
VDDD_1.2V
$Comp
L power:GND #PWR0104
U 1 1 61A75819
P 7000 3850
F 0 "#PWR0104" H 7000 3600 50  0001 C CNN
F 1 "GND" H 7005 3677 50  0000 C CNN
F 2 "" H 7000 3850 50  0001 C CNN
F 3 "" H 7000 3850 50  0001 C CNN
	1    7000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3850 7500 3850
$Comp
L power:GND #PWR0105
U 1 1 61A77B6B
P 6800 4550
F 0 "#PWR0105" H 6800 4300 50  0001 C CNN
F 1 "GND" H 6805 4377 50  0000 C CNN
F 2 "" H 6800 4550 50  0001 C CNN
F 3 "" H 6800 4550 50  0001 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x20 J3
U 1 1 61A79DFD
P 8700 4300
F 0 "J3" H 8650 3150 50  0000 L CNN
F 1 "Conn_01x20" H 8350 3050 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 8700 4300 50  0001 C CNN
F 3 "https://www.rapidonline.com/truconnect-20-way-single-row-pcb-socket-2-54mm-pitch-19-0088" H 8700 4300 50  0001 C CNN
	1    8700 4300
	1    0    0    -1  
$EndComp
Text Label 8350 3400 0    50   ~ 0
21
Text Label 8350 3500 0    50   ~ 0
22
Text Label 8350 3600 0    50   ~ 0
23
Text Label 8350 3700 0    50   ~ 0
24
Text Label 8350 3800 0    50   ~ 0
25
Text Label 8350 3900 0    50   ~ 0
26
Wire Wire Line
	8500 4000 8350 4000
Wire Wire Line
	8500 4100 8350 4100
Text Label 8350 4100 0    50   ~ 0
28
Wire Wire Line
	8500 4200 8350 4200
Text Label 8350 4200 0    50   ~ 0
29
Wire Wire Line
	8500 4300 8350 4300
Text Label 8350 4300 0    50   ~ 0
30
Wire Wire Line
	8500 4400 8350 4400
Text Label 8350 4400 0    50   ~ 0
31
Wire Wire Line
	8500 4500 8350 4500
Text Label 8350 4500 0    50   ~ 0
32
Wire Wire Line
	8500 4600 8350 4600
Text Label 8350 4600 0    50   ~ 0
33
Wire Wire Line
	8500 4700 8350 4700
Text Label 8350 4700 0    50   ~ 0
34
Wire Wire Line
	8500 4800 8350 4800
Text Label 8350 4800 0    50   ~ 0
35
Wire Wire Line
	8500 4900 8350 4900
Text Label 8350 4900 0    50   ~ 0
36
Wire Wire Line
	8500 5000 8350 5000
Text Label 8350 5000 0    50   ~ 0
37
Text Label 8350 5100 0    50   ~ 0
38
Wire Wire Line
	8500 5200 8350 5200
Text Label 8350 5200 0    50   ~ 0
39
Wire Wire Line
	8500 5300 8350 5300
Text Label 8350 5300 0    50   ~ 0
40
Text Label 7800 5100 0    50   ~ 0
5V_BackLight
$Comp
L power:GND #PWR0106
U 1 1 61A96E40
P 6800 5150
F 0 "#PWR0106" H 6800 4900 50  0001 C CNN
F 1 "GND" H 6805 4977 50  0000 C CNN
F 2 "" H 6800 5150 50  0001 C CNN
F 3 "" H 6800 5150 50  0001 C CNN
	1    6800 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 61B12A7F
P 10650 2050
F 0 "J5" H 10730 2042 50  0000 L CNN
F 1 "Conn_01x04" H 10730 1951 50  0000 L CNN
F 2 "34793-0040:347930040" H 10650 2050 50  0001 C CNN
F 3 "https://docs.rs-online.com/78dc/0900766b815f3a26.pdf" H 10650 2050 50  0001 C CNN
	1    10650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1950 10200 1950
Wire Wire Line
	10450 2150 10200 2150
Text Label 10050 2050 0    50   ~ 0
SDA
Text Label 10200 2150 0    50   ~ 0
SCL
Wire Wire Line
	10050 2050 10450 2050
Wire Wire Line
	10450 2250 10350 2250
$Comp
L power:GND #PWR0109
U 1 1 61B20AD4
P 10350 2250
F 0 "#PWR0109" H 10350 2000 50  0001 C CNN
F 1 "GND" H 10355 2077 50  0000 C CNN
F 2 "" H 10350 2250 50  0001 C CNN
F 3 "" H 10350 2250 50  0001 C CNN
	1    10350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 950  10200 950 
Text Label 10200 1450 0    50   ~ 0
CAN_H
Text Label 10200 950  0    50   ~ 0
CAN_L
Wire Wire Line
	10200 1450 10450 1450
Text Label 7050 1900 0    50   ~ 0
VDDD_1.2V
Wire Wire Line
	7800 5100 8500 5100
$Comp
L power:GND #PWR0111
U 1 1 62038606
P 6650 2200
F 0 "#PWR0111" H 6650 1950 50  0001 C CNN
F 1 "GND" H 6655 2027 50  0000 C CNN
F 2 "" H 6650 2200 50  0001 C CNN
F 3 "" H 6650 2200 50  0001 C CNN
	1    6650 2200
	1    0    0    -1  
$EndComp
Text Label 10200 1950 2    50   ~ 0
+3.3V_ESP32_RF
Text Label 6250 2750 2    50   ~ 0
+12V
Text Label 7050 2750 0    50   ~ 0
+3.3V_Display
Text Label 6800 3550 0    50   ~ 0
+3.3V_Display
Text Label 6800 3750 0    50   ~ 0
+3.3V_Display
$Comp
L power:GND #PWR0116
U 1 1 620A380F
P 6650 3050
F 0 "#PWR0116" H 6650 2800 50  0001 C CNN
F 1 "GND" H 6655 2877 50  0000 C CNN
F 2 "" H 6650 3050 50  0001 C CNN
F 3 "" H 6650 3050 50  0001 C CNN
	1    6650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 2900 9950 2900
Wire Wire Line
	10450 2800 9950 2800
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 620A3CF7
P 10650 2800
F 0 "J2" H 10730 2792 50  0000 L CNN
F 1 "Conn_01x02" H 10730 2701 50  0000 L CNN
F 2 "2 Contact Connector:ATF132PBM03" H 10650 2800 50  0001 C CNN
F 3 "https://docs.rs-online.com/755d/A700000006547145.pdf" H 10650 2800 50  0001 C CNN
	1    10650 2800
	1    0    0    -1  
$EndComp
Text Notes 10450 700  0    59   ~ 12
CAN Bus\n
Text Notes 10150 1850 0    59   ~ 12
RF ESP32\n
Text Notes 10100 2750 0    59   ~ 12
Input Voltage\n\n
Text Label 8000 1900 2    50   ~ 0
+12V
Text Label 8800 1900 0    50   ~ 0
5V_TexasInstruments
$Comp
L power:GND #PWR02
U 1 1 62100077
P 8400 2200
F 0 "#PWR02" H 8400 1950 50  0001 C CNN
F 1 "GND" H 8405 2027 50  0000 C CNN
F 2 "" H 8400 2200 50  0001 C CNN
F 3 "" H 8400 2200 50  0001 C CNN
	1    8400 2200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:TSR_1-2412 U6
U 1 1 6202F63C
P 6650 2000
F 0 "U6" H 6650 2367 50  0000 C CNN
F 1 "TSR_1-2412" H 6650 2276 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 6650 1850 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 6650 2000 50  0001 C CNN
	1    6650 2000
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:TSR_1-2450 U8
U 1 1 6210006E
P 8400 2000
F 0 "U8" H 8400 2367 50  0000 C CNN
F 1 "TSR_1-2450" H 8400 2276 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 8400 1850 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 8400 2000 50  0001 C CNN
	1    8400 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 621969E8
P 10250 1050
F 0 "#PWR0102" H 10250 800 50  0001 C CNN
F 1 "GND" H 10255 877 50  0000 C CNN
F 2 "" H 10250 1050 50  0001 C CNN
F 3 "" H 10250 1050 50  0001 C CNN
	1    10250 1050
	1    0    0    -1  
$EndComp
Text Label 10050 2800 0    50   ~ 0
+12V
$Comp
L power:+12V #PWR0117
U 1 1 6225C7A1
P 9950 2750
F 0 "#PWR0117" H 9950 2600 50  0001 C CNN
F 1 "+12V" H 9965 2923 50  0000 C CNN
F 2 "" H 9950 2750 50  0001 C CNN
F 3 "" H 9950 2750 50  0001 C CNN
	1    9950 2750
	1    0    0    -1  
$EndComp
Text Label 6900 4650 0    50   ~ 0
TFT_Pin13
Text Label 6900 4750 0    50   ~ 0
TFT_Pin14
Text Label 6900 4850 0    50   ~ 0
TFT_Pin15
Text Label 6900 4950 0    50   ~ 0
TFT_Pin16
Text Label 6900 5050 0    50   ~ 0
TFT_Pin17
Text Label 6900 5250 0    50   ~ 0
TFT_Pin19
Text Label 6900 5350 0    50   ~ 0
TFT_Pin20
Wire Wire Line
	6800 5150 7500 5150
Wire Wire Line
	6800 4550 7500 4550
Text Label 7950 3400 0    50   ~ 0
TFT_Pin21
Wire Wire Line
	7950 3400 8500 3400
Text Label 7950 3500 0    50   ~ 0
TFT_Pin22
Wire Wire Line
	7950 3500 8500 3500
Text Label 7950 3600 0    50   ~ 0
TFT_Pin23
Wire Wire Line
	7950 3600 8500 3600
Text Label 7950 3700 0    50   ~ 0
TFT_Pin24
Wire Wire Line
	7950 3700 8500 3700
Text Label 7950 3800 0    50   ~ 0
TFT_Pin25
Wire Wire Line
	7950 3800 8500 3800
Text Label 7950 3900 0    50   ~ 0
TFT_Pin26
Wire Wire Line
	7950 3900 8500 3900
$Comp
L power:GND #PWR0119
U 1 1 6220966F
P 9050 3900
F 0 "#PWR0119" H 9050 3650 50  0001 C CNN
F 1 "GND" H 9055 3727 50  0000 C CNN
F 2 "" H 9050 3900 50  0001 C CNN
F 3 "" H 9050 3900 50  0001 C CNN
	1    9050 3900
	1    0    0    -1  
$EndComp
Text Notes 8900 3700 0    79   ~ 16
13-17\nInputs\n
$Comp
L Connector_Generic:Conn_01x20 J7
U 1 1 622125E0
P 11100 4500
F 0 "J7" H 10600 4350 50  0000 L CNN
F 1 "Conn_01x20" H 10300 4250 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 11100 4500 50  0001 C CNN
F 3 "https://www.rapidonline.com/truconnect-20-way-single-row-pcb-socket-2-54mm-pitch-19-0088" H 11100 4500 50  0001 C CNN
	1    11100 4500
	1    0    0    1   
$EndComp
Text Label 10750 3500 0    50   ~ 0
21
Text Label 10750 3600 0    50   ~ 0
22
Text Label 10750 3700 0    50   ~ 0
23
Text Label 10750 3800 0    50   ~ 0
24
Text Label 10750 3900 0    50   ~ 0
25
Text Label 10750 4000 0    50   ~ 0
26
Wire Wire Line
	10900 4100 10750 4100
Text Label 10750 4100 0    50   ~ 0
27
Text Label 10750 4200 0    50   ~ 0
28
Wire Wire Line
	10900 4300 10750 4300
Text Label 10750 4300 0    50   ~ 0
29
Wire Wire Line
	10900 4400 10750 4400
Text Label 10750 4400 0    50   ~ 0
30
Wire Wire Line
	10900 4500 10750 4500
Text Label 10750 4500 0    50   ~ 0
31
Wire Wire Line
	10900 4600 10750 4600
Text Label 10750 4600 0    50   ~ 0
32
Wire Wire Line
	10900 4700 10750 4700
Text Label 10750 4700 0    50   ~ 0
33
Wire Wire Line
	10900 4800 10750 4800
Text Label 10750 4800 0    50   ~ 0
34
Wire Wire Line
	10900 4900 10750 4900
Text Label 10750 4900 0    50   ~ 0
35
Wire Wire Line
	10900 5000 10750 5000
Text Label 10750 5000 0    50   ~ 0
36
Wire Wire Line
	10900 5100 10750 5100
Text Label 10750 5100 0    50   ~ 0
37
Text Label 10750 5200 0    50   ~ 0
38
Wire Wire Line
	10900 5300 10750 5300
Text Label 10750 5300 0    50   ~ 0
39
Wire Wire Line
	10900 5400 10750 5400
Text Label 10750 5400 0    50   ~ 0
40
Text Label 10200 5200 0    50   ~ 0
5V_BackLight
Text Notes 10200 3650 0    79   ~ 16
19-26\nInputs\n
Wire Wire Line
	10200 5200 10900 5200
$Comp
L power:GND #PWR0120
U 1 1 6221A68A
P 8850 4600
F 0 "#PWR0120" H 8850 4350 50  0001 C CNN
F 1 "GND" H 8855 4427 50  0000 C CNN
F 2 "" H 8850 4600 50  0001 C CNN
F 3 "" H 8850 4600 50  0001 C CNN
	1    8850 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 6221AA66
P 8850 5200
F 0 "#PWR0121" H 8850 4950 50  0001 C CNN
F 1 "GND" H 8855 5027 50  0000 C CNN
F 2 "" H 8850 5200 50  0001 C CNN
F 3 "" H 8850 5200 50  0001 C CNN
	1    8850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 3500 10900 3500
Wire Wire Line
	10750 3600 10900 3600
Wire Wire Line
	10750 3700 10900 3700
Wire Wire Line
	10750 3800 10900 3800
Wire Wire Line
	10750 3900 10900 3900
Wire Wire Line
	10750 4000 10900 4000
$Comp
L power:GND #PWR0122
U 1 1 6220967C
P 9500 3500
F 0 "#PWR0122" H 9500 3250 50  0001 C CNN
F 1 "GND" H 9600 3400 50  0000 C CNN
F 2 "" H 9500 3500 50  0001 C CNN
F 3 "" H 9500 3500 50  0001 C CNN
	1    9500 3500
	-1   0    0    1   
$EndComp
Text Label 9400 3500 0    50   ~ 0
1
Text Label 9400 3600 0    50   ~ 0
2
Text Label 9400 3700 0    50   ~ 0
3
Text Label 9400 3800 0    50   ~ 0
4
Text Label 9400 3900 0    50   ~ 0
5
Text Label 9400 4000 0    50   ~ 0
6
Text Label 9400 4100 0    50   ~ 0
7
Text Label 9400 4200 0    50   ~ 0
8
Wire Wire Line
	9550 4300 9400 4300
Text Label 9400 4300 0    50   ~ 0
9
Wire Wire Line
	9550 4400 9400 4400
Text Label 9400 4400 0    50   ~ 0
10
Wire Wire Line
	9550 4500 9400 4500
Text Label 9400 4500 0    50   ~ 0
11
Text Label 9400 4600 0    50   ~ 0
12
Wire Wire Line
	9550 4700 9400 4700
Text Label 9400 4700 0    50   ~ 0
13
Wire Wire Line
	9550 4800 9400 4800
Text Label 9400 4800 0    50   ~ 0
14
Wire Wire Line
	9550 4900 9400 4900
Text Label 9400 4900 0    50   ~ 0
15
Wire Wire Line
	9550 5000 9400 5000
Text Label 9400 5000 0    50   ~ 0
16
Wire Wire Line
	9550 5100 9400 5100
Text Label 9400 5100 0    50   ~ 0
17
Text Label 9400 5200 0    50   ~ 0
18
Wire Wire Line
	9550 5300 9400 5300
Text Label 9400 5300 0    50   ~ 0
19
Wire Wire Line
	9550 5400 9400 5400
Text Label 9400 5400 0    50   ~ 0
20
Wire Wire Line
	9400 3500 9500 3500
Wire Wire Line
	9400 3600 9550 3600
Wire Wire Line
	9400 3700 9550 3700
Wire Wire Line
	9400 3800 9550 3800
Wire Wire Line
	9400 4000 9550 4000
Text Label 7350 3450 0    50   ~ 0
1
Text Label 7350 3550 0    50   ~ 0
2
Text Label 7350 3650 0    50   ~ 0
3
Text Label 7350 3750 0    50   ~ 0
4
Text Label 7350 3850 0    50   ~ 0
5
Text Label 7350 3950 0    50   ~ 0
6
Text Label 7350 4050 0    50   ~ 0
7
Text Label 7350 4150 0    50   ~ 0
8
Text Label 7350 4250 0    50   ~ 0
9
Text Label 7350 4350 0    50   ~ 0
10
Text Label 7350 4450 0    50   ~ 0
11
Text Label 7350 4550 0    50   ~ 0
12
Text Label 7350 4650 0    50   ~ 0
13
Text Label 7350 4750 0    50   ~ 0
14
Text Label 7350 4850 0    50   ~ 0
15
Text Label 7350 4950 0    50   ~ 0
16
Text Label 7350 5050 0    50   ~ 0
17
Text Label 7350 5150 0    50   ~ 0
18
Text Label 7350 5250 0    50   ~ 0
19
Text Label 7350 5350 0    50   ~ 0
20
$Comp
L Connector_Generic:Conn_01x20 J1
U 1 1 61A7810A
P 7700 4350
F 0 "J1" H 7500 3250 50  0000 L CNN
F 1 "Conn_01x20" H 7450 3150 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 7700 4350 50  0001 C CNN
F 3 "https://www.rapidonline.com/truconnect-20-way-single-row-pcb-socket-2-54mm-pitch-19-0088" H 7700 4350 50  0001 C CNN
	1    7700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4150 7500 4150
Wire Wire Line
	7350 4250 7500 4250
Wire Wire Line
	7350 4350 7500 4350
Wire Wire Line
	7350 4450 7500 4450
Wire Wire Line
	7500 4050 7350 4050
Wire Wire Line
	7500 3950 7350 3950
Wire Wire Line
	6800 3750 7500 3750
Wire Wire Line
	7500 3450 7350 3450
Connection ~ 7500 3450
Wire Wire Line
	6800 3550 7500 3550
Wire Wire Line
	6800 3650 7500 3650
Wire Wire Line
	6900 4850 7500 4850
Wire Wire Line
	6900 4750 7500 4750
Wire Wire Line
	6900 4650 7500 4650
Wire Wire Line
	6900 4950 7500 4950
Wire Wire Line
	6900 5050 7500 5050
Wire Wire Line
	6900 5250 7500 5250
Wire Wire Line
	6900 5350 7500 5350
Wire Wire Line
	9550 4100 9400 4100
Text Label 8350 4000 0    50   ~ 0
27
$Comp
L Connector_Generic:Conn_01x09 J4
U 1 1 623F3FAB
P 10650 1250
F 0 "J4" H 10730 1292 50  0000 L CNN
F 1 "Conn_01x09" H 10730 1201 50  0000 L CNN
F 2 "CAN Connector:TE-5747840-6" H 10650 1250 50  0001 C CNN
F 3 "https://docs.rs-online.com/2608/0900766b81711da4.pdf" H 10650 1250 50  0001 C CNN
	1    10650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1050 10450 1050
NoConn ~ 10450 850 
NoConn ~ 10450 1150
NoConn ~ 10450 1250
NoConn ~ 10450 1350
NoConn ~ 10450 1550
NoConn ~ 10450 1650
$Comp
L SolarCarDisplay-rescue:ESP32-DevKitC-Espressif U3
U 1 1 618A7902
P 2500 5850
F 0 "U3" H 2575 7015 50  0000 C CNN
F 1 "ESP32-DevKitC" H 2575 6924 50  0000 C CNN
F 2 "Espressif:ESP32-DevKitC" H 2500 4600 50  0001 C CNN
F 3 "https://docs.espressif.com/projects/esp-idf/zh_CN/latest/esp32/hw-reference/esp32/get-started-devkitc.html" H 2650 4600 50  0001 C CNN
	1    2500 5850
	1    0    0    -1  
$EndComp
Text Label 4250 5200 0    50   ~ 0
SCL
Text Label 4250 5500 0    50   ~ 0
SDA
Text Label 1000 5000 2    50   ~ 0
+3.3V_ESP32
Text Label 4250 5100 0    50   ~ 0
TFT_Pin13
Text Label 4200 5700 0    50   ~ 0
TFT_Pin14
Text Label 4200 5800 0    50   ~ 0
TFT_Pin15
Text Label 4200 5900 0    50   ~ 0
TFT_Pin16
Text Label 4200 6000 0    50   ~ 0
TFT_Pin17
Text Label 4200 6100 0    50   ~ 0
TFT_Pin19
Text Label 4200 6200 0    50   ~ 0
TFT_Pin20
Text Label 4200 6300 0    50   ~ 0
TFT_Pin21
Text Label 4200 6400 0    50   ~ 0
TFT_Pin22
Text Label 4200 6500 0    50   ~ 0
TFT_Pin23
Text Label 600  6400 0    50   ~ 0
TFT_Pin24
Text Label 600  6200 0    50   ~ 0
TFT_Pin25
Text Label 600  6100 0    50   ~ 0
TFT_Pin26
$Comp
L power:GND #PWR0118
U 1 1 6214CF1A
P 4500 4900
F 0 "#PWR0118" H 4500 4650 50  0001 C CNN
F 1 "GND" H 4505 4727 50  0000 C CNN
F 2 "" H 4500 4900 50  0001 C CNN
F 3 "" H 4500 4900 50  0001 C CNN
	1    4500 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 4900 4500 5000
$Comp
L Connector_Generic:Conn_01x19 J8
U 1 1 624AF1E9
P 5650 5850
F 0 "J8" H 5450 4850 50  0000 L CNN
F 1 "Conn_01x19" H 5300 4800 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical" H 5650 5850 50  0001 C CNN
F 3 "~" H 5650 5850 50  0001 C CNN
	1    5650 5850
	1    0    0    -1  
$EndComp
Text Label 5300 4950 0    50   ~ 0
1_
Text Label 5300 5050 0    50   ~ 0
2_
Text Label 5300 5150 0    50   ~ 0
3_
Text Label 5300 5250 0    50   ~ 0
4_
Text Label 5300 5350 0    50   ~ 0
5_
Text Label 5300 5450 0    50   ~ 0
6_
Text Label 5300 5550 0    50   ~ 0
7_
Text Label 5300 5650 0    50   ~ 0
8_
Text Label 5300 5750 0    50   ~ 0
9_
Text Label 5300 5850 0    50   ~ 0
10_
Text Label 5300 5950 0    50   ~ 0
11_
Text Label 5300 6050 0    50   ~ 0
12_
Text Label 5300 6150 0    50   ~ 0
13_
Text Label 5300 6250 0    50   ~ 0
14_
Text Label 5300 6350 0    50   ~ 0
15_
Text Label 5300 6450 0    50   ~ 0
16_
Text Label 5300 6550 0    50   ~ 0
17_
Text Label 5300 6650 0    50   ~ 0
18_
Text Label 5300 6750 0    50   ~ 0
19_
Wire Wire Line
	5300 5650 5450 5650
Wire Wire Line
	5300 5750 5450 5750
Wire Wire Line
	5300 5850 5450 5850
Wire Wire Line
	5300 5950 5450 5950
Wire Wire Line
	5450 5550 5300 5550
Wire Wire Line
	5450 5450 5300 5450
Wire Wire Line
	5450 4950 5300 4950
Wire Wire Line
	5300 5050 5450 5050
Wire Wire Line
	5300 5150 5450 5150
Wire Wire Line
	5300 5250 5450 5250
Wire Wire Line
	5300 5350 5450 5350
Wire Wire Line
	5300 6050 5450 6050
Wire Wire Line
	5300 6150 5450 6150
Wire Wire Line
	5300 6250 5450 6250
Wire Wire Line
	5300 6350 5450 6350
Wire Wire Line
	5300 6450 5450 6450
Wire Wire Line
	5300 6550 5450 6550
Wire Wire Line
	5300 6650 5450 6650
Wire Wire Line
	5300 6750 5450 6750
Wire Wire Line
	1050 5900 1200 5900
Wire Wire Line
	1050 6000 1200 6000
Wire Wire Line
	1200 5500 1050 5500
Wire Wire Line
	1050 5100 1200 5100
Wire Wire Line
	1050 5200 1200 5200
Wire Wire Line
	1050 5300 1200 5300
Wire Wire Line
	1050 5400 1200 5400
Wire Wire Line
	1050 6500 1200 6500
Wire Wire Line
	1050 6600 1200 6600
Wire Wire Line
	1050 6700 1200 6700
Text Label 1050 5000 0    50   ~ 0
1_
Text Label 1050 5100 0    50   ~ 0
2_
Text Label 1050 5200 0    50   ~ 0
3_
Text Label 1050 5300 0    50   ~ 0
4_
Text Label 1050 5400 0    50   ~ 0
5_
Text Label 1050 5500 0    50   ~ 0
6_
Text Label 1050 5600 0    50   ~ 0
7_
Text Label 1050 5700 0    50   ~ 0
8_
Text Label 1050 5800 0    50   ~ 0
9_
Text Label 1050 5900 0    50   ~ 0
10_
Text Label 1050 6000 0    50   ~ 0
11_
Text Label 1050 6100 0    50   ~ 0
12_
Text Label 1050 6200 0    50   ~ 0
13_
Text Label 1050 6300 0    50   ~ 0
14_
Text Label 1050 6400 0    50   ~ 0
15_
Text Label 1050 6500 0    50   ~ 0
16_
Text Label 1050 6600 0    50   ~ 0
17_
Text Label 1050 6700 0    50   ~ 0
18_
Text Label 1050 6800 0    50   ~ 0
19_
Wire Wire Line
	1000 5000 1200 5000
Wire Wire Line
	1050 6800 1200 6800
Text Label 5750 4950 0    50   ~ 0
38_
Text Label 5750 5050 0    50   ~ 0
37_
Text Label 5750 5150 0    50   ~ 0
36_
Text Label 5750 5250 0    50   ~ 0
35_
Text Label 5750 5350 0    50   ~ 0
34_
Text Label 5750 5450 0    50   ~ 0
33_
Text Label 5750 5550 0    50   ~ 0
32_
Text Label 5750 5650 0    50   ~ 0
31_
Text Label 5750 5750 0    50   ~ 0
30_
Text Label 5750 5850 0    50   ~ 0
29_
Text Label 5750 5950 0    50   ~ 0
28_
Text Label 5750 6050 0    50   ~ 0
27_
Text Label 5750 6150 0    50   ~ 0
26_
Text Label 5750 6250 0    50   ~ 0
25_
Text Label 5750 6350 0    50   ~ 0
24_
Text Label 5750 6450 0    50   ~ 0
23_
Text Label 5750 6550 0    50   ~ 0
22_
Text Label 5750 6650 0    50   ~ 0
21_
Text Label 5750 6750 0    50   ~ 0
20_
Wire Wire Line
	5750 5650 5900 5650
Wire Wire Line
	5750 5750 5900 5750
Wire Wire Line
	5750 5850 5900 5850
Wire Wire Line
	5750 5950 5900 5950
Wire Wire Line
	5900 5550 5750 5550
Wire Wire Line
	5900 5450 5750 5450
Wire Wire Line
	5900 4950 5750 4950
Wire Wire Line
	5750 5050 5900 5050
Wire Wire Line
	5750 5150 5900 5150
Wire Wire Line
	5750 5250 5900 5250
Wire Wire Line
	5750 5350 5900 5350
Wire Wire Line
	5750 6050 5900 6050
Wire Wire Line
	5750 6150 5900 6150
Wire Wire Line
	5750 6250 5900 6250
Wire Wire Line
	5750 6350 5900 6350
Wire Wire Line
	5750 6450 5900 6450
Wire Wire Line
	5750 6550 5900 6550
Wire Wire Line
	5750 6650 5900 6650
Wire Wire Line
	5750 6750 5900 6750
$Comp
L Connector_Generic:Conn_01x19 J9
U 1 1 6269154D
P 6100 5850
F 0 "J9" H 6050 4850 50  0000 L CNN
F 1 "Conn_01x19" H 6000 4750 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical" H 6100 5850 50  0001 C CNN
F 3 "~" H 6100 5850 50  0001 C CNN
	1    6100 5850
	1    0    0    -1  
$EndComp
Text Label 4100 5000 2    50   ~ 0
38_
Text Label 4100 5100 2    50   ~ 0
37_
Text Label 4100 5200 2    50   ~ 0
36_
Text Label 4100 5300 2    50   ~ 0
35_
Text Label 4100 5400 2    50   ~ 0
34_
Text Label 4100 5500 2    50   ~ 0
33_
Text Label 4100 5600 2    50   ~ 0
32_
Text Label 4100 5700 2    50   ~ 0
31_
Text Label 4100 5800 2    50   ~ 0
30_
Text Label 4100 5900 2    50   ~ 0
29_
Text Label 4100 6000 2    50   ~ 0
28_
Text Label 4100 6100 2    50   ~ 0
27_
Text Label 4100 6200 2    50   ~ 0
26_
Text Label 4100 6300 2    50   ~ 0
25_
Text Label 4100 6400 2    50   ~ 0
24_
Text Label 4100 6500 2    50   ~ 0
23_
Text Label 4100 6600 2    50   ~ 0
22_
Text Label 4100 6700 2    50   ~ 0
21_
Text Label 4100 6800 2    50   ~ 0
20_
Wire Wire Line
	4100 5300 3950 5300
Wire Wire Line
	4100 5400 3950 5400
Wire Wire Line
	4100 6600 3950 6600
Wire Wire Line
	4100 6700 3950 6700
Wire Wire Line
	3950 5600 4700 5600
Wire Wire Line
	3950 5500 4250 5500
Wire Wire Line
	3950 5100 4250 5100
Wire Wire Line
	3950 5200 4250 5200
Wire Wire Line
	3950 6200 4200 6200
Wire Wire Line
	3950 5000 4500 5000
Wire Wire Line
	3950 5700 4200 5700
Wire Wire Line
	3950 5800 4200 5800
Wire Wire Line
	3950 5900 4200 5900
Wire Wire Line
	3950 6000 4200 6000
Wire Wire Line
	3950 6100 4200 6100
Wire Wire Line
	3950 6300 4200 6300
Wire Wire Line
	3950 6400 4200 6400
Wire Wire Line
	3950 6500 4200 6500
Text Notes 550  4350 0    118  ~ 24
Display, ESP32-DevkitC, Extra Pin Headers, IMU\n\n\n
$Comp
L power:GND #PWR0110
U 1 1 61AF92A7
P 7500 3450
F 0 "#PWR0110" H 7500 3200 50  0001 C CNN
F 1 "GND" H 7600 3350 50  0000 C CNN
F 2 "" H 7500 3450 50  0001 C CNN
F 3 "" H 7500 3450 50  0001 C CNN
	1    7500 3450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 6202C17D
P 8400 3050
F 0 "#PWR0112" H 8400 2800 50  0001 C CNN
F 1 "GND" H 8405 2877 50  0000 C CNN
F 2 "" H 8400 3050 50  0001 C CNN
F 3 "" H 8400 3050 50  0001 C CNN
	1    8400 3050
	1    0    0    -1  
$EndComp
Text Label 8800 2750 0    50   ~ 0
5V_BackLight
Text Label 6300 1900 2    50   ~ 0
+12V
Text Label 8000 2750 2    50   ~ 0
+12V
$Comp
L Regulator_Switching:TSR_1-2450 U4
U 1 1 62024E7E
P 8400 2850
F 0 "U4" H 8400 3217 50  0000 C CNN
F 1 "TSR_1-2450" H 8400 3126 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 8400 2700 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 8400 2850 50  0001 C CNN
	1    8400 2850
	1    0    0    -1  
$EndComp
Text Label 8800 1050 0    50   ~ 0
+3.3V_ESP32_RF
Text Label 8000 1050 2    50   ~ 0
+12V
Text Label 7050 1050 0    50   ~ 0
+3.3V_ESP32
Text Label 6250 1050 2    50   ~ 0
+12V
$Comp
L power:GND #PWR03
U 1 1 62A04B46
P 6650 1350
F 0 "#PWR03" H 6650 1100 50  0001 C CNN
F 1 "GND" H 6655 1177 50  0000 C CNN
F 2 "" H 6650 1350 50  0001 C CNN
F 3 "" H 6650 1350 50  0001 C CNN
	1    6650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 700  4600 850 
$Comp
L power:GND #PWR0103
U 1 1 6219ABA1
P 3950 1650
F 0 "#PWR0103" H 3950 1400 50  0001 C CNN
F 1 "GND" H 3955 1477 50  0000 C CNN
F 2 "" H 3950 1650 50  0001 C CNN
F 3 "" H 3950 1650 50  0001 C CNN
	1    3950 1650
	0    1    1    0   
$EndComp
Text Label 4600 750  2    50   ~ 0
5V_TexasInstruments
$Comp
L power:GND #PWR0115
U 1 1 62250E4F
P 4900 700
F 0 "#PWR0115" H 4900 450 50  0001 C CNN
F 1 "GND" H 4905 527 50  0000 C CNN
F 2 "" H 4900 700 50  0001 C CNN
F 3 "" H 4900 700 50  0001 C CNN
	1    4900 700 
	1    0    0    -1  
$EndComp
Text Label 3900 1350 2    50   ~ 0
+3.3V
Connection ~ 5450 1400
Wire Wire Line
	5450 1400 5600 1400
Connection ~ 5450 1100
Wire Wire Line
	5450 1100 5600 1100
Wire Wire Line
	5300 1400 5450 1400
Wire Wire Line
	5300 1350 5300 1400
Wire Wire Line
	5300 1100 5450 1100
Wire Wire Line
	5300 1150 5300 1100
$Comp
L Device:R R1
U 1 1 620899C2
P 5450 1250
F 0 "R1" V 5243 1250 50  0000 C CNN
F 1 "120" V 5334 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 5380 1250 50  0001 C CNN
F 3 "~" H 5450 1250 50  0001 C CNN
	1    5450 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1350 3900 1350
Connection ~ 3950 1350
$Comp
L Device:C C1
U 1 1 62088CF1
P 3950 1500
F 0 "C1" H 3600 1450 50  0000 L CNN
F 1 "0.1uF" H 3650 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3988 1350 50  0001 C CNN
F 3 "~" H 3950 1500 50  0001 C CNN
	1    3950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1350 3950 1350
Wire Wire Line
	5300 1350 5100 1350
Text Label 5600 1400 0    50   ~ 0
CAN_L
Wire Wire Line
	5300 1150 5100 1150
Text Label 5600 1100 0    50   ~ 0
CAN_H
Text Label 3650 1050 0    50   ~ 0
CAN_TX
Wire Wire Line
	3650 1050 4100 1050
Wire Wire Line
	3650 1150 4100 1150
Text Label 3650 1150 0    50   ~ 0
CAN_RX
Wire Wire Line
	3950 6800 4100 6800
Text Notes 500  700  0    118  ~ 24
TM4C123GXL and CAN Bus chip\n
$Comp
L Interface_CAN_LIN:MCP2562-H-P U1
U 1 1 61A5F7A9
P 4600 1250
F 0 "U1" H 5050 900 50  0000 C CNN
F 1 "MCP2562-H-P" H 5300 1000 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4600 750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 4600 1250 50  0001 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 6225091B
P 4600 1650
F 0 "#PWR0114" H 4600 1400 50  0001 C CNN
F 1 "GND" H 4600 1500 50  0000 C CNN
F 2 "" H 4600 1650 50  0001 C CNN
F 3 "" H 4600 1650 50  0001 C CNN
	1    4600 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 1650 4100 1650
Wire Wire Line
	4100 1650 4100 1450
Connection ~ 4600 1650
$Comp
L Device:C C2
U 1 1 6208554D
P 4750 700
F 0 "C2" H 4750 800 50  0000 L CNN
F 1 "0.1uF" H 4750 600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4788 550 50  0001 C CNN
F 3 "~" H 4750 700 50  0001 C CNN
	1    4750 700 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 6219B9A8
P 2550 3350
F 0 "#PWR0107" H 2550 3100 50  0001 C CNN
F 1 "GND" H 2555 3177 50  0000 C CNN
F 2 "" H 2550 3350 50  0001 C CNN
F 3 "" H 2550 3350 50  0001 C CNN
	1    2550 3350
	1    0    0    -1  
$EndComp
NoConn ~ 2400 1150
NoConn ~ 2400 1250
NoConn ~ 1000 1150
NoConn ~ 1000 1350
NoConn ~ 1000 1450
NoConn ~ 1000 1550
NoConn ~ 1000 1650
NoConn ~ 1000 1750
NoConn ~ 1000 1850
NoConn ~ 1000 2050
NoConn ~ 1000 2150
NoConn ~ 1000 2250
NoConn ~ 1000 2350
NoConn ~ 1000 2550
NoConn ~ 1000 2650
NoConn ~ 1000 2750
NoConn ~ 1000 2850
NoConn ~ 1000 2950
NoConn ~ 1000 3050
NoConn ~ 2400 3150
NoConn ~ 2400 3050
NoConn ~ 2400 2950
NoConn ~ 2400 2850
NoConn ~ 2400 2750
NoConn ~ 2400 2550
NoConn ~ 2400 2450
NoConn ~ 2400 2350
NoConn ~ 2400 2250
NoConn ~ 2400 2150
NoConn ~ 2400 2050
NoConn ~ 2400 1850
NoConn ~ 2400 1750
Wire Wire Line
	2700 1650 2400 1650
Wire Wire Line
	2700 1550 2400 1550
Text Label 2400 950  0    50   ~ 0
5V_TexasInstruments
$Comp
L SolarCarDisplay-rescue:EK-TM4C123GXL-EK-TM4C123GXL U2
U 1 1 618AA242
P 1700 2050
F 0 "U2" H 1700 500 50  0000 C CNN
F 1 "EK-TM4C123GXL" H 1700 600 50  0000 C CNN
F 2 "SolarCar:MODULE_EK-TM4C123GXL" H 1700 2050 50  0001 L BNN
F 3 "" H 1700 2050 50  0001 L BNN
F 4 "April 2013" H 1700 2050 50  0001 L BNN "PARTREV"
F 5 "Manufacturer Recommendations" H 1700 2050 50  0001 L BNN "STANDARD"
F 6 "Texas Instruments" H 1700 2050 50  0001 L BNN "MANUFACTURER"
F 7 "N/A" H 1700 2050 50  0001 L BNN "MAXIMUM_PACKAGE_HIEGHT"
	1    1700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1350 2750 1350
Text Label 2400 850  0    50   ~ 0
+3.3V
Wire Wire Line
	2400 1450 2750 1450
Text Label 2700 1650 0    50   ~ 0
CAN_TX
Text Label 2700 1550 0    50   ~ 0
CAN_RX
Wire Wire Line
	2400 3350 2550 3350
Text Label 2750 1350 0    50   ~ 0
SCL
Text Label 2750 1450 0    50   ~ 0
SDA
Wire Notes Line
	450  3750 5850 3750
$Comp
L Mechanical:MountingHole H1
U 1 1 62674C13
P 2800 2750
F 0 "H1" H 2900 2796 50  0000 L CNN
F 1 "MountingHole" H 2900 2705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 2800 2750 50  0001 C CNN
F 3 "~" H 2800 2750 50  0001 C CNN
	1    2800 2750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 62674E60
P 3500 2750
F 0 "H5" H 3600 2796 50  0000 L CNN
F 1 "MountingHole" H 3600 2705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 3500 2750 50  0001 C CNN
F 3 "~" H 3500 2750 50  0001 C CNN
	1    3500 2750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6267507D
P 2800 2950
F 0 "H2" H 2900 2996 50  0000 L CNN
F 1 "MountingHole" H 2900 2905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 2800 2950 50  0001 C CNN
F 3 "~" H 2800 2950 50  0001 C CNN
	1    2800 2950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 626752FD
P 3500 2950
F 0 "H6" H 3600 2996 50  0000 L CNN
F 1 "MountingHole" H 3600 2905 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 3500 2950 50  0001 C CNN
F 3 "~" H 3500 2950 50  0001 C CNN
	1    3500 2950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 62695254
P 2800 3350
F 0 "H3" H 2900 3396 50  0000 L CNN
F 1 "MountingHole" H 2900 3305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 2800 3350 50  0001 C CNN
F 3 "~" H 2800 3350 50  0001 C CNN
	1    2800 3350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 6269525A
P 3500 3350
F 0 "H7" H 3600 3396 50  0000 L CNN
F 1 "MountingHole" H 3600 3305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 3500 3350 50  0001 C CNN
F 3 "~" H 3500 3350 50  0001 C CNN
	1    3500 3350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 62695260
P 2800 3550
F 0 "H4" H 2900 3596 50  0000 L CNN
F 1 "MountingHole" H 2900 3505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 2800 3550 50  0001 C CNN
F 3 "~" H 2800 3550 50  0001 C CNN
	1    2800 3550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 62695266
P 3500 3550
F 0 "H8" H 3600 3596 50  0000 L CNN
F 1 "MountingHole" H 3600 3505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 3500 3550 50  0001 C CNN
F 3 "~" H 3500 3550 50  0001 C CNN
	1    3500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5200 9550 5200
Wire Wire Line
	8850 4600 9550 4600
Wire Wire Line
	9050 3900 9550 3900
$Comp
L Connector_Generic:Conn_01x20 J6
U 1 1 62209676
P 9750 4500
F 0 "J6" H 9830 4492 50  0000 L CNN
F 1 "Conn_01x20" H 9830 4401 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 9750 4500 50  0001 C CNN
F 3 "https://www.rapidonline.com/truconnect-20-way-single-row-pcb-socket-2-54mm-pitch-19-0088" H 9750 4500 50  0001 C CNN
	1    9750 4500
	1    0    0    1   
$EndComp
Connection ~ 9500 3500
Wire Wire Line
	9500 3500 9550 3500
Wire Wire Line
	9400 4200 9550 4200
Wire Wire Line
	10750 4200 10900 4200
Text Notes 2650 2400 0    118  ~ 24
Mounting Holes,\nTest points\n\n
Wire Notes Line
	5850 1750 2650 1750
$Comp
L Connector:TestPoint TP3
U 1 1 62AEDBF9
P 4450 3000
F 0 "TP3" H 4508 3118 50  0000 L CNN
F 1 "TestPoint" H 4508 3027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4650 3000 50  0001 C CNN
F 3 "~" H 4650 3000 50  0001 C CNN
	1    4450 3000
	1    0    0    -1  
$EndComp
Text Label 4450 3150 0    50   ~ 0
+12V
Text Label 5000 3150 0    50   ~ 0
VDDD_1.2V
Text Label 5000 3550 0    50   ~ 0
+3.3V_Display
$Comp
L power:GND #PWR05
U 1 1 62AEEA46
P 4450 3500
F 0 "#PWR05" H 4450 3250 50  0001 C CNN
F 1 "GND" H 4455 3327 50  0000 C CNN
F 2 "" H 4450 3500 50  0001 C CNN
F 3 "" H 4450 3500 50  0001 C CNN
	1    4450 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 62AEEF42
P 4450 3400
F 0 "TP4" H 4508 3518 50  0000 L CNN
F 1 "TestPoint" H 4508 3427 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4650 3400 50  0001 C CNN
F 3 "~" H 4650 3400 50  0001 C CNN
	1    4450 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 62B0DF46
P 5000 3400
F 0 "TP8" H 5058 3518 50  0000 L CNN
F 1 "TestPoint" H 5058 3427 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5200 3400 50  0001 C CNN
F 3 "~" H 5200 3400 50  0001 C CNN
	1    5000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3500 4450 3400
Wire Wire Line
	5000 3550 5000 3400
Wire Wire Line
	4450 3150 4450 3000
$Comp
L Connector:TestPoint TP7
U 1 1 62BE5E04
P 5000 3000
F 0 "TP7" H 5058 3118 50  0000 L CNN
F 1 "TestPoint" H 5058 3027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5200 3000 50  0001 C CNN
F 3 "~" H 5200 3000 50  0001 C CNN
	1    5000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3150 5000 3000
Text Label 5000 2800 0    50   ~ 0
+3.3V_ESP32_RF
Text Label 4450 2800 0    50   ~ 0
+3.3V_ESP32
$Comp
L Connector:TestPoint TP6
U 1 1 62CDBD7B
P 5000 2650
F 0 "TP6" H 5058 2768 50  0000 L CNN
F 1 "TestPoint" H 5058 2677 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5200 2650 50  0001 C CNN
F 3 "~" H 5200 2650 50  0001 C CNN
	1    5000 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 62CDBF7C
P 4450 2650
F 0 "TP2" H 4508 2768 50  0000 L CNN
F 1 "TestPoint" H 4508 2677 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4650 2650 50  0001 C CNN
F 3 "~" H 4650 2650 50  0001 C CNN
	1    4450 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2800 4450 2650
Wire Wire Line
	5000 2800 5000 2650
Text Label 5000 2450 0    50   ~ 0
5V_TexasInstruments
$Comp
L Connector:TestPoint TP5
U 1 1 62D1A7D1
P 5000 2350
F 0 "TP5" H 5058 2468 50  0000 L CNN
F 1 "TestPoint" H 5058 2377 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5200 2350 50  0001 C CNN
F 3 "~" H 5200 2350 50  0001 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
Text Label 4450 2450 0    50   ~ 0
5V_BackLight
$Comp
L Connector:TestPoint TP1
U 1 1 62D39DD6
P 4450 2350
F 0 "TP1" H 4508 2468 50  0000 L CNN
F 1 "TestPoint" H 4508 2377 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4650 2350 50  0001 C CNN
F 3 "~" H 4650 2350 50  0001 C CNN
	1    4450 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 62D76D1F
P 5000 1950
F 0 "#PWR07" H 5000 1700 50  0001 C CNN
F 1 "GND" H 5005 1777 50  0000 C CNN
F 2 "" H 5000 1950 50  0001 C CNN
F 3 "" H 5000 1950 50  0001 C CNN
	1    5000 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 62D76D25
P 5000 1950
F 0 "TP10" H 5058 2068 50  0000 L CNN
F 1 "TestPoint" H 5058 1977 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5200 1950 50  0001 C CNN
F 3 "~" H 5200 1950 50  0001 C CNN
	1    5000 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 62D97B21
P 4450 1950
F 0 "#PWR06" H 4450 1700 50  0001 C CNN
F 1 "GND" H 4455 1777 50  0000 C CNN
F 2 "" H 4450 1950 50  0001 C CNN
F 3 "" H 4450 1950 50  0001 C CNN
	1    4450 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 62D97B27
P 4450 1950
F 0 "TP9" H 4508 2068 50  0000 L CNN
F 1 "TestPoint" H 4050 2100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4650 1950 50  0001 C CNN
F 3 "~" H 4650 1950 50  0001 C CNN
	1    4450 1950
	1    0    0    -1  
$EndComp
Wire Notes Line
	2650 1750 2650 3750
Wire Wire Line
	1050 5600 1200 5600
Wire Wire Line
	1050 5700 1200 5700
Wire Wire Line
	1050 5800 1200 5800
Wire Wire Line
	600  6200 1200 6200
Wire Wire Line
	600  6100 1200 6100
$Comp
L Regulator_Switching:TSR_1-2433 U?
U 1 1 626AA79E
P 6650 2850
F 0 "U?" H 6650 3217 50  0000 C CNN
F 1 "TSR_1-2433" H 6650 3126 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 6650 2700 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 6650 2850 50  0001 C CNN
	1    6650 2850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:TSR_1-2433 U?
U 1 1 626AE294
P 6650 1150
F 0 "U?" H 6650 1517 50  0000 C CNN
F 1 "TSR_1-2433" H 6650 1426 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 6650 1000 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 6650 1150 50  0001 C CNN
	1    6650 1150
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:TSR_1-2433 U?
U 1 1 6278FBC8
P 8400 1150
F 0 "U?" H 8400 1517 50  0000 C CNN
F 1 "TSR_1-2433" H 8400 1426 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 8400 1000 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 8400 1150 50  0001 C CNN
	1    8400 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 627F9E73
P 8400 1350
F 0 "#PWR?" H 8400 1100 50  0001 C CNN
F 1 "GND" H 8405 1177 50  0000 C CNN
F 2 "" H 8400 1350 50  0001 C CNN
F 3 "" H 8400 1350 50  0001 C CNN
	1    8400 1350
	1    0    0    -1  
$EndComp
Wire Notes Line
	5850 3300 11250 3300
Wire Notes Line
	5850 3750 5850 450 
Wire Notes Line
	5850 450  5800 450 
Wire Wire Line
	1200 6300 1050 6300
Wire Wire Line
	600  6400 1200 6400
Wire Wire Line
	5000 2350 5000 2450
Wire Wire Line
	4450 2350 4450 2450
$Comp
L power:GND #PWR0108
U 1 1 6219BBB5
P 4700 5600
F 0 "#PWR0108" H 4700 5350 50  0001 C CNN
F 1 "GND" H 4705 5427 50  0000 C CNN
F 2 "" H 4700 5600 50  0001 C CNN
F 3 "" H 4700 5600 50  0001 C CNN
	1    4700 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J10
U 1 1 62C2FF17
P 9950 6000
F 0 "J10" H 9800 5500 50  0000 L CNN
F 1 "Conn_01x08" H 10000 5500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 9950 6000 50  0001 C CNN
F 3 "~" H 9950 6000 50  0001 C CNN
	1    9950 6000
	1    0    0    -1  
$EndComp
Text Label 9500 5700 0    50   ~ 0
1_IMU
Text Label 9500 5800 0    50   ~ 0
2_IMU
Text Label 9500 5900 0    50   ~ 0
3_IMU
Text Label 9500 6000 0    50   ~ 0
4_IMU
Text Label 9500 6100 0    50   ~ 0
5_IMU
Text Label 9500 6200 0    50   ~ 0
6_IMU
Text Label 9500 6300 0    50   ~ 0
7_IMU
Text Label 9500 6400 0    50   ~ 0
8_IMU
$Comp
L Connector_Generic:Conn_01x08 J11
U 1 1 621F9D1F
P 10950 6000
F 0 "J11" H 10600 5500 50  0000 L CNN
F 1 "Conn_01x08" H 10750 5500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10950 6000 50  0001 C CNN
F 3 "~" H 10950 6000 50  0001 C CNN
	1    10950 6000
	1    0    0    -1  
$EndComp
Text Label 10500 5700 0    50   ~ 0
1_IMU
Text Label 10500 5800 0    50   ~ 0
2_IMU
Text Label 10500 5900 0    50   ~ 0
3_IMU
Text Label 10500 6000 0    50   ~ 0
4_IMU
Text Label 10500 6100 0    50   ~ 0
5_IMU
Text Label 10500 6200 0    50   ~ 0
6_IMU
Text Label 10500 6300 0    50   ~ 0
7_IMU
Text Label 10500 6400 0    50   ~ 0
8_IMU
Wire Wire Line
	10500 5700 10750 5700
Wire Wire Line
	10500 5800 10750 5800
Wire Wire Line
	10500 5900 10750 5900
Wire Wire Line
	10500 6000 10750 6000
Wire Wire Line
	10500 6100 10750 6100
Wire Wire Line
	10500 6200 10750 6200
Wire Wire Line
	10500 6300 10750 6300
Wire Wire Line
	10500 6400 10750 6400
Text Label 9450 5700 2    50   ~ 0
+3.3V_ESP32
Wire Wire Line
	9450 5700 9750 5700
$Comp
L power:GND #PWR04
U 1 1 622395EC
P 9050 5800
F 0 "#PWR04" H 9050 5550 50  0001 C CNN
F 1 "GND" H 9055 5627 50  0000 C CNN
F 2 "" H 9050 5800 50  0001 C CNN
F 3 "" H 9050 5800 50  0001 C CNN
	1    9050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5800 9750 5800
Text Label 9250 5900 0    50   ~ 0
SCL
Wire Wire Line
	9250 5900 9750 5900
Text Label 9250 6000 0    50   ~ 0
SDA
Wire Wire Line
	9250 6000 9750 6000
Wire Wire Line
	9250 6400 9750 6400
Text Label 9250 6400 0    50   ~ 0
INT
Wire Wire Line
	9250 6300 9750 6300
Wire Wire Line
	9250 6200 9750 6200
Wire Wire Line
	9250 6100 9750 6100
Text Label 9250 6300 0    50   ~ 0
AD0
Text Label 9250 6200 0    50   ~ 0
XCL
Text Label 9250 6100 0    50   ~ 0
XDA
$EndSCHEMATC
