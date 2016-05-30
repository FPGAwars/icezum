# Icezum Alhambra
Arduino/zum compatible **Open FPGA** electronic board.  Synthesize hardware easily, using **only open source tools**

![](https://github.com/FPGAwars/icezum/raw/master/doc/IceZUM-rev1-1607-img4.jpg)

## Features

* FPGA development board ([iCE40HX1K-TQ144](https://github.com/Obijuan/open-fpga-verilog-tutorial/raw/master/tutorial/doc/iCE40LPHXFamilyDataSheet.pdf) from lattice)
* Open hardware
* Compatible with the [opensource icestorm toolchain](http://www.clifford.at/icestorm/)
* Arduino like board: similar pinout than Arduino one / [BQ zum](https://store.bq.com/es/placa-zum-core).
* You can Reuse most of available shields
* Control your robots / printbots from an FPGA
* 12 MHZ MEMS oscillator
* ON/OFF switch (turn off your mobile robot easily)
* Input power voltage: 6 - 17v
* Max input current: 3A (Perfect for powering your robots)
* 20 Input/output 5v pins
* 8 Input/Output 3.3V pins
* USB micro-B connector for programming the FPGA from the PC (same than zum board)
* FTDI 2232H USB device allows FPGA programming and UART interface to a PC
* Reset pushbutton
* 8 general purpose leds (user leds)
* 2 general purpose pushbuttons
* 4 analogue inputs though I2C bus

## Documentation

[The project documentation is located in the wiki](https://github.com/FPGAwars/icezum/wiki)

## Author

* Eladio Delgado Mingorance

## Credits

* María Delgado Mingorance
* Juan González
* Design derived from the [zum core board](https://github.com/bq/zum/tree/master/zum-core) by BQ
* Design derived from the [Icestick](http://www.latticesemi.com/icestick) by Lattice
* [Icestorm project](http://www.clifford.at/icestorm/), by Clifford Wolf and Mathias Lasser
* Icezum Pinout, by [Alberto Piganti](http://www.pighixxx.com/test/2016/05/icezum-pinout/)
* BQ. Thanks for funding this project from 2015-12-20 to 2016-04-14
* [Jairo Zerberos](https://github.com/zerberros). Migration of the FT2232H schematic symbol from altium to kicad. Thanks!
* [altium2kicad](https://github.com/thesourcerer8/altium2kicad]). Tool used for the migration from Altium to Kicad. Many thanks to the developers!

## License

![](https://github.com/FPGAwars/icezum/raw/master/doc/images/attribution-share-alike-creative-commons-license.png)

Licensed under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)
