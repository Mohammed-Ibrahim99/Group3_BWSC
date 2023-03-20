EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Solar Car Dashboard V1"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	4350 7800 4400 7800
Wire Wire Line
	9950 3300 9950 3250
$Comp
L power:GND #PWR01
U 1 1 6190F39C
P 9950 3450
F 0 "#PWR01" H 9950 3200 50  0001 C CNN
F 1 "GND" H 9955 3277 50  0000 C CNN
F 2 "" H 9950 3450 50  0001 C CNN
F 3 "" H 9950 3450 50  0001 C CNN
	1    9950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3400 9950 3450
Text Notes 5850 650  0    118  ~ 24
Voltage Regulators and Connectors
Text Label 5850 4750 0    50   ~ 0
VDDD_1.2V
$Comp
L power:GND #PWR0104
U 1 1 61A75819
P 6050 4950
F 0 "#PWR0104" H 6050 4700 50  0001 C CNN
F 1 "GND" H 6055 4777 50  0000 C CNN
F 2 "" H 6050 4950 50  0001 C CNN
F 3 "" H 6050 4950 50  0001 C CNN
	1    6050 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4950 6550 4950
$Comp
L power:GND #PWR0105
U 1 1 61A77B6B
P 5850 5650
F 0 "#PWR0105" H 5850 5400 50  0001 C CNN
F 1 "GND" H 5855 5477 50  0000 C CNN
F 2 "" H 5850 5650 50  0001 C CNN
F 3 "" H 5850 5650 50  0001 C CNN
	1    5850 5650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x20 J3
U 1 1 61A79DFD
P 7900 5450
F 0 "J3" H 7980 5442 50  0000 L CNN
F 1 "Conn_01x20" H 7980 5351 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 7900 5450 50  0001 C CNN
F 3 "https://www.rapidonline.com/truconnect-20-way-single-row-pcb-socket-2-54mm-pitch-19-0088" H 7900 5450 50  0001 C CNN
	1    7900 5450
	1    0    0    -1  
$EndComp
Text Label 7550 4550 0    50   ~ 0
21
Text Label 7550 4650 0    50   ~ 0
22
Text Label 7550 4750 0    50   ~ 0
23
Text Label 7550 4850 0    50   ~ 0
24
Text Label 7550 4950 0    50   ~ 0
25
Text Label 7550 5050 0    50   ~ 0
26
Wire Wire Line
	7700 5150 7550 5150
Wire Wire Line
	7700 5250 7550 5250
Text Label 7550 5250 0    50   ~ 0
28
Wire Wire Line
	7700 5350 7550 5350
Text Label 7550 5350 0    50   ~ 0
29
Wire Wire Line
	7700 5450 7550 5450
Text Label 7550 5450 0    50   ~ 0
30
Wire Wire Line
	7700 5550 7550 5550
Text Label 7550 5550 0    50   ~ 0
31
Wire Wire Line
	7700 5650 7550 5650
Text Label 7550 5650 0    50   ~ 0
32
Wire Wire Line
	7700 5750 7550 5750
Text Label 7550 5750 0    50   ~ 0
33
Wire Wire Line
	7700 5850 7550 5850
Text Label 7550 5850 0    50   ~ 0
34
Wire Wire Line
	7700 5950 7550 5950
Text Label 7550 5950 0    50   ~ 0
35
Wire Wire Line
	7700 6050 7550 6050
Text Label 7550 6050 0    50   ~ 0
36
Wire Wire Line
	7700 6150 7550 6150
Text Label 7550 6150 0    50   ~ 0
37
Text Label 7550 6250 0    50   ~ 0
38
Wire Wire Line
	7700 6350 7550 6350
Text Label 7550 6350 0    50   ~ 0
39
Wire Wire Line
	7700 6450 7550 6450
Text Label 7550 6450 0    50   ~ 0
40
Text Label 7000 6250 0    50   ~ 0
5V_BackLight
$Comp
L power:GND #PWR0106
U 1 1 61A96E40
P 5850 6250
F 0 "#PWR0106" H 5850 6000 50  0001 C CNN
F 1 "GND" H 5855 6077 50  0000 C CNN
F 2 "" H 5850 6250 50  0001 C CNN
F 3 "" H 5850 6250 50  0001 C CNN
	1    5850 6250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 61B12A7F
P 10650 2550
F 0 "J5" H 10730 2542 50  0000 L CNN
F 1 "Conn_01x04" H 10730 2451 50  0000 L CNN
F 2 "34793-0040:347930040" H 10650 2550 50  0001 C CNN
F 3 "https://docs.rs-online.com/78dc/0900766b815f3a26.pdf" H 10650 2550 50  0001 C CNN
	1    10650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 2450 10200 2450
Wire Wire Line
	10450 2650 10200 2650
Text Label 10050 2550 0    50   ~ 0
SDA
Text Label 10200 2650 0    50   ~ 0
SCL
Wire Wire Line
	10050 2550 10450 2550
Wire Wire Line
	10450 2750 10350 2750
$Comp
L power:GND #PWR0109
U 1 1 61B20AD4
P 10350 2750
F 0 "#PWR0109" H 10350 2500 50  0001 C CNN
F 1 "GND" H 10355 2577 50  0000 C CNN
F 2 "" H 10350 2750 50  0001 C CNN
F 3 "" H 10350 2750 50  0001 C CNN
	1    10350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1450 10200 1450
Text Label 10200 1950 0    50   ~ 0
CAN_H
Text Label 10200 1450 0    50   ~ 0
CAN_L
Wire Wire Line
	10200 1950 10450 1950
Text Notes 5950 5450 0    79   ~ 16
13-17\nInputs\n
Text Notes 7100 5400 0    79   ~ 16
19-26\nInputs\n
Text Label 7250 2650 0    50   ~ 0
VDDD_1.2V
Wire Wire Line
	7000 6250 7700 6250
