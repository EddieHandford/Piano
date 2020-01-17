EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L Interface_USB:FT230XS U401
U 1 1 5E1F9DE9
P 5900 3150
F 0 "U401" H 5300 3900 50  0000 C CNN
F 1 "FT230XS" H 5400 3800 50  0000 C CNN
F 2 "Package_SO:SSOP-16_3.9x4.9mm_P0.635mm" H 6900 2550 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT230X.pdf" H 5900 3150 50  0001 C CNN
	1    5900 3150
	1    0    0    -1  
$EndComp
Text HLabel 4800 2200 0    50   Input ~ 0
V_BUS
Text HLabel 4300 3050 0    50   Input ~ 0
USB_D-
Text HLabel 4300 3150 0    50   Input ~ 0
USB_D+
Text HLabel 7000 2750 2    50   Output ~ 0
UART_TX
Text HLabel 7000 2850 2    50   Input ~ 0
UART_RX
$Comp
L Device:R_Small R?
U 1 1 5E231173
P 4600 2900
AR Path="/5E18C714/5E231173" Ref="R?"  Part="1" 
AR Path="/5E18D7E6/5E231173" Ref="R401"  Part="1" 
F 0 "R401" V 4404 2900 50  0000 C CNN
F 1 "280R" V 4495 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 2900 50  0001 C CNN
F 3 "~" H 4600 2900 50  0001 C CNN
F 4 "0603" V 4700 2900 50  0000 C CNN "FootprintField"
	1    4600 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5E231233
P 4600 3300
AR Path="/5E18C714/5E231233" Ref="R?"  Part="1" 
AR Path="/5E18D7E6/5E231233" Ref="R402"  Part="1" 
F 0 "R402" V 4404 3300 50  0000 C CNN
F 1 "280R" V 4495 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4600 3300 50  0001 C CNN
F 3 "~" H 4600 3300 50  0001 C CNN
F 4 "0603" V 4700 3300 50  0000 C CNN "FootprintField"
	1    4600 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB401
U 1 1 5E235485
P 5250 2200
F 0 "FB401" V 5013 2200 50  0000 C CNN
F 1 "MI0805K601R-10" V 5104 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5180 2200 50  0001 C CNN
F 3 "~" H 5250 2200 50  0001 C CNN
	1    5250 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3300 4800 3300
Wire Wire Line
	4800 3300 4800 3150
Wire Wire Line
	4800 3150 5200 3150
Wire Wire Line
	4800 2200 5150 2200
Wire Wire Line
	5350 2200 5800 2200
$Comp
L power:GND #PWR?
U 1 1 5E241DFA
P 5800 1700
AR Path="/5E18C714/5E241DFA" Ref="#PWR?"  Part="1" 
AR Path="/5E18D7E6/5E241DFA" Ref="#PWR0403"  Part="1" 
F 0 "#PWR0403" H 5800 1450 50  0001 C CNN
F 1 "GND" H 5805 1527 50  0000 C CNN
F 2 "" H 5800 1700 50  0001 C CNN
F 3 "" H 5800 1700 50  0001 C CNN
	1    5800 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C402
U 1 1 5E242457
P 5400 1400
F 0 "C402" H 5200 1450 50  0000 L CNN
F 1 "10nF" H 5100 1350 50  0000 L CNN
F 2 "" H 5400 1400 50  0001 C CNN
F 3 "~" H 5400 1400 50  0001 C CNN
	1    5400 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C403
U 1 1 5E243DDA
P 5800 1400
F 0 "C403" H 5600 1450 50  0000 L CNN
F 1 "100nF" H 5500 1350 50  0000 L CNN
F 2 "" H 5800 1400 50  0001 C CNN
F 3 "~" H 5800 1400 50  0001 C CNN
	1    5800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1500 5400 1600
Wire Wire Line
	5800 1500 5800 1600
Wire Wire Line
	6200 1600 6200 1500
Connection ~ 5800 1600
Wire Wire Line
	5800 1600 6200 1600
Wire Wire Line
	5400 1600 5800 1600
Wire Wire Line
	5400 1300 5400 1200
Wire Wire Line
	6200 1200 6200 1300
Wire Wire Line
	5800 2200 5800 2450
