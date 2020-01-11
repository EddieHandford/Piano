EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L Connector:DIN-5_180degree J?
U 1 1 5E18DE72
P 2200 3500
F 0 "J?" H 2200 3225 50  0000 C CNN
F 1 "DIN-5_180degree" H 2200 3134 50  0000 C CNN
F 2 "" H 2200 3500 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 2200 3500 50  0001 C CNN
	1    2200 3500
	-1   0    0    -1  
$EndComp
$Comp
L Isolator:6N138 U?
U 1 1 5E191AEF
P 3800 3100
F 0 "U?" H 3800 3567 50  0000 C CNN
F 1 "6N138" H 3800 3476 50  0000 C CNN
F 2 "" H 4090 2800 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 4090 2800 50  0001 C CNN
	1    3800 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E198095
P 4200 2800
F 0 "#PWR?" H 4200 2650 50  0001 C CNN
F 1 "+3V3" H 4215 2973 50  0000 C CNN
F 2 "" H 4200 2800 50  0001 C CNN
F 3 "" H 4200 2800 50  0001 C CNN
	1    4200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2900 4200 2900
Wire Wire Line
	4200 2900 4200 2800
$Comp
L Device:R_Small R?
U 1 1 5E1A338A
P 2850 3400
F 0 "R?" V 2654 3400 50  0000 C CNN
F 1 "220R" V 2745 3400 50  0000 C CNN
F 2 "" H 2850 3400 50  0001 C CNN
F 3 "~" H 2850 3400 50  0001 C CNN
	1    2850 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 3400 1800 3400
Wire Wire Line
	1800 3400 1800 3000
Wire Wire Line
	1800 3000 3500 3000
Wire Wire Line
	2500 3400 2750 3400
Wire Wire Line
	2950 3400 3400 3400
Wire Wire Line
	3400 3400 3400 3200
Wire Wire Line
	3400 3200 3500 3200
$Comp
L Isolator:PC817 U?
U 1 1 5E1ACB9A
P 4750 2300
F 0 "U?" H 4750 2625 50  0000 C CNN
F 1 "PC817" H 4750 2534 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4550 2100 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4750 2300 50  0001 L CNN
	1    4750 2300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
