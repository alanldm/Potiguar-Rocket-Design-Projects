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
Text GLabel 5400 2250 0    50   Input ~ 0
SIOD
Text GLabel 5400 2050 0    50   Input ~ 0
Vcc
Text GLabel 5400 2150 0    50   Input ~ 0
Gnd
Text GLabel 5400 2350 0    50   Input ~ 0
SIOC
Text GLabel 3550 2600 0    50   Input ~ 0
Vcc
Text GLabel 3550 2700 0    50   Input ~ 0
Gnd
Text GLabel 3550 3100 0    50   Input ~ 0
Vcc
Text GLabel 3550 3200 0    50   Input ~ 0
Gnd
Text GLabel 3550 3300 0    50   Input ~ 0
SIOC
Text GLabel 3550 2800 0    50   Input ~ 0
SIOC
Text GLabel 3550 2900 0    50   Input ~ 0
SIOD
Text GLabel 3550 3400 0    50   Input ~ 0
SIOD
NoConn ~ 6100 2150
NoConn ~ 6100 2250
NoConn ~ 7000 2050
NoConn ~ 7000 2150
NoConn ~ 7000 2250
NoConn ~ 7000 2350
$Comp
L Connector:Conn_01x04_Female MPU6050
U 1 1 5F7D6FE2
P 3750 2700
F 0 "MPU6050" H 3500 3050 50  0000 L CNN
F 1 "Con" H 3550 2950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3750 2700 50  0001 C CNN
F 3 "~" H 3750 2700 50  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female BMP280
U 1 1 5F7D95A3
P 3750 3300
F 0 "BMP280" H 3550 3000 50  0000 L CNN
F 1 "Con" H 3600 2900 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3750 3300 50  0001 C CNN
F 3 "~" H 3750 3300 50  0001 C CNN
	1    3750 3300
	1    0    0    1   
$EndComp
$EndSCHEMATC
