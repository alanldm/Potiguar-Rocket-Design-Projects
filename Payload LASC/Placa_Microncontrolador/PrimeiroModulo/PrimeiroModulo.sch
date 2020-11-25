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
L RF_Module:ESP32-WROOM-32 ESP1
U 1 1 5F6A9D86
P 3550 3600
F 0 "ESP1" H 2900 4000 50  0000 C CNN
F 1 "Chip" H 2900 3900 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 3550 2100 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 3250 3650 50  0001 C CNN
	1    3550 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F6B495D
P 3900 2100
F 0 "C3" H 4015 2146 50  0000 L CNN
F 1 "C" H 4015 2055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Axial_L11.0mm_D5.0mm_P18.00mm_Horizontal" H 3938 1950 50  0001 C CNN
F 3 "~" H 3900 2100 50  0001 C CNN
	1    3900 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5F6B5A06
P 3900 1750
F 0 "C2" H 4015 1796 50  0000 L CNN
F 1 "C" H 4015 1705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 3938 1600 50  0001 C CNN
F 3 "~" H 3900 1750 50  0001 C CNN
	1    3900 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5F6B68C7
P 2550 3500
F 0 "C1" H 2665 3546 50  0000 L CNN
F 1 "C" H 2665 3455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.1mm_W3.2mm_P5.00mm" H 2588 3350 50  0001 C CNN
F 3 "~" H 2550 3500 50  0001 C CNN
	1    2550 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F6B7C40
P 3100 1950
F 0 "R1" H 3170 1996 50  0000 L CNN
F 1 "R" H 3170 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3030 1950 50  0001 C CNN
F 3 "~" H 3100 1950 50  0001 C CNN
	1    3100 1950
	0    -1   -1   0   
$EndComp
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
Wire Wire Line
	3550 5100 3550 5000
$Comp
L Switch:SW_DIP_x01 Reset1
U 1 1 5F6BBB77
P 4550 2400
F 0 "Reset1" H 4550 2667 50  0000 C CNN
F 1 "Botao" H 4550 2576 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4550 2400 50  0001 C CNN
F 3 "~" H 4550 2400 50  0001 C CNN
	1    4550 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2400 4250 2400
Wire Wire Line
	4900 2400 4850 2400
Wire Wire Line
	4050 1750 4250 1750
Wire Wire Line
	4250 1750 4250 1950
Wire Wire Line
	4250 2100 4050 2100
Wire Wire Line
	4250 1950 4900 1950
Wire Wire Line
	4900 1950 4900 2400
Connection ~ 4250 1950
Wire Wire Line
	4250 1950 4250 2100
Connection ~ 4900 2400
Wire Wire Line
	3550 2200 3550 2100
Wire Wire Line
	3550 1750 3750 1750
Wire Wire Line
	3750 2100 3550 2100
Connection ~ 3550 2100
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
NoConn ~ 2950 2600
NoConn ~ 2950 2700
NoConn ~ 2950 3600
NoConn ~ 2950 3700
NoConn ~ 2950 3800
NoConn ~ 2950 3900
NoConn ~ 2950 4000
NoConn ~ 2950 4100
Wire Wire Line
	3550 1750 3550 1950
Wire Wire Line
	3250 1950 3550 1950
Connection ~ 3550 1950
Wire Wire Line
	3550 1950 3550 2100
Wire Wire Line
	2550 3350 2550 2400
Wire Wire Line
	2550 1950 2950 1950
Wire Wire Line
	2550 3650 2550 5100
Wire Wire Line
	2550 5100 3550 5100
Connection ~ 3550 5100
Wire Wire Line
	2950 2400 2550 2400
Connection ~ 2550 2400
Wire Wire Line
	2550 2400 2550 1950
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F70D00E
P 3550 1750
F 0 "#FLG0101" H 3550 1825 50  0001 C CNN
F 1 "PWR_FLAG" H 3450 1900 50  0000 C CNN
F 2 "" H 3550 1750 50  0001 C CNN
F 3 "~" H 3550 1750 50  0001 C CNN
	1    3550 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0101
U 1 1 5F70DA21
P 3550 5100
F 0 "#PWR0101" H 3550 4900 50  0001 C CNN
F 1 "GNDPWR" H 3554 4946 50  0000 C CNN
F 2 "" H 3550 5050 50  0001 C CNN
F 3 "" H 3550 5050 50  0001 C CNN
	1    3550 5100
	1    0    0    -1  
$EndComp
Text GLabel 3550 1850 0    50   Input ~ 0
Vcc
Text GLabel 2550 5100 3    50   Input ~ 0
Gnd
Text GLabel 4150 3100 2    50   Input ~ 0
D0
Text GLabel 4150 3000 2    50   Input ~ 0
D1
Text GLabel 4150 3500 2    50   Input ~ 0
RRST
Text GLabel 4150 3400 2    50   Input ~ 0
WRST
Text GLabel 4150 2800 2    50   Input ~ 0
RCK
Text GLabel 4250 2400 1    50   Input ~ 0
WR
Text GLabel 4150 3200 2    50   Input ~ 0
D2
Text GLabel 4150 4300 2    50   Input ~ 0
D3
Text GLabel 4150 4200 2    50   Input ~ 0
D4
Text GLabel 4150 4100 2    50   Input ~ 0
D5
Text GLabel 4150 4700 2    50   Input ~ 0
D6
Text GLabel 4150 4600 2    50   Input ~ 0
D7
Text GLabel 4150 4400 2    50   Input ~ 0
VSYNC
Text GLabel 4150 3900 2    50   Input ~ 0
SIOC
Text GLabel 4150 3800 2    50   Input ~ 0
SIOD
NoConn ~ 4150 3300
NoConn ~ 7150 4000
$Comp
L Connector:Conn_01x01_Male Vcc1
U 1 1 5F759739
P 5500 4200
F 0 "Vcc1" H 5472 4132 50  0000 R CNN
F 1 "Con" H 5472 4223 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5500 4200 50  0001 C CNN
F 3 "~" H 5500 4200 50  0001 C CNN
	1    5500 4200
	-1   0    0    1   