$Comp
L power:GND #PWR0111
U 1 1 62038606
P 6750 2950
F 0 "#PWR0111" H 6750 2700 50  0001 C CNN
F 1 "GND" H 6755 2777 50  0000 C CNN
F 2 "" H 6750 2950 50  0001 C CNN
F 3 "" H 6750 2950 50  0001 C CNN
	1    6750 2950
	1    0    0    -1  
$EndComp
Text Label 10200 2450 2    50   ~ 0
+3.3V_ESP32_RF
$Comp
L SamacSys_Parts:TR10S3V3 PS1
U 1 1 62099CBB
P 6700 3800
F 0 "PS1" H 7092 3335 50  0000 C CNN
F 1 "TR10S3V3" H 7092 3426 50  0000 C CNN
F 2 "KiCad:TR05S3V3" H 7550 3900 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/1346946" H 7550 3800 50  0001 L CNN
F 4 "XP Power Switching Regulator, 7  28V dc Input, 3.3V dc Output, 1A" H 7550 3700 50  0001 L CNN "Description"
F 5 "" H 7550 3600 50  0001 L CNN "Height"
F 6 "XP POWER" H 7550 3500 50  0001 L CNN "Manufacturer_Name"
F 7 "TR10S3V3" H 7550 3400 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "209-TR10S3V3" H 7550 3300 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/XP-Power/TR10S3V3?qs=w%2Fv1CP2dgqqD%252B62ElTEyLA%3D%3D" H 7550 3200 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 7550 3100 50  0001 L CNN "Arrow Part Number"
F 11 "" H 7550 3000 50  0001 L CNN "Arrow Price/Stock"
	1    6700 3800
	-1   0    0    1   
$EndComp
Text Label 7500 4000 0    50   ~ 0
+12V
$Comp
L Device:C C7
U 1 1 620AF0F2
P 7000 3850
F 0 "C7" H 7115 3896 50  0000 L CNN
F 1 "22uF" H 7115 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7038 3700 50  0001 C CNN
F 3 "~" H 7000 3850 50  0001 C CNN
	1    7000 3850
	1    0    0    -1  
$EndComp
Connection ~ 7000 3700
$Comp
L Device:C C6
U 1 1 620AFA5E
P 7000 3550
F 0 "C6" H 7115 3596 50  0000 L CNN
F 1 "47uF" H 7115 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7038 3400 50  0001 C CNN
F 3 "~" H 7000 3550 50  0001 C CNN
	1    7000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3600 6800 3400
Wire Wire Line
	6800 3400 7000 3400
Connection ~ 7000 3400
Wire Wire Line
	7000 3400 7500 3400
Wire Wire Line
	6800 3800 6800 4000
Wire Wire Line
	6800 4000 7000 4000
Connection ~ 7000 4000
Wire Wire Line
	7000 4000 7500 4000
Text Label 7500 3400 0    50   ~ 0
+3.3V_Display
Text Label 5850 4650 0    50   ~ 0
+3.3V_Display
Text Label 5850 4850 0    50   ~ 0
+3.3V_Display
Wire Wire Line
	7000 3700 7550 3700
$Comp
L power:GND #PWR0116
U 1 1 620A380F
P 7550 3700
F 0 "#PWR0116" H 7550 3450 50  0001 C CNN
F 1 "GND" H 7555 3527 50  0000 C CNN
F 2 "" H 7550 3700 50  0001 C CNN
F 3 "" H 7550 3700 50  0001 C CNN
	1    7550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3400 9950 3400
Wire Wire Line
	10450 3300 9950 3300
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 620A3CF7
P 10650 3300
F 0 "J2" H 10730 3292 50  0000 L CNN
F 1 "Conn_01x02" H 10730 3201 50  0000 L CNN
F 2 "2 Contact Connector:ATF132PBM03" H 10650 3300 50  0001 C CNN
F 3 "https://docs.rs-online.com/755d/A700000006547145.pdf" H 10650 3300 50  0001 C CNN
	1    10650 3300
	1    0    0    -1  
$EndComp
Text Notes 10450 1200 0    59   ~ 12
CAN Bus\n
Text Notes 10150 2350 0    59   ~ 12
RF ESP32\n
Text Notes 10100 3250 0    59   ~ 12
Input Voltage\n\n
Text Label 7750 2650 0    50   ~ 0
+12V
Text Label 9050 2650 0    50   ~ 0
5V_TexasInstruments
$Comp
L power:GND #PWR02
U 1 1 62100077
P 8500 2950
F 0 "#PWR02" H 8500 2700 50  0001 C CNN
F 1 "GND" H 8505 2777 50  0000 C CNN
F 2 "" H 8500 2950 50  0001 C CNN
F 3 "" H 8500 2950 50  0001 C CNN
	1    8500 2950
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:TSR_1-2412 U6
U 1 1 6202F63C
P 6750 2750
F 0 "U6" H 6750 3117 50  0000 C CNN
F 1 "TSR_1-2412" H 6750 3026 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 6750 2600 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 6750 2750 50  0001 C CNN
	1    6750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2650 7250 2650
Wire Wire Line
	7750 2650 8100 2650
$Comp
L Regulator_Switching:TSR_1-2450 U8
U 1 1 6210006E
P 8500 2750
F 0 "U8" H 8500 3117 50  0000 C CNN
F 1 "TSR_1-2450" H 8500 3026 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 8500 2600 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 8500 2750 50  0001 C CNN
	1    8500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2650 9050 2650
$Comp
L power:GND #PWR0102
U 1 1 621969E8
P 10250 1550
F 0 "#PWR0102" H 10250 1300 50  0001 C CNN
F 1 "GND" H 10255 1377 50  0000 C CNN
F 2 "" H 10250 1550 50  0001 C CNN
F 3 "" H 10250 1550 50  0001 C CNN
	1    10250 1550
	1    0    0    -1  
$EndComp
Text Label 10050 3300 0    50   ~ 0
+12V
$Comp
L power:+12V #PWR0117
U 1 1 6225C7A1
P 9950 3250
F 0 "#PWR0117" H 9950 3100 50  0001 C CNN
F 1 "+12V" H 9965 3423 50  0000 C CNN
F 2 "" H 9950 3250 50  0001 C CNN
F 3 "" H 9950 3250 50  0001 C CNN
	1    9950 3250
	1    0    0    -1  
