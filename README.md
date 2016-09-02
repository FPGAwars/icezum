# Icezum Alhambra
Arduino/zum compatible **Open FPGA** electronic board.  Synthesize hardware easily, using **only open source tools**

![](https://github.com/FPGAwars/icezum/raw/master/wiki/icezum-rev1-1607-img4.png)

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

### Icezum Alhambra releases and EDA tools used over time

![](https://github.com/FPGAwars/icezum/raw/master/wiki/Icezum-alhambra-releases-tools-diagram.png)

### V1.0
* **2015-12-20**: The icezum board was conceived in the **BQlabs**, the robotics and innovation department at [BQ](https://www.bq.com/es/). The idea was to have a very easy to use FPGA board, fully openhardware, similar to Arduino/ZUM boards, so that anyone can connect sensors and create robots or small projects using an FPGA instead of a processor. We wanted to extend the educational approach of BQ to the digital circuits design. At that time, Juan Gonzalez (Obijuan) was the head of the department. Eladio Delgado, a very-skilled senior external engineer was assigned the task of designing the board. He was already involve in other projects with BQ

* **2016-02-18**: [The icezum board bqlabs repo](https://github.com/bqlabs/icezum) at github is created and all the V1.0 files released

*  **2016-02-29**: The board was renamed to **Icezum Alhambra** because Eladio lives in a small town in Granada. The name was suggested by **Sebastián Gallardo** in [this post in the FPGAwars community](https://groups.google.com/d/msg/fpga-wars-explorando-el-lado-libre/f1W0Vtt5NdE/LEDRSXudGwAJ) (In Spanish)

* **2016-03-05**: The first prototype is built and a bitstream is successfully upload into the board! [Images](https://github.com/FPGAwars/icezum/raw/master/doc/2016-03-04-Mounting-first-prototype/icezum-alhambra-mounting-15.jpg) 10 PCBs were manufactured in total. 5 Prototypes were mounted (by hand) by Eladio and his sister María. 5 more were mounted one mounth later

* **2016-04-14**: BQlabs was disolved and this proyect was stopped. Many thanks to BQ  for all its help during this period. Thanks for sponsoring the Icezum board


### V1.0K
* **2016-04-20**: The project is continued by the FPGAwars community, lead by Obijuan. The [FPGAwars github organization](https://github.com/FPGAwars)) is created and all the repositories related to openfpgas are moved there

* **2016-05-01**: A Small local crowdfunding is organized in the FPGAwars community ([Original message, in spanish](https://groups.google.com/d/msg/fpga-wars-explorando-el-lado-libre/oLFzYPqCOcQ/OsMxYKnuAQAJ)). Only 100 V1.1 boards will be manufactured if an amount of 6500€ is raised

* **2016/05/18**: After two weeks, we already have the commitment of the people for paying the money for building the boards ([Board funded!](https://groups.google.com/d/msg/fpga-wars-explorando-el-lado-libre/oLFzYPqCOcQ/luBcnXpBBwAJ))

* **2016/05/30**: The icesum Alhambra is being migrated to Kicad by Juan Gonzalez (Obijuan). Also the 3D models are going to be designed with FreeCAD, so that the Icezum Alhambra will not only be an openhardware board, but also a board designed with opensource tools. This way, anyone in the world can easily have access to all the designs, to study them, modify them and creating new boards from them. This version will be called V1.0K (K stands for kicad). It is not going to be manufactured, but rather a starting point for the future versions

* **2016/07/03**: All the money (6500€ in total) is received from the backers! Thanks a lot!!! ([Backers list](https://docs.google.com/spreadsheets/d/1yngU6kfMr5JWJYXrxBMJ7l1Cai2iuucMDoND4NpgU5Y))

* **2016/07/28**: V1.0K is released!

### V1.1

 * **2016/04/20**: In paralell with the V1.0K version, Eladio started to work on the V1.1, which is the one that will be manufactured for the backers. As there were still no Kicad version when Eladio started, It is being designed in Altium and will be migrated later to Kicad as the V1.1K version
 
 TODO
 
### V1.1K
 
 TODO

## Authors

* **V1.0**: Eladio Delgado Mingorance. Sponsored by [BQ](https://www.bq.com/es/)
* **V1.0K**: Migrated to Kicad by Juan González (Obijuan). 3D models designed with FreeCAD. Everything is generated using only opensource tools (schematics, pcb, 3D models, pinout, BOM...). This version belongs to our T**echnological Heritage**

## Credits
* [BQ](https://www.bq.com/es/). Thanks for funding this project from 2015-12-20 to 2016-04-14. During this period, the icezum V1.0 was born and 10 prototypes were manufactured.
* María Delgado Mingorance, for helping in the manufacturing and design of the V1.0
* V1.0 was derived from the [Arduino Uno board](https://www.arduino.cc/en/Main/ArduinoBoardUno)
* V1.0 was derived from the [zum core board](https://github.com/bq/zum/tree/master/zum-core) by BQ
* V1.0 was derived from the [Icestick](http://www.latticesemi.com/icestick) by Lattice
* [Icestorm project](http://www.clifford.at/icestorm/), by Clifford Wolf and Mathias Lasser
* Icezum Pinout, by [Alberto Piganti](http://www.pighixxx.com/test/2016/05/icezum-pinout/)
* [Jairo Zerberos](https://github.com/zerberros). Migration of the FT2232H schematic symbol from altium to kicad. Thanks!
* [altium2kicad](https://github.com/thesourcerer8/altium2kicad]). Tool used for the migration from Altium to Kicad. Many thanks to the developers!
* [Kicadstepup](https://sourceforge.net/projects/kicadstepup/). Tool for exporting the board to FreeCAD
* [Alhambra festival picture](http://beentheredrawnthat.blogspot.com.es/2016/07/festivales-de-musica-y-danza-alhambra.html), by Cristina Urdiales. Thanks for this beautiful paiting!
* Juan González (Obijuan): V1.0 specifications. Migration to Kicad (V1.0K)

## Acknowledges
* Many thanks to [BQ](https://www.bq.com/es/), for funding the initial prototype V1.0, during the period 2015-12-20 to 2016-04-14. Thanks a lot for increasing our technological heritage by sponsoring openhardware boards.

![](https://github.com/FPGAwars/icezum/raw/master/wiki/bq-logo.png)

## License

![](https://github.com/FPGAwars/icezum/raw/master/wiki/attribution-share-alike-creative-commons-license.png)

Licensed under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)
