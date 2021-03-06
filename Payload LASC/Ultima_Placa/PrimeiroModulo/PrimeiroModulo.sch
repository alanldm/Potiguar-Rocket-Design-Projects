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
L Connector:Conn_01x04_Female SPI1
U 1 1 5F6B9303
P 7200 2150
F 0 "SPI1" H 7228 2126 50  0000 L CNN
F 1 "Con" H 7228 2035 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 7200 2150 50  0001 C CNN
F 3 "~" H 7200 2150 50  0001 C CNN
	1    7200 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female I2C1
U 1 1 5F6BA2A8
P 5600 2150
F 0 "I2C1" H 5650 2050 50  0000 L CNN
F 1 "Con" H 5650 1950 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5600 2150 50  0001 C CNN
F 3 "~" H 5600 2150 50  0001 C CNN
	1    5600 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female UART1
U 1 1 5F6B8E19
P 6300 2150
F 0 "UART1" H 6328 2126 50  0000 L CNN
F 1 "Con" H 6328 2035 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6300 2150 50  0001 C CNN
F 3 "~" H 6300 2150 50  0001 C CNN
	1    6300 2150
	1    0    0    -1  
$EndComp
Text GLabel 5400 2050 0    50   Input ~ 0
Vcc
Text GLabel 5400 2150 0    50   Input ~ 0
Gnd
$Comp
L Connector:Conn_01x02_Male Alimentação1
U 1 1 5F7D26D5
P 4000 2100
F 0 "Alimentação1" H 4100 2350 50  0000 C CNN
F 1 "Con" H 4100 2250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4000 2100 50  0001 C CNN
F 3 "~" H 4000 2100 50  0001 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male GPS1
U 1 1 5F7D3995
P 4000 2650
F 0 "GPS1" H 4108 2931 50  0000 C CNN
F 1 "Con" H 4108 2840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4000 2650 50  0001 C CNN
F 3 "~" H 4000 2650 50  0001 C CNN
	1    4000 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male SD1
U 1 1 5F7D49A0
P 4000 3450
F 0 "SD1" H 4100 3850 50  0000 C CNN
F 1 "Con" H 4100 3750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4000 3450 50  0001 C CNN
F 3 "~" H 4000 3450 50  0001 C CNN
	1    4000 3450
	1    0    0    -1  
$EndComp
Text GLabel 4200 2100 2    50   Input ~ 0
Vcc_3.7
Text GLabel 4200 2200 2    50   Input ~ 0
Gnd
Text GLabel 5000 3150 0    50   Input ~ 0
Gnd
Text GLabel 5000 2950 0    50   Input ~ 0
Vcc_3.7
$Comp
L LM1117-3.3:LM1117-3.3 LM1117
U 1 1 5F7DAE44
P 5800 2950
F 0 "LM1117" H 5800 3320 50  0000 C CNN
F 1 "Regulador" H 5800 3229 50  0000 C CNN
F 2 "LM1117:SOT230" H 5800 2950 50  0001 L BNN
F 3 "None" H 5800 2950 50  0001 L BNN
F 4 "SOT-223 Rochester Electronics" H 5800 2950 50  0001 L BNN "Campo4"
F 5 "adjustable, pin, supply, process, number, volt, voltage, shutdown, ic, Power Management, current, temperature, min, l..." H 5800 2950 50  0001 L BNN "Campo5"
F 6 "Texas" H 5800 2950 50  0001 L BNN "Campo6"
F 7 "Unavailable" H 5800 2950 50  0001 L BNN "Campo7"
F 8 "LM1117IMP-3.3/NOPB" H 5800 2950 50  0001 L BNN "Campo8"
	1    5800 2950
	1    0    0    -1  
$EndComp
Text GLabel 4200 2550 2    50   Input ~ 0
Vcc
Text GLabel 4200 2850 2    50   Input ~ 0
Gnd
Text GLabel 4200 3250 2    50   Input ~ 0
Gnd
Text GLabel 4200 3350 2    50   Input ~ 0
Vcc
Text GLabel 6100 2150 0    50   Input ~ 0
TX
Text GLabel 6100 2250 0    50   Input ~ 0
RX
Text GLabel 4200 2650 2    50   Input ~ 0
RX
Text GLabel 4200 2750 2    50   Input ~ 0
TX
NoConn ~ 5400 2250
NoConn ~ 5400 2350
Text GLabel 7000 2050 0    50   Input ~ 0
CS
Text GLabel 7000 2150 0    50   Input ~ 0
SCK
Text GLabel 7000 2250 0    50   Input ~ 0
MISO
Text GLabel 7000 2350 0    50   Input ~ 0
MOSI
Text GLabel 4200 3450 2    50   Input ~ 0
MISO
Text GLabel 4200 3550 2    50   Input ~ 0
MOSI
Text GLabel 4200 3650 2    50   Input ~ 0
SCK
Text GLabel 4200 3750 2    50   Input ~ 0
CS
Text GLabel 6600 3050 2    50   Input ~ 0
Vcc
NoConn ~ 6600 2950
$Comp
L Connector:Conn_01x03_Male Suporte1
U 1 1 5F7D9979
P 4800 3900
F 0 "Suporte1" H 4900 4250 50  0000 C CNN
F 1 "Con" H 4900 4150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4800 3900 50  0001 C CNN
F 3 "~" H 4800 3900 50  0001 C CNN
	1    4800 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male Supporte1
U 1 1 5F7DB6F4
P 5500 3900
F 0 "Supporte1" H 5600 4250 50  0000 C CNN
F 1 "Con" H 5600 4150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5500 3900 50  0001 C CNN
F 3 "~" H 5500 3900 50  0001 C CNN
	1    5500 3900
	1    0    0    -1  
$EndComp
NoConn ~ 5000 3800
NoConn ~ 5000 3900
NoConn ~ 5000 4000
NoConn ~ 5700 3800
NoConn ~ 5700 3900
NoConn ~ 5700 4000
$EndSCHEMATC
