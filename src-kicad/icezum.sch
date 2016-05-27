EESchema Schematic File Version 2
LIBS:icezum
LIBS:power
LIBS:[4]_Power_Supply-cache
LIBS:[4]_Power_Supply-rescue
LIBS:[3]_Connectors_&_IO-cache
LIBS:[2]_USB_Interface-cache
LIBS:icezum-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "IceZUM Alhambra FPGA board"
Date "2016-05-23"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7000 3200 1150 1600
U 5742A672
F0 "FPGA" 60
F1 "fpga.sch" 60
$EndSheet
Text Notes 7300 3850 0    60   ~ 0
iCE40HX1K
Text Notes 7450 3650 0    60   ~ 12
FPGA
$Sheet
S 6500 1440 1160 690 
U 57455C58
F0 "Arduino sockets" 60
F1 "arduino-sockets.sch" 60
$EndSheet
$Sheet
S 4100 5450 1900 1150
U 574540C9
F0 "Power Supply" 60
F1 "Power-supply.sch" 60
$EndSheet
$Sheet
S 1550 1350 1250 750 
U 57489FE9
F0 "Peripherals" 60
F1 "peripherals.sch" 60
$EndSheet
$Comp
L icezum-headers-doc DOC2
U 1 1 5748A57D
P 4350 3800
F 0 "DOC2" H 4440 4950 39  0001 C CNN
F 1 "icezum-headers-doc" H 5370 4950 39  0001 C CNN
F 2 "" H 3710 4750 39  0000 C CNN
F 3 "" H 3710 4750 39  0000 C CNN
	1    4350 3800
	1    0    0    -1  
$EndComp
$Sheet
S 1350 4000 1700 1300
U 574C0DEC
F0 "USB communications" 47
F1 "usb-communications.sch" 47
$EndSheet
$EndSCHEMATC
