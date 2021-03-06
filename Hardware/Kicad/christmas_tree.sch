EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PCB Christmas Tree"
Date "2021-11-08"
Rev "A"
Comp "Xavier Bourlot"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:CP C1
U 1 1 618CFEAF
P 3450 3500
F 0 "C1" H 3568 3546 50  0000 L CNN
F 1 "10F" H 3568 3455 50  0000 L CNN
F 2 "christmas_tree:Supercap_SMD" H 3488 3350 50  0001 C CNN
F 3 "~" H 3450 3500 50  0001 C CNN
	1    3450 3500
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:TL431LP U1
U 1 1 618D0390
P 2900 3500
F 0 "U1" V 2946 3430 50  0000 R CNN
F 1 "TL431LP" V 2855 3430 50  0000 R CNN
F 2 "christmas_tree:TO92_H" H 2900 3350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 2900 3500 50  0001 C CIN
	1    2900 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 618D247D
P 2600 3350
F 0 "R2" H 2670 3396 50  0000 L CNN
F 1 "12k" H 2670 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2530 3350 50  0001 C CNN
F 3 "~" H 2600 3350 50  0001 C CNN
	1    2600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 618D26D3
P 2600 3650
F 0 "R3" H 2670 3696 50  0000 L CNN
F 1 "280k" H 2670 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2530 3650 50  0001 C CNN
F 3 "~" H 2600 3650 50  0001 C CNN
	1    2600 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 618D3965
P 2400 3350
F 0 "JP1" V 2450 3550 50  0000 R CNN
F 1 "Jumper_NC_Small" V 2350 4100 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 2400 3350 50  0001 C CNN
F 3 "~" H 2400 3350 50  0001 C CNN
	1    2400 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 3450 2400 3500
Wire Wire Line
	2400 3500 2600 3500
Connection ~ 2600 3500
Wire Wire Line
	2800 3500 2600 3500
Wire Wire Line
	2400 3250 2400 3200
Wire Wire Line
	2400 3200 2600 3200
Wire Wire Line
	2900 3200 2900 3400
Connection ~ 2600 3200
Wire Wire Line
	2600 3200 2900 3200
Wire Wire Line
	3450 3200 3450 3350
Wire Wire Line
	2600 3800 2900 3800
Wire Wire Line
	2900 3800 2900 3600
Wire Wire Line
	2900 3800 3150 3800
Connection ~ 2900 3800
$Comp
L Device:CP C2
U 1 1 618D9628
P 3450 4100
F 0 "C2" H 3568 4146 50  0000 L CNN
F 1 "10F" H 3568 4055 50  0000 L CNN
F 2 "christmas_tree:Supercap_SMD" H 3488 3950 50  0001 C CNN
F 3 "~" H 3450 4100 50  0001 C CNN
	1    3450 4100
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:TL431LP U2
U 1 1 618D962E
P 2900 4100
F 0 "U2" V 2946 4030 50  0000 R CNN
F 1 "TL431LP" V 2855 4030 50  0000 R CNN
F 2 "christmas_tree:TO92_H" H 2900 3950 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 2900 4100 50  0001 C CIN
	1    2900 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 618D9634
P 2600 3950
F 0 "R4" H 2670 3996 50  0000 L CNN
F 1 "12k" H 2670 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2530 3950 50  0001 C CNN
F 3 "~" H 2600 3950 50  0001 C CNN
	1    2600 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 618D963A
P 2600 4250
F 0 "R5" H 2670 4296 50  0000 L CNN
F 1 "280k" H 2670 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2530 4250 50  0001 C CNN
F 3 "~" H 2600 4250 50  0001 C CNN
	1    2600 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP2
U 1 1 618D9640
P 2400 3950
F 0 "JP2" V 2450 4150 50  0000 R CNN
F 1 "Jumper_NC_Small" V 2350 4700 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 2400 3950 50  0001 C CNN
F 3 "~" H 2400 3950 50  0001 C CNN
	1    2400 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 4050 2400 4100
Wire Wire Line
	2400 4100 2600 4100
Connection ~ 2600 4100
Wire Wire Line
	2800 4100 2600 4100
Wire Wire Line
	2400 3850 2400 3800
Wire Wire Line
	2400 3800 2600 3800
Wire Wire Line
	2900 3800 2900 4000
Connection ~ 2600 3800
Wire Wire Line
	2600 4400 2900 4400
