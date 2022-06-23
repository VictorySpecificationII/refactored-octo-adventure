EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5400 2800 5400 2450
Wire Wire Line
	4100 2800 4100 2500
Wire Wire Line
	4100 2500 3700 2500
Connection ~ 5100 2450
Wire Wire Line
	5400 2450 5100 2450
$Comp
L Regulator_Switching:LM2596S-5 U2
U 1 1 62A90A34
P 5100 2150
F 0 "U2" H 5100 2517 50  0000 C CNN
F 1 "LM2596S-5" H 5100 2426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5150 1900 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 5100 2150 50  0001 C CNN
	1    5100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2450 5100 2450
$Comp
L rccar-rescue:NodeMCUv3-RCCar U3
U 1 1 62A9AC2E
P 3950 3400
F 0 "U3" V 3996 3377 50  0000 L CNN
F 1 "NodeMCUv3" V 3905 3377 50  0000 L CNN
F 2 "" H 3950 3400 50  0001 C CNN
F 3 "" H 3950 3400 50  0001 C CNN
	1    3950 3400
	0    -1   -1   0   
$EndComp
Text Notes 4450 2300 0    50   ~ 0
NC
Wire Wire Line
	3650 2050 4000 2050
Wire Wire Line
	3700 2250 3700 2500
Wire Wire Line
	3650 2250 3700 2250
Text Notes 5650 2100 0    50   ~ 0
NC
Wire Wire Line
	3750 2150 3750 2450
Wire Wire Line
	3650 2150 3750 2150
$Comp
L Switch:SW_DIP_x01 SW2
U 1 1 62A8E2F1
P 4300 2050
F 0 "SW2" H 4300 2317 50  0000 C CNN
F 1 "Master_PU_S" H 4300 2226 50  0000 C CNN
F 2 "" H 4300 2050 50  0001 C CNN
F 3 "~" H 4300 2050 50  0001 C CNN
	1    4300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2100 1550 2100
Connection ~ 1950 2100
Wire Wire Line
	1950 2000 2050 2000
Connection ~ 1950 2000
Connection ~ 1550 2100
Wire Wire Line
	1550 2000 1950 2000
Connection ~ 1550 2000
Wire Wire Line
	1150 1500 2050 1500
Wire Wire Line
	1150 1500 1150 1100
Wire Wire Line
	1650 1100 1650 1400
Wire Wire Line
	2050 1400 1650 1400
$Comp
L Motor:Motor_DC M1
U 1 1 62A7B9C1
P 1450 1100
F 0 "M1" V 1150 1000 50  0000 L CNN
F 1 "Motor_DC" V 1250 900 50  0000 L CNN
F 2 "" H 1450 1010 50  0001 C CNN
F 3 "~" H 1450 1010 50  0001 C CNN
	1    1450 1100
	0    1    1    0   
$EndComp
Text Notes 1900 1650 0    50   ~ 0
NC
Text Notes 3050 2750 0    50   ~ 0
NC
Text Notes 2950 2750 0    50   ~ 0
NC
Text Notes 2850 2750 0    50   ~ 0
NC
Text Notes 2750 2750 0    50   ~ 0
NC
Text Notes 2650 2750 0    50   ~ 0
NC
Text Notes 2550 2750 0    50   ~ 0
NC
Wire Wire Line
	3750 1550 3650 1550
Wire Wire Line
	3750 1800 3750 1550
Wire Wire Line
	4000 1800 3750 1800
Wire Wire Line
	3750 1450 3650 1450
Wire Wire Line
	3750 1200 3750 1450
Wire Wire Line
	4000 1200 3750 1200
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 62A5FBFE
P 4000 1500
F 0 "SW1" V 3954 1630 50  0000 L CNN
F 1 "Master_S" V 4045 1630 50  0000 L CNN
F 2 "" H 4000 1500 50  0001 C CNN
F 3 "~" H 4000 1500 50  0001 C CNN
	1    4000 1500
	0    1    1    0   