$EndComp
Text Label 5950 5750 0    50   ~ 0
TFT_Pin13
Text Label 5950 5850 0    50   ~ 0
TFT_Pin14
Text Label 5950 5950 0    50   ~ 0
TFT_Pin15
Text Label 5950 6050 0    50   ~ 0
TFT_Pin16
Text Label 5950 6150 0    50   ~ 0
TFT_Pin17
Text Label 5950 6350 0    50   ~ 0
TFT_Pin19
Text Label 5950 6450 0    50   ~ 0
TFT_Pin20
Wire Wire Line
	5850 6250 6550 6250
Wire Wire Line
	5850 5650 6550 5650
Text Label 7150 4550 0    50   ~ 0
TFT_Pin21
Wire Wire Line
	7150 4550 7700 4550
Text Label 7150 4650 0    50   ~ 0
TFT_Pin22
Wire Wire Line
	7150 4650 7700 4650
Text Label 7150 4750 0    50   ~ 0
TFT_Pin23
Wire Wire Line
	7150 4750 7700 4750
Text Label 7150 4850 0    50   ~ 0
TFT_Pin24
Wire Wire Line
	7150 4850 7700 4850
Text Label 7150 4950 0    50   ~ 0
TFT_Pin25
Wire Wire Line
	7150 4950 7700 4950
Text Label 7150 5050 0    50   ~ 0
TFT_Pin26
Wire Wire Line
	7150 5050 7700 5050
$Comp
L power:GND #PWR0119
U 1 1 6220966F
P 8600 4950
F 0 "#PWR0119" H 8600 4700 50  0001 C CNN
F 1 "GND" H 8605 4777 50  0000 C CNN
F 2 "" H 8600 4950 50  0001 C CNN
F 3 "" H 8600 4950 50  0001 C CNN
	1    8600 4950
	1    0    0    -1  
$EndComp
Text Notes 8450 4750 0    79   ~ 16
13-17\nInputs\n
$Comp
L Connector_Generic:Conn_01x20 J7
U 1 1 622125E0
P 10650 5550
F 0 "J7" H 10730 5542 50  0000 L CNN
F 1 "Conn_01x20" H 10730 5451 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 10650 5550 50  0001 C CNN
F 3 "https://www.rapidonline.com/truconnect-20-way-single-row-pcb-socket-2-54mm-pitch-19-0088" H 10650 5550 50  0001 C CNN
	1    10650 5550
	1    0    0    1   
$EndComp
Text Label 10300 4550 0    50   ~ 0
21
Text Label 10300 4650 0    50   ~ 0
22
Text Label 10300 4750 0    50   ~ 0
23
Text Label 10300 4850 0    50   ~ 0
24
Text Label 10300 4950 0    50   ~ 0
25
Text Label 10300 5050 0    50   ~ 0
26
Wire Wire Line
	10450 5150 10300 5150
Text Label 10300 5150 0    50   ~ 0
27
Text Label 10300 5250 0    50   ~ 0
28
Wire Wire Line
	10450 5350 10300 5350
Text Label 10300 5350 0    50   ~ 0
29
Wire Wire Line
	10450 5450 10300 5450
Text Label 10300 5450 0    50   ~ 0
30
Wire Wire Line
	10450 5550 10300 5550
Text Label 10300 5550 0    50   ~ 0
31
Wire Wire Line
	10450 5650 10300 5650
Text Label 10300 5650 0    50   ~ 0
32
Wire Wire Line
	10450 5750 10300 5750
Text Label 10300 5750 0    50   ~ 0
33
Wire Wire Line
	10450 5850 10300 5850
Text Label 10300 5850 0    50   ~ 0
34
Wire Wire Line
	10450 5950 10300 5950
Text Label 10300 5950 0    50   ~ 0
35
Wire Wire Line
	10450 6050 10300 6050
Text Label 10300 6050 0    50   ~ 0
36
Wire Wire Line
	10450 6150 10300 6150
Text Label 10300 6150 0    50   ~ 0
37
Text Label 10300 6250 0    50   ~ 0
38
Wire Wire Line
	10450 6350 10300 6350
Text Label 10300 6350 0    50   ~ 0
39
Wire Wire Line
	10450 6450 10300 6450
Text Label 10300 6450 0    50   ~ 0
40
Text Label 9750 6250 0    50   ~ 0
5V_BackLight
Text Notes 9750 4700 0    79   ~ 16
19-26\nInputs\n
Wire Wire Line
	9750 6250 10450 6250
$Comp
L power:GND #PWR0120
U 1 1 6221A68A
P 8400 5650
F 0 "#PWR0120" H 8400 5400 50  0001 C CNN
F 1 "GND" H 8405 5477 50  0000 C CNN
F 2 "" H 8400 5650 50  0001 C CNN
F 3 "" H 8400 5650 50  0001 C CNN
	1    8400 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 6221AA66
P 8400 6250
F 0 "#PWR0121" H 8400 6000 50  0001 C CNN
F 1 "GND" H 8405 6077 50  0000 C CNN
F 2 "" H 8400 6250 50  0001 C CNN
F 3 "" H 8400 6250 50  0001 C CNN
	1    8400 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4550 10450 4550
Wire Wire Line
	10300 4650 10450 4650
Wire Wire Line
	10300 4750 10450 4750
Wire Wire Line
	10300 4850 10450 4850
Wire Wire Line
	10300 4950 10450 4950
Wire Wire Line
	10300 5050 10450 5050
$Comp
L power:GND #PWR0122
U 1 1 6220967C
P 9050 4550
F 0 "#PWR0122" H 9050 4300 50  0001 C CNN
F 1 "GND" H 9150 4450 50  0000 C CNN
F 2 "" H 9050 4550 50  0001 C CNN
F 3 "" H 9050 4550 50  0001 C CNN
	1    9050 4550
	-1   0    0    1   