Wire Wire Line
	2900 4400 2900 4200
Wire Wire Line
	2900 4400 3450 4400
Wire Wire Line
	3450 4400 3450 4250
Connection ~ 2900 4400
$Comp
L Connector:USB_A J1
U 1 1 618D9C4D
P 1150 3800
F 0 "J1" H 1207 4267 50  0000 C CNN
F 1 "USB_A" H 1207 4176 50  0000 C CNN
F 2 "footprints:USBA_PCB" H 1300 3750 50  0001 C CNN
F 3 " ~" H 1300 3750 50  0001 C CNN
	1    1150 3800
	1    0    0    -1  
$EndComp
NoConn ~ 1450 3800
NoConn ~ 1450 3900
$Comp
L Device:R R1
U 1 1 618DF3E0
P 1800 3200
F 0 "R1" V 1593 3200 50  0000 C CNN
F 1 "100" V 1684 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1730 3200 50  0001 C CNN
F 3 "~" H 1800 3200 50  0001 C CNN
	1    1800 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 3600 1500 3600
Wire Wire Line
	1500 3600 1500 3200
Connection ~ 2400 3200
Wire Wire Line
	1050 4200 1050 4400
Wire Wire Line
	1050 4400 1150 4400
Connection ~ 2600 4400
Wire Wire Line
	1150 4200 1150 4400
Connection ~ 1150 4400
Wire Wire Line
	1150 4400 1550 4400
Connection ~ 2900 3200
Wire Wire Line
	2900 3200 3450 3200
Wire Wire Line
	3850 3200 3450 3200
Connection ~ 3450 3200
Connection ~ 3450 4400
$Comp
L Device:LED D1
U 1 1 618EF593
P 5050 5350
F 0 "D1" V 5089 5233 50  0000 R CNN
F 1 "LED" V 4998 5233 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5050 5350 50  0001 C CNN
F 3 "~" H 5050 5350 50  0001 C CNN
	1    5050 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3500 6600 3500
Wire Wire Line
	6250 3600 6600 3600
Wire Wire Line
	6600 3700 6250 3700
Wire Wire Line
	6250 3800 6600 3800
Text Label 6600 3500 0    50   ~ 0
PB0u
Text Label 6600 3600 0    50   ~ 0
PB1u
Text Label 6600 3700 0    50   ~ 0
PB2u
Text Label 6600 3800 0    50   ~ 0
PB3u
$Comp
L Device:R R6
U 1 1 618F82BD
P 4900 5200
F 0 "R6" V 4693 5200 50  0000 C CNN
F 1 "220" V 4784 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4830 5200 50  0001 C CNN
F 3 "~" H 4900 5200 50  0001 C CNN
	1    4900 5200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 618FA309
P 5400 5350
F 0 "D5" V 5439 5233 50  0000 R CNN
F 1 "LED" V 5348 5233 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb_r" H 5400 5350 50  0001 C CNN
F 3 "~" H 5400 5350 50  0001 C CNN
	1    5400 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D9
U 1 1 618FA660
P 5750 5350
F 0 "D9" V 5789 5233 50  0000 R CNN
F 1 "LED" V 5698 5233 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb" H 5750 5350 50  0001 C CNN
F 3 "~" H 5750 5350 50  0001 C CNN
	1    5750 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 5200 5400 5200
Connection ~ 5050 5200
Connection ~ 5400 5200
Wire Wire Line
	5400 5200 5750 5200
Wire Wire Line
	4750 5200 4600 5200
Wire Wire Line
	5050 5500 5050 5650
Wire Wire Line
	5400 5500 5400 5650
Wire Wire Line
	5750 5500 5750 5650
Text Label 4600 5200 0    50   ~ 0
PB0u
Text Label 5050 5650 0    50   ~ 0
PB1
Text Label 5400 5650 0    50   ~ 0
PB2
Text Label 5750 5650 0    50   ~ 0
PB3
$Comp
L Device:LED D2
U 1 1 618FFB4F
P 5050 5950
F 0 "D2" V 5089 5833 50  0000 R CNN
F 1 "LED" V 4998 5833 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb_r" H 5050 5950 50  0001 C CNN
F 3 "~" H 5050 5950 50  0001 C CNN
	1    5050 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 618FFB55