$EndComp
$Comp
L rccar-rescue:TBLE-02S-RCCar U1
U 1 1 62A6548A
P 2850 1900
F 0 "U1" H 2850 2700 50  0000 C CNN
F 1 "TBLE-02S" H 2850 2600 50  0000 C CNN
F 2 "" H 2850 1900 50  0001 C CNN
F 3 "https://www.tamiyausa.com/media/files/45057ml-801-efb9.pdf" H 2850 1900 50  0001 C CNN
	1    2850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2100 1950 2100
Wire Wire Line
	1550 2250 1550 2100
Wire Wire Line
	1150 2250 1550 2250
Wire Wire Line
	1550 1850 1550 2000
Wire Wire Line
	1150 1850 1550 1850
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 62A527D5
P 1750 2000
F 0 "J2" H 1950 2100 50  0000 C CNN
F 1 "Main_M" H 1900 1850 50  0000 C CNN
F 2 "" H 1750 2000 50  0001 C CNN
F 3 "~" H 1750 2000 50  0001 C CNN
	1    1750 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 62A51F1F
P 1750 2000
F 0 "J1" H 1600 1850 50  0000 L CNN
F 1 "Main_F" H 1600 2100 50  0000 L CNN
F 2 "" H 1750 2000 50  0001 C CNN
F 3 "~" H 1750 2000 50  0001 C CNN
	1    1750 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 62A4E686
P 1150 2050
F 0 "BT1" H 850 2100 50  0000 L CNN
F 1 "Battery" H 800 2000 50  0000 L CNN
F 2 "" V 1150 2110 50  0001 C CNN
F 3 "~" V 1150 2110 50  0001 C CNN
	1    1150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4800 9900 4200
$Comp
L Motor:Fan_3pin M5
U 1 1 62B3C5EC
P 10250 4600
F 0 "M5" H 10200 5050 50  0000 C CNN
F 1 "Fan_3pin" V 10300 5050 50  0000 C CNN
F 2 "" H 10250 4510 50  0001 C CNN
F 3 "http://www.hardwarecanucks.com/forum/attachments/new-builds/16287d1330775095-help-chassis-power-fan-connectors-motherboard-asus_p8z68.jpg" H 10250 4510 50  0001 C CNN
	1    10250 4600
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo M2
U 1 1 62ADD856
P 9450 3900
F 0 "M2" V 10100 4000 50  0000 R CNN
F 1 "Rear_Adjustable_Aero" H 10550 3850 50  0000 R CNN
F 2 "" H 9450 3710 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9450 3710 50  0001 C CNN
	1    9450 3900
	0    -1   -1   0   
$EndComp
$Comp
L Motor:Motor_Servo M4
U 1 1 62B27D04
P 9800 3900
F 0 "M4" V 10550 4000 50  0000 R CNN
F 1 "Front_Adjustable_Aero" H 10900 3850 50  0000 R CNN
F 2 "" H 9800 3710 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9800 3710 50  0001 C CNN
	1    9800 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 4200 9800 4800
Wire Wire Line
	9550 4200 9550 4800
Wire Wire Line
	9350 4200 9350 4800
Wire Wire Line
	9450 4200 9450 4800
Wire Wire Line
	9700 4150 9700 4800
$Comp
L rccar-rescue:HCPCA9865-RCCar U4
U 1 1 62AE705D
P 7250 5300
F 0 "U4" H 11000 5000 50  0000 L CNN
F 1 "HCPCA9865" H 10850 5100 50  0000 L CNN
F 2 "" H 8700 6350 50  0001 C CNN
F 3 "" H 8700 6350 50  0001 C CNN
	1    7250 5300
	-1   0    0    1   
$EndComp
$Comp
L Motor:Motor_Servo M3
U 1 1 62ADC4BC
P 9100 3900
F 0 "M3" V 9550 4000 50  0000 R CNN
F 1 "Steering" H 9700 3850 50  0000 R CNN
F 2 "" H 9100 3710 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9100 3710 50  0001 C CNN
	1    9100 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 4200 9200 4800
Wire Wire Line
	9000 4200 9000 4800
Wire Wire Line
	9100 4200 9100 4800
Wire Wire Line
	10050 4800 10050 4700
Wire Wire Line
	10050 4700 9950 4700
Wire Wire Line
	9950 4700 9950 4600
Wire Wire Line
	10150 4800 10150 4350
Wire Wire Line
	10150 4350 10250 4350