$EndComp
Text Label 8950 4550 0    50   ~ 0
1
Text Label 8950 4650 0    50   ~ 0
2
Text Label 8950 4750 0    50   ~ 0
3
Text Label 8950 4850 0    50   ~ 0
4
Text Label 8950 4950 0    50   ~ 0
5
Text Label 8950 5050 0    50   ~ 0
6
Text Label 8950 5150 0    50   ~ 0
7
Text Label 8950 5250 0    50   ~ 0
8
Wire Wire Line
	9100 5350 8950 5350
Text Label 8950 5350 0    50   ~ 0
9
Wire Wire Line
	9100 5450 8950 5450
Text Label 8950 5450 0    50   ~ 0
10
Wire Wire Line
	9100 5550 8950 5550
Text Label 8950 5550 0    50   ~ 0
11
Text Label 8950 5650 0    50   ~ 0
12
Wire Wire Line
	9100 5750 8950 5750
Text Label 8950 5750 0    50   ~ 0
13
Wire Wire Line
	9100 5850 8950 5850
Text Label 8950 5850 0    50   ~ 0
14
Wire Wire Line
	9100 5950 8950 5950
Text Label 8950 5950 0    50   ~ 0
15
Wire Wire Line
	9100 6050 8950 6050
Text Label 8950 6050 0    50   ~ 0
16
Wire Wire Line
	9100 6150 8950 6150
Text Label 8950 6150 0    50   ~ 0
17
Text Label 8950 6250 0    50   ~ 0
18
Wire Wire Line
	9100 6350 8950 6350
Text Label 8950 6350 0    50   ~ 0
19
Wire Wire Line
	9100 6450 8950 6450
Text Label 8950 6450 0    50   ~ 0
20
Wire Wire Line
	8950 4550 9050 4550
Wire Wire Line
	8950 4650 9100 4650
Wire Wire Line
	8950 4750 9100 4750
Wire Wire Line
	8950 4850 9100 4850
Wire Wire Line
	8950 5050 9100 5050
Text Label 6400 4550 0    50   ~ 0
1
Text Label 6400 4650 0    50   ~ 0
2
Text Label 6400 4750 0    50   ~ 0
3
Text Label 6400 4850 0    50   ~ 0
4
Text Label 6400 4950 0    50   ~ 0
5
Text Label 6400 5050 0    50   ~ 0
6
Text Label 6400 5150 0    50   ~ 0
7
Text Label 6400 5250 0    50   ~ 0
8
Text Label 6400 5350 0    50   ~ 0
9
Text Label 6400 5450 0    50   ~ 0
10
Text Label 6400 5550 0    50   ~ 0
11
Text Label 6400 5650 0    50   ~ 0
12
Text Label 6400 5750 0    50   ~ 0
13
Text Label 6400 5850 0    50   ~ 0
14
Text Label 6400 5950 0    50   ~ 0
15
Text Label 6400 6050 0    50   ~ 0
16
Text Label 6400 6150 0    50   ~ 0
17
Text Label 6400 6250 0    50   ~ 0
18
Text Label 6400 6350 0    50   ~ 0
19
Text Label 6400 6450 0    50   ~ 0
20
$Comp
L Connector_Generic:Conn_01x20 J1
U 1 1 61A7810A
P 6750 5450
F 0 "J1" H 6830 5442 50  0000 L CNN
F 1 "Conn_01x20" H 6830 5351 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 6750 5450 50  0001 C CNN
F 3 "https://www.rapidonline.com/truconnect-20-way-single-row-pcb-socket-2-54mm-pitch-19-0088" H 6750 5450 50  0001 C CNN
	1    6750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5250 6550 5250
Wire Wire Line
	6400 5350 6550 5350
Wire Wire Line
	6400 5450 6550 5450
Wire Wire Line
	6400 5550 6550 5550
Wire Wire Line
	6550 5150 6400 5150
Wire Wire Line
	6550 5050 6400 5050
Wire Wire Line
	5850 4850 6550 4850
Wire Wire Line
	6550 4550 6400 4550
Connection ~ 6550 4550
Wire Wire Line
	5850 4650 6550 4650
Wire Wire Line
	5850 4750 6550 4750
Wire Wire Line
	5950 5950 6550 5950
Wire Wire Line
	5950 5850 6550 5850
Wire Wire Line
	5950 5750 6550 5750
Wire Wire Line
	5950 6050 6550 6050
Wire Wire Line
	5950 6150 6550 6150
Wire Wire Line
	5950 6350 6550 6350
Wire Wire Line
	5950 6450 6550 6450
Wire Wire Line
	9100 5150 8950 5150
Text Label 7550 5150 0    50   ~ 0
27
$Comp
L Connector_Generic:Conn_01x09 J4
U 1 1 623F3FAB
P 10650 1750
F 0 "J4" H 10730 1792 50  0000 L CNN
F 1 "Conn_01x09" H 10730 1701 50  0000 L CNN
F 2 "CAN Connector:TE-5747840-6" H 10650 1750 50  0001 C CNN
F 3 "https://docs.rs-online.com/2608/0900766b81711da4.pdf" H 10650 1750 50  0001 C CNN
	1    10650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1550 10450 1550
NoConn ~ 10450 1350
NoConn ~ 10450 1650
NoConn ~ 10450 1750
NoConn ~ 10450 1850
NoConn ~ 10450 2050
NoConn ~ 10450 2150
$Comp
L SolarCarDisplay-rescue:ESP32-DevKitC-Espressif U3
U 1 1 618A7902
P 3650 5300
F 0 "U3" H 3725 6465 50  0000 C CNN
F 1 "ESP32-DevKitC" H 3725 6374 50  0000 C CNN
F 2 "Espressif:ESP32-DevKitC" H 3650 4050 50  0001 C CNN
F 3 "https://docs.espressif.com/projects/esp-idf/zh_CN/latest/esp32/hw-reference/esp32/get-started-devkitc.html" H 3800 4050 50  0001 C CNN
	1    3650 5300
	1    0    0    -1  