$EndComp
Text GLabel 5300 4200 0    50   Input ~ 0
Vcc
$Comp
L Connector:Conn_01x01_Male SIOD1
U 1 1 5F75A8FC
P 5500 4450
F 0 "SIOD1" H 5472 4382 50  0000 R CNN
F 1 "Con" H 5472 4473 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5500 4450 50  0001 C CNN
F 3 "~" H 5500 4450 50  0001 C CNN
	1    5500 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male SIOC1
U 1 1 5F75A902
P 5500 4650
F 0 "SIOC1" H 5472 4582 50  0000 R CNN
F 1 "Con" H 5472 4673 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5500 4650 50  0001 C CNN
F 3 "~" H 5500 4650 50  0001 C CNN
	1    5500 4650
	-1   0    0    1   
$EndComp
Text GLabel 5300 4450 0    50   Input ~ 0
SIOD
Text GLabel 5300 4650 0    50   Input ~ 0
SIOC
$Comp
L Connector:Conn_01x04_Female DHT11
U 1 1 5F74A343
P 7350 4000
F 0 "DHT11" H 7200 3700 50  0000 L CNN
F 1 "Con" H 7250 3600 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 7350 4000 50  0001 C CNN
F 3 "~" H 7350 4000 50  0001 C CNN
	1    7350 4000
	1    0    0    1   
$EndComp
NoConn ~ 4150 2900
Text GLabel 4150 2600 2    50   Input ~ 0
CS
Text GLabel 4150 3600 2    50   Input ~ 0
SCK
Text GLabel 4150 3700 2    50   Input ~ 0
MISO
Text GLabel 4150 4000 2    50   Input ~ 0
MOSI
Text GLabel 7000 2050 0    50   Input ~ 0
CS
Text GLabel 7000 2150 0    50   Input ~ 0
SCK
Text GLabel 7000 2250 0    50   Input ~ 0
MISO
Text GLabel 7000 2350 0    50   Input ~ 0
MOSI
Text GLabel 4150 2500 2    50   Input ~ 0
TX
Text GLabel 4150 2700 2    50   Input ~ 0
RX
Text GLabel 6100 2150 0    50   Input ~ 0
TX
Text GLabel 6100 2250 0    50   Input ~ 0
RX
Text GLabel 7150 3800 0    50   Input ~ 0
Vcc
Text GLabel 7150 4100 0    50   Input ~ 0
Gnd
Wire Wire Line
	3550 5100 4900 5100
Text GLabel 7150 3900 0    50   Input ~ 0
33
Text GLabel 4150 4500 2    50   Input ~ 0
33
Text GLabel 5400 2250 0    50   Input ~ 0
SIOD
Text GLabel 5400 2050 0    50   Input ~ 0
Vcc
Text GLabel 5400 2150 0    50   Input ~ 0
Gnd
Text GLabel 5400 2350 0    50   Input ~ 0
SIOC
Wire Wire Line
	4900 2400 4900 5100
Connection ~ 3550 1750
$Comp
L Connector:Conn_01x03_Male D67V1
U 1 1 5F76740B
P 5650 5100
F 0 "D67V1" H 5622 5032 50  0000 R CNN
F 1 "Con" H 5622 5123 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5650 5100 50  0001 C CNN
F 3 "~" H 5650 5100 50  0001 C CNN
	1    5650 5100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x05_Male D12345
U 1 1 5F768256
P 7150 4950
F 0 "D12345" H 7122 4882 50  0000 R CNN
F 1 "Con" H 7122 4973 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7150 4950 50  0001 C CNN
F 3 "~" H 7150 4950 50  0001 C CNN
	1    7150 4950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male Gnd-D0
U 1 1 5F7699AA
P 7150 5550
F 0 "Gnd-D0" H 7122 5432 50  0000 R CNN
F 1 "Con" H 7122 5523 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7150 5550 50  0001 C CNN
F 3 "~" H 7150 5550 50  0001 C CNN
	1    7150 5550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male RWRW1
U 1 1 5F76A443
P 5650 5550
F 0 "RWRW1" H 5622 5432 50  0000 R CNN
F 1 "Con" H 5622 5523 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5650 5550 50  0001 C CNN
F 3 "~" H 5650 5550 50  0001 C CNN
	1    5650 5550
	-1   0    0    1   
$EndComp
Text GLabel 6950 5550 0    50   Input ~ 0
Gnd
Text GLabel 6950 5450 0    50   Input ~ 0
D0
Text GLabel 5450 5000 0    50   Input ~ 0
D7
Text GLabel 5450 5100 0    50   Input ~ 0
D6
Text GLabel 5450 5200 0    50   Input ~ 0
VSYNC
Text GLabel 6950 4750 0    50   Input ~ 0
D5
Text GLabel 6950 4850 0    50   Input ~ 0
D4
Text GLabel 6950 4950 0    50   Input ~ 0
D3
Text GLabel 6950 5050 0    50   Input ~ 0
D2
Text GLabel 6950 5150 0    50   Input ~ 0
D1
Text GLabel 5450 5350 0    50   Input ~ 0
RRST
Text GLabel 5450 5450 0    50   Input ~ 0
WRST
Text GLabel 5450 5550 0    50   Input ~ 0
RCK
Text GLabel 5450 5650 0    50   Input ~ 0
WR
$EndSCHEMATC