Wire Wire Line
	10250 4350 10250 4400
$Comp
L rccar-rescue:MAX471 U5
U 1 1 62A66F5F
P 5350 7450
F 0 "U5" H 5350 7825 50  0000 C CNN
F 1 "MAX471" H 5350 7734 50  0000 C CNN
F 2 "" V 5300 7050 50  0001 C CNN
F 3 "" V 5300 7050 50  0001 C CNN
	1    5350 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 6400 6300 6400
Wire Wire Line
	7350 6250 7350 6400
Wire Wire Line
	5750 7700 6400 7700
Wire Wire Line
	6400 6500 7200 6500
Wire Wire Line
	7200 6250 7200 6500
Wire Wire Line
	6300 7600 5750 7600
Text Notes 4900 7400 1    50   ~ 0
NC
Text Notes 4900 7500 1    50   ~ 0
NC
Text Notes 4900 7600 1    50   ~ 0
NC
Text Notes 4900 7700 1    50   ~ 0
NC
Text Notes 4750 6350 0    50   ~ 0
NC
Text Notes 4650 6350 0    50   ~ 0
NC
Text Notes 5250 6350 0    50   ~ 0
NC
Text Notes 5150 6350 0    50   ~ 0
NC
Text Notes 5000 6350 0    50   ~ 0
NC
Text Notes 4900 6350 0    50   ~ 0
NC
Text Notes 5750 6350 0    50   ~ 0
NC
Text Notes 5650 6350 0    50   ~ 0
NC
Text Notes 5500 6350 0    50   ~ 0
NC
Text Notes 5400 6350 0    50   ~ 0
NC
Text Notes 4750 4750 0    50   ~ 0
NC
Text Notes 4650 4750 0    50   ~ 0
NC
Text Notes 4550 4750 0    50   ~ 0
NC
Text Notes 4400 4750 0    50   ~ 0
NC
Text Notes 4300 4750 0    50   ~ 0
NC
Text Notes 4200 4750 0    50   ~ 0
NC
Text Notes 5450 4750 0    50   ~ 0
NC
Text Notes 5350 4750 0    50   ~ 0
NC
Text Notes 5250 4750 0    50   ~ 0
NC
Text Notes 5100 4750 0    50   ~ 0
NC
Text Notes 5000 4750 0    50   ~ 0
NC
Text Notes 4900 4750 0    50   ~ 0
NC
Text Notes 6300 4750 0    50   ~ 0
NC
Text Notes 6200 4750 0    50   ~ 0
NC
Text Notes 6100 4750 0    50   ~ 0
NC
Text Notes 5950 4750 0    50   ~ 0
NC
Text Notes 5850 4750 0    50   ~ 0
NC
Text Notes 5750 4750 0    50   ~ 0
NC
Text Notes 7000 4750 0    50   ~ 0
NC
Text Notes 6900 4750 0    50   ~ 0
NC
Text Notes 6800 4750 0    50   ~ 0
NC
Text Notes 6650 4750 0    50   ~ 0
NC
Text Notes 6550 4750 0    50   ~ 0
NC
Text Notes 6450 4750 0    50   ~ 0
NC
Text Notes 7950 4750 0    50   ~ 0
NC
Text Notes 7850 4750 0    50   ~ 0
NC
Text Notes 7750 4750 0    50   ~ 0
NC
Text Notes 7600 4750 0    50   ~ 0
NC
Text Notes 7500 4750 0    50   ~ 0
NC
Text Notes 7400 4750 0    50   ~ 0
NC
Text Notes 9600 6350 0    50   ~ 0
NC
Text Notes 9500 6350 0    50   ~ 0
NC
Text Notes 8450 4750 0    50   ~ 0
NC
Text Notes 8300 4750 0    50   ~ 0
NC
Text Notes 8200 4750 0    50   ~ 0
NC
Text Notes 8100 4750 0    50   ~ 0
NC
Text Notes 10750 5350 1    50   ~ 0
NC
Text Notes 10750 5450 1    50   ~ 0
NC
Text Notes 10750 5550 1    50   ~ 0
NC
Text Notes 10750 5650 1    50   ~ 0
NC
Text Notes 10750 5750 1    50   ~ 0
NC
Text Notes 10750 5850 1    50   ~ 0
NC
Wire Wire Line
	6400 6500 6400 7700