$EndComp
Text Label 5400 4650 0    50   ~ 0
SCL
Text Label 5400 4950 0    50   ~ 0
SDA
Text Label 2150 4450 2    50   ~ 0
+3.3V_ESP32
$Comp
L power:GND #PWR0108
U 1 1 6219BBB5
P 5850 5050
F 0 "#PWR0108" H 5850 4800 50  0001 C CNN
F 1 "GND" H 5855 4877 50  0000 C CNN
F 2 "" H 5850 5050 50  0001 C CNN
F 3 "" H 5850 5050 50  0001 C CNN
	1    5850 5050
	1    0    0    -1  
$EndComp
Text Label 5400 4550 0    50   ~ 0
TFT_Pin13
Text Label 5350 5150 0    50   ~ 0
TFT_Pin14
Text Label 5350 5250 0    50   ~ 0
TFT_Pin15
Text Label 5350 5350 0    50   ~ 0
TFT_Pin16
Text Label 5350 5450 0    50   ~ 0
TFT_Pin17
Text Label 5350 5550 0    50   ~ 0
TFT_Pin19
Text Label 5350 5650 0    50   ~ 0
TFT_Pin20
Text Label 5350 5750 0    50   ~ 0
TFT_Pin21
Text Label 5350 5850 0    50   ~ 0
TFT_Pin22
Text Label 5350 5950 0    50   ~ 0
TFT_Pin23
Text Label 1750 5650 0    50   ~ 0
TFT_Pin24
Text Label 1750 5550 0    50   ~ 0
TFT_Pin25
Text Label 1750 5750 0    50   ~ 0
TFT_Pin26
$Comp
L power:GND #PWR0118
U 1 1 6214CF1A
P 5650 4350
F 0 "#PWR0118" H 5650 4100 50  0001 C CNN
F 1 "GND" H 5655 4177 50  0000 C CNN
F 2 "" H 5650 4350 50  0001 C CNN
F 3 "" H 5650 4350 50  0001 C CNN
	1    5650 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 4350 5650 4450
$Comp
L Connector_Generic:Conn_01x19 J8
U 1 1 624AF1E9
P 950 5000
F 0 "J8" H 750 4000 50  0000 L CNN
F 1 "Conn_01x19" H 600 3950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical" H 950 5000 50  0001 C CNN
F 3 "~" H 950 5000 50  0001 C CNN
	1    950  5000
	1    0    0    -1  
$EndComp
Text Label 600  4100 0    50   ~ 0
1_
Text Label 600  4200 0    50   ~ 0
2_
Text Label 600  4300 0    50   ~ 0
3_
Text Label 600  4400 0    50   ~ 0
4_
Text Label 600  4500 0    50   ~ 0
5_
Text Label 600  4600 0    50   ~ 0
6_
Text Label 600  4700 0    50   ~ 0
7_
Text Label 600  4800 0    50   ~ 0
8_
Text Label 600  4900 0    50   ~ 0
9_
Text Label 600  5000 0    50   ~ 0
10_
Text Label 600  5100 0    50   ~ 0
11_
Text Label 600  5200 0    50   ~ 0
12_
Text Label 600  5300 0    50   ~ 0
13_
Text Label 600  5400 0    50   ~ 0
14_
Text Label 600  5500 0    50   ~ 0
15_
Text Label 600  5600 0    50   ~ 0
16_
Text Label 600  5700 0    50   ~ 0
17_
Text Label 600  5800 0    50   ~ 0
18_
Text Label 600  5900 0    50   ~ 0
19_
Wire Wire Line
	600  4800 750  4800
Wire Wire Line
	600  4900 750  4900
Wire Wire Line
	600  5000 750  5000
Wire Wire Line
	600  5100 750  5100
Wire Wire Line
	750  4700 600  4700
Wire Wire Line
	750  4600 600  4600
Wire Wire Line
	750  4100 600  4100
Wire Wire Line
	600  4200 750  4200
Wire Wire Line
	600  4300 750  4300
Wire Wire Line
	600  4400 750  4400
Wire Wire Line
	600  4500 750  4500
Wire Wire Line
	600  5200 750  5200
Wire Wire Line
	600  5300 750  5300
Wire Wire Line
	600  5400 750  5400
Wire Wire Line
	600  5500 750  5500
Wire Wire Line
	600  5600 750  5600
Wire Wire Line
	600  5700 750  5700
Wire Wire Line
	600  5800 750  5800
Wire Wire Line
	600  5900 750  5900
Wire Wire Line
	2200 5350 2350 5350
Wire Wire Line
	2200 5450 2350 5450
Wire Wire Line
	2350 4950 2200 4950
Wire Wire Line
	2200 4550 2350 4550
Wire Wire Line
	2200 4650 2350 4650
Wire Wire Line
	2200 4750 2350 4750
Wire Wire Line
	2200 4850 2350 4850
Wire Wire Line
	2200 5850 2350 5850
Wire Wire Line
	2200 5950 2350 5950
Wire Wire Line
	2200 6050 2350 6050
Wire Wire Line
	2200 6150 2350 6150
Text Label 2200 4450 0    50   ~ 0
1_
Text Label 2200 4550 0    50   ~ 0
2_
Text Label 2200 4650 0    50   ~ 0
3_
Text Label 2200 4750 0    50   ~ 0
4_
Text Label 2200 4850 0    50   ~ 0
5_
Text Label 2200 4950 0    50   ~ 0
6_
Text Label 2200 5050 0    50   ~ 0
7_
Text Label 2200 5150 0    50   ~ 0
8_
Text Label 2200 5250 0    50   ~ 0
9_
Text Label 2200 5350 0    50   ~ 0
10_
Text Label 2200 5450 0    50   ~ 0
11_
Text Label 2200 5550 0    50   ~ 0
12_
Text Label 2200 5650 0    50   ~ 0
13_
Text Label 2200 5750 0    50   ~ 0
14_
Text Label 2200 5850 0    50   ~ 0
15_
Text Label 2200 5950 0    50   ~ 0
16_
Text Label 2200 6050 0    50   ~ 0
17_
Text Label 2200 6150 0    50   ~ 0
18_
Text Label 2200 6250 0    50   ~ 0
19_
Wire Wire Line
	2150 4450 2350 4450
