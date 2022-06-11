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
L RCCar:NodeMCUv3 U3
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
Text Notes 5650 2300 0    50   ~ 0
NC
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
L RCCar:TBLE-02S U1
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
L RCCar:HCPCA9865 U4
U 1 1 62AE705D
P 7250 5300
F 0 "U4" H 10694 5479 50  0000 L CNN
F 1 "HCPCA9865" H 10694 5570 50  0000 L CNN
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
L Amplifier_Current:MAX471 U?
U 1 1 62BE4F59
P 5400 7100
F 0 "U?" H 5400 7475 50  0000 C CNN
F 1 "MAX471" H 5400 7566 50  0000 C CNN
F 2 "" H 5400 7100 50  0001 C CNN
F 3 "http://pdfserv.maximintegrated.com/en/ds/MAX471-MAX472.pdf" H 5400 7100 50  0001 C CNN
	1    5400 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 6350 7200 6350
Wire Wire Line
	7200 6350 7200 6250
Wire Wire Line
	5400 6350 5400 6700
$EndSCHEMATC