Wire Wire Line
	6000 2450 6000 2300
Wire Wire Line
	5200 3350 5150 3350
Wire Wire Line
	5200 2750 4950 2750
Text Label 4950 2750 0    50   ~ 0
3V3_
Text Label 6000 2300 1    50   ~ 0
3V3_
Text Label 4950 3350 0    50   ~ 0
3V3_
$Comp
L Device:C_Small C401
U 1 1 5E27C7CF
P 5150 3750
F 0 "C401" H 5242 3796 50  0000 L CNN
F 1 "100nF" H 5242 3705 50  0000 L CNN
F 2 "" H 5150 3750 50  0001 C CNN
F 3 "~" H 5150 3750 50  0001 C CNN
	1    5150 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3650 5150 3350
Connection ~ 5150 3350
Wire Wire Line
	5150 3350 4950 3350
$Comp
L Device:CP1_Small C404
U 1 1 5E27DED4
P 6200 1400
F 0 "C404" H 6000 1450 50  0000 L CNN
F 1 "4.7uF" H 5900 1350 50  0000 L CNN
F 2 "" H 6200 1400 50  0001 C CNN
F 3 "~" H 6200 1400 50  0001 C CNN
	1    6200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3850 5150 3950
Wire Wire Line
	5150 3950 5800 3950
Wire Wire Line
	6000 3950 6000 3850
Wire Wire Line
	5800 3850 5800 3950
Connection ~ 5800 3950
Wire Wire Line
	5800 3950 6000 3950
$Comp
L power:GND #PWR?
U 1 1 5E280E4D
P 5150 4050
AR Path="/5E18C714/5E280E4D" Ref="#PWR?"  Part="1" 
AR Path="/5E18D7E6/5E280E4D" Ref="#PWR0401"  Part="1" 
F 0 "#PWR0401" H 5150 3800 50  0001 C CNN
F 1 "GND" H 5155 3877 50  0000 C CNN
F 2 "" H 5150 4050 50  0001 C CNN
F 3 "" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3950 5150 4050
Connection ~ 5150 3950
Wire Wire Line
	6600 2750 7000 2750
Wire Wire Line
	6600 2850 7000 2850
NoConn ~ 6600 2950
NoConn ~ 6600 3050
NoConn ~ 6600 3250
NoConn ~ 6600 3350
NoConn ~ 6600 3450
NoConn ~ 6600 3550
Wire Wire Line
	4300 3150 4400 3150
Wire Wire Line
	4400 3150 4400 3300
Wire Wire Line
	4400 3300 4500 3300
Wire Wire Line
	4300 3050 4400 3050
Wire Wire Line
	4400 3050 4400 2900
Wire Wire Line
	4400 2900 4500 2900
Wire Wire Line
	4700 2900 4800 2900
Wire Wire Line
	4800 2900 4800 3050
Wire Wire Line
	4800 3050 5200 3050
Wire Wire Line
	5800 1300 5800 1200
Connection ~ 5800 1200
Wire Wire Line
	5800 1200 6200 1200
Wire Wire Line
	5400 1200 5800 1200
$Comp
L power:+3.3V #PWR?
U 1 1 5E23F4D2
P 5800 1100
AR Path="/5E18C714/5E23F4D2" Ref="#PWR?"  Part="1" 
AR Path="/5E23F4D2" Ref="#PWR?"  Part="1" 
AR Path="/5E18D7E6/5E23F4D2" Ref="#PWR0402"  Part="1" 
F 0 "#PWR0402" H 5800 950 50  0001 C CNN
F 1 "+3.3V" H 5815 1273 50  0000 C CNN
F 2 "" H 5800 1100 50  0001 C CNN
F 3 "" H 5800 1100 50  0001 C CNN
	1    5800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1100 5800 1200
Wire Wire Line
	5800 1600 5800 1700
$Comp
L power:PWR_FLAG #FLG0401
U 1 1 5E254F65
P 5800 2200
F 0 "#FLG0401" H 5800 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 5800 2373 50  0000 C CNN
F 2 "" H 5800 2200 50  0001 C CNN
F 3 "~" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
Connection ~ 5800 2200
$EndSCHEMATC