Wire Wire Line
	2200 6250 2350 6250
Text Label 1050 4100 0    50   ~ 0
38_
Text Label 1050 4200 0    50   ~ 0
37_
Text Label 1050 4300 0    50   ~ 0
36_
Text Label 1050 4400 0    50   ~ 0
35_
Text Label 1050 4500 0    50   ~ 0
34_
Text Label 1050 4600 0    50   ~ 0
33_
Text Label 1050 4700 0    50   ~ 0
32_
Text Label 1050 4800 0    50   ~ 0
31_
Text Label 1050 4900 0    50   ~ 0
30_
Text Label 1050 5000 0    50   ~ 0
29_
Text Label 1050 5100 0    50   ~ 0
28_
Text Label 1050 5200 0    50   ~ 0
27_
Text Label 1050 5300 0    50   ~ 0
26_
Text Label 1050 5400 0    50   ~ 0
25_
Text Label 1050 5500 0    50   ~ 0
24_
Text Label 1050 5600 0    50   ~ 0
23_
Text Label 1050 5700 0    50   ~ 0
22_
Text Label 1050 5800 0    50   ~ 0
21_
Text Label 1050 5900 0    50   ~ 0
20_
Wire Wire Line
	1050 4800 1200 4800
Wire Wire Line
	1050 4900 1200 4900
Wire Wire Line
	1050 5000 1200 5000
Wire Wire Line
	1050 5100 1200 5100
Wire Wire Line
	1200 4700 1050 4700
Wire Wire Line
	1200 4600 1050 4600
Wire Wire Line
	1200 4100 1050 4100
Wire Wire Line
	1050 4200 1200 4200
Wire Wire Line
	1050 4300 1200 4300
Wire Wire Line
	1050 4400 1200 4400
Wire Wire Line
	1050 4500 1200 4500
Wire Wire Line
	1050 5200 1200 5200
Wire Wire Line
	1050 5300 1200 5300
Wire Wire Line
	1050 5400 1200 5400
Wire Wire Line
	1050 5500 1200 5500
Wire Wire Line
	1050 5600 1200 5600
Wire Wire Line
	1050 5700 1200 5700
Wire Wire Line
	1050 5800 1200 5800
Wire Wire Line
	1050 5900 1200 5900
$Comp
L Connector_Generic:Conn_01x19 J9
U 1 1 6269154D
P 1400 5000
F 0 "J9" H 1350 4000 50  0000 L CNN
F 1 "Conn_01x19" H 1300 3900 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical" H 1400 5000 50  0001 C CNN
F 3 "~" H 1400 5000 50  0001 C CNN
	1    1400 5000
	1    0    0    -1  
$EndComp
Text Label 5250 4450 2    50   ~ 0
38_
Text Label 5250 4550 2    50   ~ 0
37_
Text Label 5250 4650 2    50   ~ 0
36_
Text Label 5250 4750 2    50   ~ 0
35_
Text Label 5250 4850 2    50   ~ 0
34_
Text Label 5250 4950 2    50   ~ 0
33_
Text Label 5250 5050 2    50   ~ 0
32_
Text Label 5250 5150 2    50   ~ 0
31_
Text Label 5250 5250 2    50   ~ 0
30_
Text Label 5250 5350 2    50   ~ 0
29_
Text Label 5250 5450 2    50   ~ 0
28_
Text Label 5250 5550 2    50   ~ 0
27_
Text Label 5250 5650 2    50   ~ 0
26_
Text Label 5250 5750 2    50   ~ 0
25_
Text Label 5250 5850 2    50   ~ 0
24_
Text Label 5250 5950 2    50   ~ 0
23_
Text Label 5250 6050 2    50   ~ 0
22_
Text Label 5250 6150 2    50   ~ 0
21_
Text Label 5250 6250 2    50   ~ 0
20_
Wire Wire Line
	5250 4750 5100 4750
Wire Wire Line
	5250 4850 5100 4850
Wire Wire Line
	5250 6050 5100 6050
Wire Wire Line
	5250 6150 5100 6150
Wire Wire Line
	5100 5050 5850 5050
Wire Wire Line
	5100 4950 5400 4950
Wire Wire Line
	5100 4550 5400 4550
Wire Wire Line
	5100 4650 5400 4650
Wire Wire Line
	5100 5650 5350 5650
Wire Wire Line
	5100 4450 5650 4450
Wire Wire Line
	5100 5150 5350 5150
Wire Wire Line
	5100 5250 5350 5250
Wire Wire Line
	5100 5350 5350 5350
Wire Wire Line
	5100 5450 5350 5450
Wire Wire Line
	5100 5550 5350 5550
Wire Wire Line
	5100 5750 5350 5750
Wire Wire Line
	5100 5850 5350 5850
Wire Wire Line
	5100 5950 5350 5950
Text Notes 500  4350 0    118  ~ 24
Display, ESP32-DevkitC, Extra Pin Headers, IMU\n\n\n
$Comp
L power:GND #PWR0110
U 1 1 61AF92A7
P 6550 4550
F 0 "#PWR0110" H 6550 4300 50  0001 C CNN
F 1 "GND" H 6650 4450 50  0000 C CNN
F 2 "" H 6550 4550 50  0001 C CNN
F 3 "" H 6550 4550 50  0001 C CNN
	1    6550 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 2200 9650 2200
Connection ~ 9300 2200
Wire Wire Line
	9300 2250 9300 2200
Wire Wire Line
	8900 2200 9300 2200
Connection ~ 8900 2200
Text Label 9300 1500 3    50   ~ 0
+3.3V_ESP32_RF
Wire Wire Line
	8250 1750 8250 2200
Wire Wire Line
	8250 2200 8900 2200
Wire Wire Line
	8900 1900 8900 2200
Wire Wire Line
	9650 1750 9650 2200
Wire Wire Line
	7900 3600 8150 3600
Wire Wire Line
	8950 3600 9100 3600
Wire Wire Line
	5950 2650 6350 2650