P 4900 5800
F 0 "R7" V 4693 5800 50  0000 C CNN
F 1 "220" V 4784 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4830 5800 50  0001 C CNN
F 3 "~" H 4900 5800 50  0001 C CNN
	1    4900 5800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D6
U 1 1 618FFB5B
P 5400 5950
F 0 "D6" V 5439 5833 50  0000 R CNN
F 1 "LED" V 5348 5833 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb" H 5400 5950 50  0001 C CNN
F 3 "~" H 5400 5950 50  0001 C CNN
	1    5400 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D10
U 1 1 618FFB61
P 5750 5950
F 0 "D10" V 5789 5833 50  0000 R CNN
F 1 "LED" V 5698 5833 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb" H 5750 5950 50  0001 C CNN
F 3 "~" H 5750 5950 50  0001 C CNN
	1    5750 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 5800 5400 5800
Connection ~ 5050 5800
Connection ~ 5400 5800
Wire Wire Line
	5400 5800 5750 5800
Wire Wire Line
	4750 5800 4600 5800
Wire Wire Line
	5050 6100 5050 6250
Wire Wire Line
	5400 6100 5400 6250
Wire Wire Line
	5750 6100 5750 6250
Text Label 4600 5800 0    50   ~ 0
PB1u
Text Label 5050 6250 0    50   ~ 0
PB0
Text Label 5400 6250 0    50   ~ 0
PB2
Text Label 5750 6250 0    50   ~ 0
PB3
$Comp
L Device:LED D3
U 1 1 619019F6
P 5050 6550
F 0 "D3" V 5089 6433 50  0000 R CNN
F 1 "LED" V 4998 6433 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb" H 5050 6550 50  0001 C CNN
F 3 "~" H 5050 6550 50  0001 C CNN
	1    5050 6550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 619019FC
P 4900 6400
F 0 "R8" V 4693 6400 50  0000 C CNN
F 1 "220" V 4784 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4830 6400 50  0001 C CNN
F 3 "~" H 4900 6400 50  0001 C CNN
	1    4900 6400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D11
U 1 1 61901A08
P 5750 6550
F 0 "D11" V 5789 6433 50  0000 R CNN
F 1 "LED" V 5698 6433 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb" H 5750 6550 50  0001 C CNN
F 3 "~" H 5750 6550 50  0001 C CNN
	1    5750 6550
	0    -1   -1   0   
$EndComp
Connection ~ 5050 6400
Wire Wire Line
	4750 6400 4600 6400
Wire Wire Line
	5050 6700 5050 6850
Wire Wire Line
	5400 6700 5400 6850
Wire Wire Line
	5750 6700 5750 6850
Text Label 4600 6400 0    50   ~ 0
PB2u
Text Label 5050 6850 0    50   ~ 0
PB0
Text Label 5400 6850 0    50   ~ 0
PB1
Text Label 5750 6850 0    50   ~ 0
PB3
$Comp
L Device:LED D4
U 1 1 61904DB2
P 5050 7150
F 0 "D4" V 5089 7033 50  0000 R CNN
F 1 "LED" V 4998 7033 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb_r" H 5050 7150 50  0001 C CNN
F 3 "~" H 5050 7150 50  0001 C CNN
	1    5050 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 61904DB8
P 4900 7000
F 0 "R9" V 4693 7000 50  0000 C CNN
F 1 "220" V 4784 7000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4830 7000 50  0001 C CNN
F 3 "~" H 4900 7000 50  0001 C CNN
	1    4900 7000
	0    1    1    0   
$EndComp
$Comp
L Device:LED D8
U 1 1 61904DBE
P 5400 7150
F 0 "D8" V 5439 7033 50  0000 R CNN
F 1 "LED" V 5348 7033 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb" H 5400 7150 50  0001 C CNN
F 3 "~" H 5400 7150 50  0001 C CNN
	1    5400 7150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D12
U 1 1 61904DC4
P 5750 7150
F 0 "D12" V 5789 7033 50  0000 R CNN
F 1 "LED" V 5698 7033 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb" H 5750 7150 50  0001 C CNN
F 3 "~" H 5750 7150 50  0001 C CNN
	1    5750 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 7000 5400 7000
Connection ~ 5050 7000
Connection ~ 5400 7000
Wire Wire Line
	5400 7000 5750 7000
Wire Wire Line
	4750 7000 4600 7000
Wire Wire Line
	5050 7300 5050 7450