Wire Wire Line
	6300 6400 6300 7600
Wire Wire Line
	5750 7300 5850 7300
Text Notes 3700 5350 0    50   ~ 0
NC
Text Notes 3700 5750 0    50   ~ 0
NC
Wire Wire Line
	3850 5400 1850 5400
Text Notes 4250 4100 0    50   ~ 0
NC
Text Notes 4150 4100 0    50   ~ 0
NC
Text Notes 4050 4100 0    50   ~ 0
NC
Text Notes 4550 4100 0    50   ~ 0
NC
Text Notes 4450 4100 0    50   ~ 0
NC
Text Notes 4350 4100 0    50   ~ 0
NC
Text Notes 4850 4100 0    50   ~ 0
NC
Text Notes 4750 4100 0    50   ~ 0
NC
Text Notes 4650 4100 0    50   ~ 0
NC
Text Notes 5150 4100 0    50   ~ 0
NC
Text Notes 5050 4100 0    50   ~ 0
NC
Text Notes 4950 4100 0    50   ~ 0
NC
Text Notes 5450 4100 0    50   ~ 0
NC
Text Notes 5350 4100 0    50   ~ 0
NC
Text Notes 5250 4100 0    50   ~ 0
NC
Text Notes 4350 2750 0    50   ~ 0
NC
Text Notes 4650 2750 0    50   ~ 0
NC
Text Notes 4550 2750 0    50   ~ 0
NC
Text Notes 4450 2750 0    50   ~ 0
NC
Text Notes 4950 2750 0    50   ~ 0
NC
Text Notes 4850 2750 0    50   ~ 0
NC
Text Notes 4750 2750 0    50   ~ 0
NC
Text Notes 5250 2750 0    50   ~ 0
NC
Text Notes 5150 2750 0    50   ~ 0
NC
Text Notes 5050 2750 0    50   ~ 0
NC
Text Notes 5450 2750 0    50   ~ 0
NC
Text Notes 6100 3300 1    50   ~ 0
NC
Text Notes 6100 3400 1    50   ~ 0
NC
Text Notes 6100 3500 1    50   ~ 0
NC
Text Notes 6100 3600 1    50   ~ 0
NC
Connection ~ 5400 2450
Wire Wire Line
	1850 5400 1850 4500
Wire Wire Line
	1850 4500 7600 4500
Wire Wire Line
	7600 4500 7600 2250
Wire Wire Line
	5600 2250 7600 2250
Wire Wire Line
	3850 5800 3100 5800
Wire Wire Line
	3100 5800 3100 4300
Wire Wire Line
	3100 4300 7350 4300
Wire Wire Line
	7350 4300 7350 2450
Wire Wire Line
	5400 2450 7350 2450
Wire Wire Line
	1700 5600 1700 3000
Wire Wire Line
	1700 3000 3900 3000
Wire Wire Line
	3900 3000 3900 2700
Wire Wire Line
	3900 2700 4200 2700
Wire Wire Line
	4200 2700 4200 2800
Wire Wire Line
	1700 5600 3850 5600
Wire Wire Line
	1600 5500 1600 2900
Wire Wire Line
	1600 2900 3800 2900
Wire Wire Line
	3800 2900 3800 2600
Wire Wire Line
	3800 2600 4300 2600
Wire Wire Line
	4300 2600 4300 2800
Wire Wire Line
	1600 5500 3850 5500
Text Notes 4500 6350 0    50   ~ 0
NC
Text Notes 4400 6350 0    50   ~ 0
NC
Text Notes 8650 4750 0    50   ~ 0
NC
Text Notes 8550 4750 0    50   ~ 0
NC
Wire Wire Line
	1850 5400 1850 6650
Wire Wire Line
	1850 6650 5850 6650
Wire Wire Line
	5850 6650 5850 7300
Connection ~ 1850 5400
Wire Wire Line
	5950 7400 5950 6550
Wire Wire Line
	5950 6550 3100 6550
Wire Wire Line
	3100 6550 3100 5800
Wire Wire Line
	5750 7400 5950 7400
Connection ~ 3100 5800
$EndSCHEMATC