Wire Wire Line
	7900 3600 7900 3550
$Comp
L power:GND #PWR0112
U 1 1 6202C17D
P 8550 3900
F 0 "#PWR0112" H 8550 3650 50  0001 C CNN
F 1 "GND" H 8555 3727 50  0000 C CNN
F 2 "" H 8550 3900 50  0001 C CNN
F 3 "" H 8550 3900 50  0001 C CNN
	1    8550 3900
	1    0    0    -1  
$EndComp
Text Label 9100 3600 0    50   ~ 0
5V_BackLight
Text Label 5950 2650 0    50   ~ 0
+12V
Text Label 7900 3550 0    50   ~ 0
+12V
$Comp
L Regulator_Switching:TSR_1-2450 U4
U 1 1 62024E7E
P 8550 3700
F 0 "U4" H 8550 4067 50  0000 C CNN
F 1 "TSR_1-2450" H 8550 3976 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 8550 3550 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 8550 3700 50  0001 C CNN
	1    8550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1350 8250 1450
Connection ~ 8250 1350
Wire Wire Line
	8250 1350 8200 1350
Wire Wire Line
	8250 1300 8450 1300
Wire Wire Line
	8250 1300 8250 1350
Wire Wire Line
	9650 1300 9650 1450
Connection ~ 9650 1300
Wire Wire Line
	9300 1300 9650 1300
Wire Wire Line
	9650 1200 9650 1300
$Comp
L Device:C C3
U 1 1 61AAB432
P 8250 1600
F 0 "C3" H 8365 1646 50  0000 L CNN
F 1 "22uF" H 8365 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 8288 1450 50  0001 C CNN
F 3 "~" H 8250 1600 50  0001 C CNN
	1    8250 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61A9C9D3
P 9650 1600
F 0 "C5" H 9765 1646 50  0000 L CNN
F 1 "10uF" H 9765 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 9688 1450 50  0001 C CNN
F 3 "~" H 9650 1600 50  0001 C CNN
	1    9650 1600
	1    0    0    -1  
$EndComp
Text Label 8200 1350 1    50   ~ 0
+3.3V_ESP32_RF
Text Label 9650 1200 0    50   ~ 0
+12V
$Comp
L power:GND #PWR0101
U 1 1 61A42C1E
P 9300 2250
F 0 "#PWR0101" H 9300 2000 50  0001 C CNN
F 1 "GND" H 9305 2077 50  0000 C CNN
F 2 "" H 9300 2250 50  0001 C CNN
F 3 "" H 9300 2250 50  0001 C CNN
	1    9300 2250
	1    0    0    -1  
$EndComp
$Comp
L SolarCarLibrary:K7803JT-500R3 U5
U 1 1 61A42045
P 8900 1350
F 0 "U5" H 8875 1715 50  0000 C CNN
F 1 "K7803JT-500R3" H 8875 1624 50  0000 C CNN
F 2 "K7803JT-500R3:CONV_K7803JT-500R3" H 8900 1350 50  0001 C CNN
F 3 "https://docs.rs-online.com/30bd/A700000006631874.pdf" H 8900 1350 50  0001 C CNN
	1    8900 1350
	1    0    0    -1  
$EndComp
Text Label 6300 1300 1    50   ~ 0
+3.3V_ESP32
Wire Wire Line
	7400 2150 7750 2150
Connection ~ 7400 2150
Wire Wire Line
	7400 2200 7400 2150
Wire Wire Line
	7000 2150 7400 2150
Connection ~ 7000 2150
Wire Wire Line
	6350 1700 6350 2150
Wire Wire Line
	6350 2150 7000 2150
Wire Wire Line
	7000 1850 7000 2150
Wire Wire Line
	7750 1700 7750 2150
Wire Wire Line
	6350 1300 6350 1400
Connection ~ 6350 1300
Wire Wire Line
	6350 1300 6300 1300
Wire Wire Line
	6350 1250 6550 1250
Wire Wire Line
	6350 1250 6350 1300
Wire Wire Line
	7750 1250 7750 1400
Connection ~ 7750 1250
Wire Wire Line
	7400 1250 7750 1250
Wire Wire Line
	7750 1150 7750 1250
$Comp
L Device:C C4
U 1 1 62A04B38
P 6350 1550
F 0 "C4" H 6465 1596 50  0000 L CNN
F 1 "22uF" H 6465 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6388 1400 50  0001 C CNN
F 3 "~" H 6350 1550 50  0001 C CNN
	1    6350 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 62A04B3E
P 7750 1550
F 0 "C8" H 7865 1596 50  0000 L CNN
F 1 "10uF" H 7865 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7788 1400 50  0001 C CNN
F 3 "~" H 7750 1550 50  0001 C CNN
	1    7750 1550
	1    0    0    -1  
$EndComp
Text Label 7750 1150 0    50   ~ 0
+12V
$Comp
L power:GND #PWR03
U 1 1 62A04B46
P 7400 2200
F 0 "#PWR03" H 7400 1950 50  0001 C CNN
F 1 "GND" H 7405 2027 50  0000 C CNN
F 2 "" H 7400 2200 50  0001 C CNN
F 3 "" H 7400 2200 50  0001 C CNN
	1    7400 2200
	1    0    0    -1  
$EndComp
$Comp
L SolarCarLibrary:K7803JT-500R3 U7
U 1 1 62A04B4C
P 7000 1300
F 0 "U7" H 6975 1665 50  0000 C CNN
F 1 "K7803JT-500R3" H 6975 1574 50  0000 C CNN
F 2 "K7803JT-500R3:CONV_K7803JT-500R3" H 7000 1300 50  0001 C CNN
F 3 "https://docs.rs-online.com/30bd/A700000006631874.pdf" H 7000 1300 50  0001 C CNN
	1    7000 1300
	1    0    0    -1  
$EndComp
Text Label 7400 1450 3    50   ~ 0
+3.3V_ESP32
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
Wire Notes Line
	5800 4400 11250 4400
Wire Notes Line
	5850 450  5850 4400
