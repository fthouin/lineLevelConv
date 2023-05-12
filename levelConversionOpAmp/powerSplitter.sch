EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Source d'alimentation et de VREF"
Date "2023-05-11"
Rev "a"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 64475955
P 5450 3550
F 0 "Q1" H 5640 3596 50  0000 L CNN
F 1 "PN2222A" H 5640 3505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5650 3475 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/PN2222-D.PDF" H 5450 3550 50  0001 L CNN
	1    5450 3550
	1    0    0    -1  
$EndComp
Text HLabel 4000 3300 0    50   Input ~ 0
48V
Text HLabel 4000 4450 0    50   Input ~ 0
GND
Text HLabel 7450 4200 2    50   Output ~ 0
VREF
Text HLabel 8050 4000 2    50   Output ~ 0
V+
$Comp
L Device:R_Small_US R4
U 1 1 644784BE
P 4550 3400
F 0 "R4" H 4618 3446 50  0000 L CNN
F 1 "10k" H 4618 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4550 3400 50  0001 C CNN
F 3 "~" H 4550 3400 50  0001 C CNN
	1    4550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3500 4550 3550
Wire Wire Line
	4550 3550 5000 3550
Connection ~ 4550 3550
Wire Wire Line
	4550 3550 4550 3600
$Comp
L Device:R_Small_US R5
U 1 1 64479C8F
P 4550 3700
F 0 "R5" H 4618 3746 50  0000 L CNN
F 1 "10k" H 4618 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4550 3700 50  0001 C CNN
F 3 "~" H 4550 3700 50  0001 C CNN
	1    4550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4450 4550 4450
$Comp
L Device:R_Small_US R6
U 1 1 6447AE9B
P 5550 3950
F 0 "R6" H 5618 3996 50  0000 L CNN
F 1 "10k" H 5618 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 3950 50  0001 C CNN
F 3 "~" H 5550 3950 50  0001 C CNN
	1    5550 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 6447B168
P 5550 4300
F 0 "R7" H 5618 4346 50  0000 L CNN
F 1 "10k" H 5618 4255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5550 4300 50  0001 C CNN
F 3 "~" H 5550 4300 50  0001 C CNN
	1    5550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4450 5550 4450
Wire Wire Line
	5550 4450 5550 4400
Connection ~ 4550 4450
Wire Wire Line
	5550 3850 5550 3800
Wire Wire Line
	5550 3350 5550 3300
Wire Wire Line
	4000 3300 4550 3300
Connection ~ 4550 3300
Wire Wire Line
	4550 3300 5550 3300
Connection ~ 5550 3800
Wire Wire Line
	5550 3800 5550 3750
Wire Wire Line
	5550 4050 5550 4100
Connection ~ 5550 4100
Wire Wire Line
	5550 4100 5550 4200
$Comp
L Device:C_Small C3
U 1 1 644825BB
P 5250 3850
F 0 "C3" V 5021 3850 50  0000 C CNN
F 1 "1u" V 5112 3850 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D12.5mm_W5.0mm_P7.50mm" H 5250 3850 50  0001 C CNN
F 3 "~" H 5250 3850 50  0001 C CNN
	1    5250 3850
	0    -1   1    0   
$EndComp
Connection ~ 5000 3550
Wire Wire Line
	5000 3550 5250 3550
Wire Wire Line
	5550 4100 5950 4100
Wire Wire Line
	4550 3800 4550 4450
$Comp
L Device:CP1_Small C4
U 1 1 6449A00F
P 5950 4300
F 0 "C4" H 6041 4346 50  0000 L CNN
F 1 "47u/25V" H 6041 4255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 5950 4300 50  0001 C CNN
F 3 "~" H 5950 4300 50  0001 C CNN
	1    5950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4200 5950 4100
Connection ~ 5950 4100
Wire Wire Line
	5950 4400 5950 4450
Wire Wire Line
	5950 4450 5550 4450
Connection ~ 5550 4450
$Comp
L Amplifier_Operational:TL082 U1
U 1 1 6449B7EB
P 6900 4200
F 0 "U1" H 6900 4567 50  0000 C CNN
F 1 "TL082" H 6900 4476 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6900 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 6900 4200 50  0001 C CNN
	1    6900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4100 6600 4100
Wire Wire Line
	6600 4300 6500 4300
Wire Wire Line
	6500 4300 6500 4650
Wire Wire Line
	6500 4650 7200 4650
Wire Wire Line
	7200 4650 7200 4200
Wire Wire Line
	7450 4200 7200 4200
Connection ~ 7200 4200
$Comp
L Transistor_BJT:PN2222A Q2
U 1 1 645C5D65
P 7700 3800
F 0 "Q2" H 7890 3846 50  0000 L CNN
F 1 "PN2222A" H 7890 3755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7900 3725 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/PN2222-D.PDF" H 7700 3800 50  0001 L CNN
	1    7700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3800 7150 3800
$Comp
L Device:R_Small_US R8
U 1 1 645D1757
P 7800 4200
F 0 "R8" H 7868 4246 50  0000 L CNN
F 1 "10k" H 7868 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7800 4200 50  0001 C CNN
F 3 "~" H 7800 4200 50  0001 C CNN
	1    7800 4200
	1    0    0    -1  
$EndComp
Text HLabel 7600 4400 0    50   Input ~ 0
GND
Wire Wire Line
	7600 4400 7800 4400
Wire Wire Line
	7800 4400 7800 4300
Wire Wire Line
	7800 4100 7800 4000
Wire Wire Line
	5550 3300 7800 3300
Wire Wire Line
	7800 3300 7800 3600
Connection ~ 5550 3300
Wire Wire Line
	8050 4000 7800 4000
Connection ~ 7800 4000
$Comp
L Device:C_Small C7
U 1 1 645D69A4
P 7450 4000
F 0 "C7" V 7400 4100 50  0000 C CNN
F 1 "1u" V 7500 4100 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D12.5mm_W5.0mm_P7.50mm" H 7450 4000 50  0001 C CNN
F 3 "~" H 7450 4000 50  0001 C CNN
	1    7450 4000
	0    -1   1    0   
$EndComp
Wire Wire Line
	7550 4000 7800 4000
Wire Wire Line
	7350 4000 7150 4000
Wire Wire Line
	7150 4000 7150 3800
Connection ~ 7150 3800
Wire Wire Line
	7150 3800 5550 3800
Wire Wire Line
	5000 3850 5150 3850
Wire Wire Line
	5000 3550 5000 3850
Wire Wire Line
	5350 3850 5550 3850
Connection ~ 5550 3850
$EndSCHEMATC
