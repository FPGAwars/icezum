# Icezum Alhambra
Arduino/zum compatible **Open FPGA** electronic board.  Synthesize hardware easily, using **only open source tools**

![](https://github.com/FPGAwars/icezum/raw/master/doc/images/icezum-rev1-1607-img4.png)

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

## History
### V1.0
* **2015-12-20**: The icezum board was conceived in the BQlabs, the robotics and innovation department at BQ. The idea was to have a very easy to use FPGA board, similar to Arduino/ ZUM boards, so that anyone can connect sensors and create robots or small projects using an FPGA instead of a processor. We wanted to extend the educational approach of BQ to the digital circuits design. At that time, Juan Gonzalez (Obijuan) was the head of that department. Eladio Delgado, an external autonomous engineer was assigned the task of designing the board
*  **2016-02-29**: The board was renamed to "Icezum Alhambra" because Eladio lives in a small town in Granada. The name was suggested by **Sebastián Gallardo** in [this post in the FPGAwars community](https://groups.google.com/d/msg/fpga-wars-explorando-el-lado-libre/f1W0Vtt5NdE/LEDRSXudGwAJ) (In Spanish)

### V1.0K
* **V1.0K**: Icezum Ahambra migrated to Kicad by Juan González (Obijuan). 3D models designed with FreeCAD. Now the board is not only openhardware but also designed only using libre-tools, so that anyone can easily study it, modify and

## Authors

* **V1.0**: Eladio Delgado Mingorance. Sponsored by [BQ](https://www.bq.com/es/)
* **V1.0K**: Migrated to Kicad by Juan González (Obijuan). 3D models designed with FreeCAD

## Credits
* [BQ](https://www.bq.com/es/). Thanks for funding this project from 2015-12-20 to 2016-04-14. During this period, the icezum V1.0 was born and 10 prototypes were manufactured.
* María Delgado Mingorance, for helping in the manufacturing and design of the V1.0
* V1.0 was derived from the [zum core board](https://github.com/bq/zum/tree/master/zum-core) by BQ
* V1.0 was derived from the [Icestick](http://www.latticesemi.com/icestick) by Lattice
* [Icestorm project](http://www.clifford.at/icestorm/), by Clifford Wolf and Mathias Lasser
* Icezum Pinout, by [Alberto Piganti](http://www.pighixxx.com/test/2016/05/icezum-pinout/)
* [Jairo Zerberos](https://github.com/zerberros). Migration of the FT2232H schematic symbol from altium to kicad. Thanks!
* [altium2kicad](https://github.com/thesourcerer8/altium2kicad]). Tool used for the migration from Altium to Kicad. Many thanks to the developers!
* Juan González (Obijuan): V1.0 specifications. Migration to Kicad (V1.0K)

## Acknowledges
* Many thanks to [BQ](https://www.bq.com/es/), for funding the initial prototype V1.0, during the period 2015-12-20 to 2016-04-14. Thanks a lot for increasing our technological heritage by sponsoring openhardware boards.

![](https://github.com/FPGAwars/icezum/raw/master/doc/images/bq-logo.png)

## License

![](https://github.com/FPGAwars/icezum/raw/master/doc/images/attribution-share-alike-creative-commons-license.png)

Licensed under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)