Wire Wire Line
	5400 7300 5400 7450
Wire Wire Line
	5750 7300 5750 7450
Text Label 4600 7000 0    50   ~ 0
PB3u
Text Label 5050 7450 0    50   ~ 0
PB0
Text Label 5400 7450 0    50   ~ 0
PB1
Text Label 5750 7450 0    50   ~ 0
PB2
Wire Wire Line
	3450 4400 4800 4400
Wire Wire Line
	5650 3100 5650 3200
Wire Wire Line
	4250 3100 4800 3100
$Comp
L Device:C C3
U 1 1 6190C257
P 4800 3800
F 0 "C3" H 4915 3846 50  0000 L CNN
F 1 "100n" H 4900 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4838 3650 50  0001 C CNN
F 3 "~" H 4800 3800 50  0001 C CNN
	1    4800 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3950 4800 4400
Connection ~ 4800 4400
Wire Wire Line
	4800 3650 4800 3100
Connection ~ 4800 3100
Wire Wire Line
	4800 3100 5650 3100
NoConn ~ 4250 3300
Wire Wire Line
	3450 3950 3450 3800
Wire Wire Line
	3450 3800 3450 3650
Connection ~ 3450 3800
Wire Wire Line
	6250 4000 6600 4000
Wire Wire Line
	7450 3850 7750 3850
Wire Wire Line
	7750 3750 7450 3750
Wire Wire Line
	7450 3650 7750 3650
Wire Wire Line
	7750 3550 7450 3550
Wire Wire Line
	6250 3900 6600 3900
Text Label 6600 3900 0    50   ~ 0
Touch
Text Label 6600 4000 0    50   ~ 0
RST
Wire Wire Line
	4800 4400 5650 4400
$Comp
L MCU_Microchip_ATtiny:ATtiny45-20SU U3
U 1 1 6194B40A
P 5650 3800
F 0 "U3" H 5300 4050 50  0000 R CNN
F 1 "ATtiny45-20SU" H 5750 3950 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 5650 3800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 5650 3800 50  0001 C CNN
	1    5650 3800
	1    0    0    -1  
$EndComp
Connection ~ 5650 3100
Connection ~ 5650 4400
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61984F8A
P 4800 3100
F 0 "#FLG0101" H 4800 3175 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 3273 50  0000 C CNN
F 2 "" H 4800 3100 50  0001 C CNN
F 3 "~" H 4800 3100 50  0001 C CNN
	1    4800 3100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61987F98
P 1500 3200
F 0 "#FLG0102" H 1500 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 3373 50  0000 C CNN
F 2 "" H 1500 3200 50  0001 C CNN
F 3 "~" H 1500 3200 50  0001 C CNN
	1    1500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 619893CC
P 1550 4400
F 0 "#FLG0103" H 1550 4475 50  0001 C CNN
F 1 "PWR_FLAG" H 1550 4573 50  0000 C CNN
F 2 "" H 1550 4400 50  0001 C CNN
F 3 "~" H 1550 4400 50  0001 C CNN
	1    1550 4400
	1    0    0    -1  
$EndComp
Connection ~ 1550 4400
Wire Wire Line
	1550 4400 2600 4400
Text Label 1500 3600 0    50   ~ 0
Vbus
$Comp
L power:GND #PWR0101
U 1 1 619B930D
P 1550 4400
F 0 "#PWR0101" H 1550 4150 50  0001 C CNN
F 1 "GND" H 1555 4227 50  0000 C CNN
F 2 "" H 1550 4400 50  0001 C CNN
F 3 "" H 1550 4400 50  0001 C CNN
	1    1550 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0102
U 1 1 619BE59F
P 3450 3200
F 0 "#PWR0102" H 3450 3050 50  0001 C CNN
F 1 "+BATT" H 3465 3373 50  0000 C CNN
F 2 "" H 3450 3200 50  0001 C CNN
F 3 "" H 3450 3200 50  0001 C CNN
	1    3450 3200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 619C13DC
P 5650 3100
F 0 "#PWR0103" H 5650 2950 50  0001 C CNN
F 1 "VCC" H 5667 3273 50  0000 C CNN
F 2 "" H 5650 3100 50  0001 C CNN
F 3 "" H 5650 3100 50  0001 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR0104
U 1 1 619C45CE
P 3450 3800
F 0 "#PWR0104" H 3450 3650 50  0001 C CNN
F 1 "+2V5" V 3465 3928 50  0000 L CNN
F 2 "" H 3450 3800 50  0001 C CNN
F 3 "" H 3450 3800 50  0001 C CNN
	1    3450 3800
	0    1    1    0   
