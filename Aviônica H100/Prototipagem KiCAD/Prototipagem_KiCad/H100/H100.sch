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
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU ATTiny85
U 1 1 5EF27071
P 4100 3500
F 0 "ATTiny85" H 3571 3546 50  0000 R CNN
F 1 "Micro" H 3571 3455 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4100 3500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 4100 3500 50  0001 C CNN
	1    4100 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED LED1
U 1 1 5EF29701
P 5150 4250
F 0 "LED1" V 5200 4300 50  0000 L CNN
F 1 "ON/OFF" V 5100 4300 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" H 5150 4250 50  0001 C CNN
F 3 "~" H 5150 4250 50  0001 C CNN
	1    5150 4250
	0    1    -1   0   
$EndComp
$Comp
L Device:R Rreset1
U 1 1 5EF29F8D
P 4900 2800
F 0 "Rreset1" H 4970 2846 50  0000 L CNN
F 1 "R" H 4970 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4830 2800 50  0001 C CNN
F 3 "~" H 4900 2800 50  0001 C CNN
	1    4900 2800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 5EF2C276
P 4900 4100
F 0 "SW1" V 4850 3750 50  0000 L CNN
F 1 "Reset" V 4950 3750 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 4900 4100 50  0001 C CNN
F 3 "~" H 4900 4100 50  0001 C CNN
	1    4900 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 4100 4100 4450
Wire Wire Line
	4700 3700 4900 3700
Wire Wire Line
	4900 3800 4900 3700
Wire Wire Line
	4900 4400 4900 4450
Connection ~ 4100 4450
Wire Wire Line
	4900 2950 4900 3700
Connection ~ 4900 3700
$Comp
L Memory_EEPROM:CAT24C256 AT24C256
U 1 1 5EF280A5
P 6200 3900
F 0 "AT24C256" H 5500 3900 50  0000 C CNN
F 1 "EEPROM" H 5550 3800 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6200 3900 50  0001 C CNN
F 3 "https://www.onsemi.cn/PowerSolutions/document/CAT24C256-D.PDF" H 6200 3900 50  0001 C CNN
	1    6200 3900
	-1   0    0    -1  
$EndComp
Connection ~ 4900 4450
$Comp
L Device:R Rled1
U 1 1 5EF543A4
P 5150 3800
F 0 "Rled1" H 4950 3950 50  0000 L CNN
F 1 "R" H 4950 3850 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5080 3800 50  0001 C CNN
F 3 "~" H 5150 3800 50  0001 C CNN
	1    5150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4400 5150 4450
Wire Wire Line
	5150 4450 4900 4450
Wire Wire Line
	4700 3600 5150 3600
Wire Wire Line
	5150 3600 5150 3650
Wire Wire Line
	5150 3950 5150 4100
Wire Wire Line
	4700 3400 5250 3400
$Comp
L Connector:Conn_01x04_Female BMP280
U 1 1 5EF6F4B8
P 6900 3000
F 0 "BMP280" H 6700 3350 50  0000 L CNN
F 1 "Sensor" H 6700 3250 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 6900 3000 50  0001 C CNN
F 3 "~" H 6900 3000 50  0001 C CNN
	1    6900 3000
	1    0    0    -1  
$EndComp
Text Label 6950 2900 0    50   ~ 0
Vcc
Text Label 6950 3000 0    50   ~ 0
Terra
Text Label 6950 3100 0    50   ~ 0
SCL
Text Label 6950 3200 0    50   ~ 0
SDA
Wire Wire Line
	5250 3100 5250 3400
Wire Wire Line
	6600 3000 6700 3000
Wire Wire Line
	4100 4450 4900 4450
NoConn ~ 4700 3500
Wire Wire Line
	6700 2900 6600 2900
Wire Wire Line
	6600 3000 6600 3800
Wire Wire Line
	6600 3800 6600 3900
Connection ~ 6600 3800
Wire Wire Line
	5800 3800 5800 3200