$Comp
L Connector_Generic:Conn_01x08 J10
U 1 1 62C2FF17
P 1500 6950
F 0 "J10" H 1580 6942 50  0000 L CNN
F 1 "Conn_01x08" H 1580 6851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1500 6950 50  0001 C CNN
F 3 "~" H 1500 6950 50  0001 C CNN
	1    1500 6950
	1    0    0    -1  
$EndComp
Text Label 1050 6650 0    50   ~ 0
1_IMU
Text Label 1050 6750 0    50   ~ 0
2_IMU
Text Label 1050 6850 0    50   ~ 0
3_IMU
Text Label 1050 6950 0    50   ~ 0
4_IMU
Text Label 1050 7050 0    50   ~ 0
5_IMU
Text Label 1050 7150 0    50   ~ 0
6_IMU
Text Label 1050 7250 0    50   ~ 0
7_IMU
Text Label 1050 7350 0    50   ~ 0
8_IMU
$Comp
L Connector_Generic:Conn_01x08 J11
U 1 1 621F9D1F
P 2950 6950
F 0 "J11" H 3030 6942 50  0000 L CNN
F 1 "Conn_01x08" H 3030 6851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2950 6950 50  0001 C CNN
F 3 "~" H 2950 6950 50  0001 C CNN
	1    2950 6950
	1    0    0    -1  
$EndComp
Text Label 2500 6650 0    50   ~ 0
1_IMU
Text Label 2500 6750 0    50   ~ 0
2_IMU
Text Label 2500 6850 0    50   ~ 0
3_IMU
Text Label 2500 6950 0    50   ~ 0
4_IMU
Text Label 2500 7050 0    50   ~ 0
5_IMU
Text Label 2500 7150 0    50   ~ 0
6_IMU
Text Label 2500 7250 0    50   ~ 0
7_IMU
Text Label 2500 7350 0    50   ~ 0
8_IMU
Wire Wire Line
	2500 6650 2750 6650
Wire Wire Line
	2500 6750 2750 6750
Wire Wire Line
	2500 6850 2750 6850
Wire Wire Line
	2500 6950 2750 6950
Wire Wire Line
	2500 7050 2750 7050
Wire Wire Line
	2500 7150 2750 7150
Wire Wire Line
	2500 7250 2750 7250
Wire Wire Line
	2500 7350 2750 7350
Text Label 1000 6650 2    50   ~ 0
+3.3V_ESP32
Wire Wire Line
	1000 6650 1300 6650
$Comp
L power:GND #PWR04
U 1 1 622395EC
P 600 6750
F 0 "#PWR04" H 600 6500 50  0001 C CNN
F 1 "GND" H 605 6577 50  0000 C CNN
F 2 "" H 600 6750 50  0001 C CNN
F 3 "" H 600 6750 50  0001 C CNN
	1    600  6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  6750 1300 6750
Text Label 800  6850 0    50   ~ 0
SCL
Wire Wire Line
	800  6850 1300 6850
Text Label 800  6950 0    50   ~ 0
SDA
Wire Wire Line
	800  6950 1300 6950
Wire Wire Line
	800  7350 1300 7350
Text Label 800  7350 0    50   ~ 0
INT
Wire Wire Line
	5100 6250 5250 6250
Wire Wire Line
	800  7250 1300 7250
Wire Wire Line
	800  7150 1300 7150
Wire Wire Line
	800  7050 1300 7050
Text Label 800  7250 0    50   ~ 0
AD0
Text Label 800  7150 0    50   ~ 0
XCL
Text Label 800  7050 0    50   ~ 0
XDA
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
Wire Wire Line
	6700 3600 6800 3600
Wire Wire Line
	6700 3700 7000 3700
Wire Wire Line
	6700 3800 6800 3800
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
	8400 6250 9100 6250
Wire Wire Line
	8400 5650 9100 5650
Wire Wire Line
	8600 4950 9100 4950
$Comp
L Connector_Generic:Conn_01x20 J6
U 1 1 62209676
P 9300 5550
F 0 "J6" H 9380 5542 50  0000 L CNN
F 1 "Conn_01x20" H 9380 5451 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 9300 5550 50  0001 C CNN
F 3 "https://www.rapidonline.com/truconnect-20-way-single-row-pcb-socket-2-54mm-pitch-19-0088" H 9300 5550 50  0001 C CNN
	1    9300 5550
	1    0    0    1   
$EndComp
Connection ~ 9050 4550
Wire Wire Line
	9050 4550 9100 4550
Wire Wire Line
	8950 5250 9100 5250
Wire Wire Line
	10300 5250 10450 5250
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
P 5000 2300
F 0 "TP5" H 5058 2418 50  0000 L CNN
F 1 "TestPoint" H 5058 2327 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5200 2300 50  0001 C CNN
F 3 "~" H 5200 2300 50  0001 C CNN
	1    5000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2450 5000 2300
Text Label 4450 2450 0    50   ~ 0
5V_BackLight
$Comp
L Connector:TestPoint TP1
U 1 1 62D39DD6
P 4450 2300
F 0 "TP1" H 4508 2418 50  0000 L CNN
F 1 "TestPoint" H 4508 2327 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4650 2300 50  0001 C CNN
F 3 "~" H 4650 2300 50  0001 C CNN
	1    4450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2450 4450 2300
$Comp
L power:GND #PWR07
U 1 1 62D76D1F
P 5000 1950
F 0 "#PWR07" H 5000 1700 50  0001 C CNN
F 1 "GND" H 5005 1777 50  0000 C CNN
F 2 "" H 5000 1950 50  0001 C CNN
F 3 "" H 5000 1950 50  0001 C CNN
	1    5000 1950
	0    1    1    0   
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
	0    1    1    0   
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
	2200 5050 2350 5050
Wire Wire Line
	2200 5150 2350 5150
Wire Wire Line
	2200 5250 2350 5250
Wire Wire Line
	1750 5750 2350 5750
Wire Wire Line
	1750 5650 2350 5650
Wire Wire Line
	1750 5550 2350 5550
$EndSCHEMATC