$EndComp
Text Label 5750 5200 0    50   ~ 0
PB0
Text Label 5750 5800 0    50   ~ 0
PB1
Text Label 5750 6400 0    50   ~ 0
PB2
Text Label 5750 7000 0    50   ~ 0
PB3
$Comp
L _MYLIBRARY:TTP223 U4
U 1 1 618F08E2
P 9550 3900
F 0 "U4" H 9575 4531 50  0000 C CNN
F 1 "TTP223" H 9575 4440 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 9550 3900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/TTP223-BA6_C80757.pdf" H 9550 3900 50  0001 C CNN
	1    9550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3450 9550 3100
Wire Wire Line
	9550 3100 8650 3100
Wire Wire Line
	9900 3750 10000 3750
Wire Wire Line
	9250 3900 9050 3900
$Comp
L Device:C C5
U 1 1 618FA400
P 9050 4150
F 0 "C5" H 9165 4196 50  0000 L CNN
F 1 "DNP" H 9150 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9088 4000 50  0001 C CNN
F 3 "~" H 9050 4150 50  0001 C CNN
	1    9050 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP4
U 1 1 618FE9B6
P 10550 4000
F 0 "JP4" H 10550 3900 50  0000 C CNN
F 1 "Jumper_NO_Small" H 10550 3850 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10550 4000 50  0001 C CNN
F 3 "~" H 10550 4000 50  0001 C CNN
	1    10550 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP3
U 1 1 618FFD90
P 10550 3900
F 0 "JP3" H 10550 4085 50  0000 C CNN
F 1 "Jumper_NO_Small" H 10550 3994 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10550 3900 50  0001 C CNN
F 3 "~" H 10550 3900 50  0001 C CNN
	1    10550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3900 9900 3900
Wire Wire Line
	9900 4000 10450 4000
Text Label 10000 3750 0    50   ~ 0
Touch
Text Label 9950 4000 0    50   ~ 0
Ahlb
Text Label 9950 3900 0    50   ~ 0
Tog
Wire Wire Line
	10650 4000 10650 3900
Wire Wire Line
	10650 3100 9550 3100
Connection ~ 10650 3900
Wire Wire Line
	10650 3900 10650 3100
Connection ~ 9550 3100
Wire Wire Line
	9050 4300 9050 4400
Connection ~ 9050 4400
Wire Wire Line
	9050 4400 9550 4400
Wire Wire Line
	9050 4000 9050 3900
$Comp
L Device:C C4
U 1 1 619123F9
P 8650 4150
F 0 "C4" H 8765 4196 50  0000 L CNN
F 1 "100n" H 8750 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8688 4000 50  0001 C CNN
F 3 "~" H 8650 4150 50  0001 C CNN
	1    8650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4300 8650 4400
Connection ~ 8650 4400
Wire Wire Line
	8650 4400 9050 4400
Wire Wire Line
	8650 4000 8650 3100
Connection ~ 8650 3100
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 61919EC0
P 2400 3200
F 0 "#FLG0104" H 2400 3275 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 3373 50  0000 C CNN
F 2 "" H 2400 3200 50  0001 C CNN
F 3 "~" H 2400 3200 50  0001 C CNN
	1    2400 3200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 6191A631
P 3150 3800
F 0 "#FLG0105" H 3150 3875 50  0001 C CNN
F 1 "PWR_FLAG" H 3150 3973 50  0000 C CNN
F 2 "" H 3150 3800 50  0001 C CNN
F 3 "~" H 3150 3800 50  0001 C CNN
	1    3150 3800
	1    0    0    -1  
$EndComp
Connection ~ 3150 3800
Wire Wire Line
	3150 3800 3450 3800
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 6192F370
P 8850 3900
F 0 "J3" H 8768 3675 50  0000 C CNN
F 1 "Touch" H 8768 3766 50  0000 C CNN
F 2 "christmas_tree:Touch_capacitive" H 8850 3900 50  0001 C CNN
F 3 "~" H 8850 3900 50  0001 C CNN
	1    8850 3900
	-1   0    0    1   