Connection ~ 5800 3200
Wire Wire Line
	5800 3200 6700 3200
Wire Wire Line
	5250 3900 5250 3400
Connection ~ 5250 3400
Wire Wire Line
	5800 4000 5800 4200
Wire Wire Line
	6600 3900 6600 4000
Connection ~ 6600 3900
$Comp
L Device:Battery_Cell BT1
U 1 1 5EFCAF55
P 2000 3500
F 0 "BT1" H 1600 3600 50  0000 L CNN
F 1 "Battery_Cell" H 1450 3500 50  0000 L CNN
F 2 "LR44:LR44" V 2000 3560 50  0001 C CNN
F 3 "~" V 2000 3560 50  0001 C CNN
	1    2000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3300 2000 2450
Wire Wire Line
	2000 3600 2000 4450
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5EFCCF97
P 2000 2450
F 0 "#FLG01" H 2000 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 2000 2623 50  0000 C CNN
F 2 "" H 2000 2450 50  0001 C CNN
F 3 "~" H 2000 2450 50  0001 C CNN
	1    2000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4200 5800 4200
Connection ~ 5800 4200
Wire Wire Line
	5800 4200 5800 4450
Wire Wire Line
	6600 4000 6600 4200
Wire Wire Line
	6600 4200 6200 4200
Connection ~ 6600 4000
Connection ~ 6200 4200
$Comp
L power:GNDPWR #PWR01
U 1 1 5EFDB292
P 4100 4450
F 0 "#PWR01" H 4100 4250 50  0001 C CNN
F 1 "GNDPWR" H 4104 4296 50  0000 C CNN
F 2 "" H 4100 4400 50  0001 C CNN
F 3 "" H 4100 4400 50  0001 C CNN
	1    4100 4450
	1    0    0    -1  
$EndComp
$Comp
L LM1117-3.3:LM1117-3.3 U1
U 1 1 5F03975F
P 3050 2450
F 0 "U1" H 3050 2820 50  0000 C CNN
F 1 "LM1117-3.3" H 3050 2729 50  0000 C CNN
F 2 "LM1117:SOT230" H 3050 2450 50  0001 L BNN
F 3 "None" H 3050 2450 50  0001 L BNN
F 4 "SOT-223 Rochester Electronics" H 3050 2450 50  0001 L BNN "Campo4"
F 5 "adjustable, pin, supply, process, number, volt, voltage, shutdown, ic, Power Management, current, temperature, min, l..." H 3050 2450 50  0001 L BNN "Campo5"
F 6 "Texas" H 3050 2450 50  0001 L BNN "Campo6"
F 7 "Unavailable" H 3050 2450 50  0001 L BNN "Campo7"
F 8 "LM1117IMP-3.3/NOPB" H 3050 2450 50  0001 L BNN "Campo8"
	1    3050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2450 2000 2450
Connection ~ 2000 2450
Wire Wire Line
	2000 4450 2250 4450
Wire Wire Line
	2250 2650 2250 4450
Connection ~ 2250 4450
Wire Wire Line
	2250 4450 4100 4450
Wire Wire Line
	4700 3200 5800 3200
Wire Wire Line
	5250 3100 6700 3100
Wire Wire Line
	5250 3900 5800 3900
Connection ~ 5150 4450
NoConn ~ 3850 2550
Wire Wire Line
	3850 2450 4100 2450
Wire Wire Line
	4100 2450 4900 2450
Connection ~ 4100 2450
Connection ~ 4900 2450
Wire Wire Line
	6200 2450 6600 2450
Connection ~ 6200 2450
Wire Wire Line
	6600 2450 6600 2900
Wire Wire Line
	6200 2450 6200 3600
Wire Wire Line
	4100 2450 4100 2900
Wire Wire Line
	4900 2450 4900 2650
Wire Wire Line
	5150 4450 5800 4450
Wire Wire Line
	4900 2450 6200 2450
NoConn ~ 4700 3300
$EndSCHEMATC