$EndComp
Connection ~ 9050 3900
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 619B0CFA
P 7250 3650
F 0 "J2" H 7168 4067 50  0000 C CNN
F 1 "Conn_01x06" H 7168 3976 50  0000 C CNN
F 2 "christmas_tree:Tag-Connect_noHoles" H 7250 3650 50  0001 C CNN
F 3 "~" H 7250 3650 50  0001 C CNN
	1    7250 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7450 3950 7750 3950
Wire Wire Line
	5650 4400 8650 4400
Wire Wire Line
	5650 3100 8650 3100
Wire Wire Line
	7450 3450 7750 3450
Text Label 7750 3450 0    50   ~ 0
VCC
Text Label 7750 3650 0    50   ~ 0
GND
Text Label 7750 3850 0    50   ~ 0
RST
Text Label 7750 3950 0    50   ~ 0
PB0u
Text Label 7750 3750 0    50   ~ 0
PB1u
Text Label 7750 3550 0    50   ~ 0
PB2u
$Comp
L Device:R R10
U 1 1 6192A3BA
P 2100 3200
F 0 "R10" V 1893 3200 50  0000 C CNN
F 1 "100" V 1984 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 3200 50  0001 C CNN
F 3 "~" H 2100 3200 50  0001 C CNN
	1    2100 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 3200 2400 3200
Wire Wire Line
	1650 3200 1500 3200
Connection ~ 1500 3200
$Comp
L _MYLIBRARY:SW_SPDT_shield SW1
U 1 1 61931BEE
P 4050 3200
F 0 "SW1" H 4050 3393 50  0000 C CNN
F 1 "SW_SPDT_shield" H 4150 3500 50  0000 C CNN
F 2 "footprints:SPDT_SW_pcb_edge_mount" H 4050 3200 50  0001 C CNN
F 3 "~" H 4050 3200 50  0001 C CNN
	1    4050 3200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6193518E
P 4050 2950
F 0 "#PWR0105" H 4050 2700 50  0001 C CNN
F 1 "GND" H 4055 2777 50  0000 C CNN
F 2 "" H 4050 2950 50  0001 C CNN
F 3 "" H 4050 2950 50  0001 C CNN
	1    4050 2950
	-1   0    0    1   
$EndComp
Connection ~ 5400 6400
Wire Wire Line
	5400 6400 5750 6400
Wire Wire Line
	5050 6400 5400 6400
$Comp
L Device:LED D7
U 1 1 61901A02
P 5400 6550
F 0 "D7" V 5439 6433 50  0000 R CNN
F 1 "LED" V 5348 6433 50  0000 R CNN
F 2 "christmas_tree:LED_0805_orb_r" H 5400 6550 50  0001 C CNN
F 3 "~" H 5400 6550 50  0001 C CNN
	1    5400 6550
	0    -1   -1   0   
$EndComp
Text Notes 3150 4550 0    39   ~ 0
BCAP0010 P270 T01
Wire Notes Line
	850  4650 850  2750
Wire Notes Line
	850  2750 3800 2750
Wire Notes Line
	3800 2750 3800 4650
Wire Notes Line
	3800 4650 850  4650
Wire Notes Line
	4550 2750 8150 2750
Wire Notes Line
	8150 2750 8150 4650
Wire Notes Line
	8150 4650 4550 4650
Wire Notes Line
	4550 4650 4550 2750
Wire Notes Line
	8450 4650 10950 4650
Wire Notes Line
	10950 4650 10950 2750
Wire Notes Line
	10950 2750 8450 2750
Wire Notes Line
	8450 2750 8450 4650
Text Notes 1950 4600 0    50   ~ 0
Charging & Battery
Text Notes 5500 4600 0    50   ~ 0
Microcontroller & Programming
Text Notes 9150 4600 0    50   ~ 0
Capacitive touch sensor
Text Notes 3850 3650 0    50   ~ 0
On/Off Switch
Text Notes 2950 3400 0    30   ~ 0
2.6V nom
Text Notes 2950 4000 0    30   ~ 0
2.6V nom
Text Notes 1900 3500 0    30   ~ 0
Short for 2.5V nom.
Text Notes 1800 3300 0    30   ~ 0
R1+R10>15??
Text Notes 1900 4100 0    30   ~ 0
Short for 2.5V nom.
Text Notes 7200 4150 0    30   ~ 0
TagConnect with custom adapter\nto ICSP programmer
$EndSCHEMATC
