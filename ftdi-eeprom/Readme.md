## FTDI eeprom memory

The **FTDI chip** included in the Icezum Alhambra board has an internal **256 bytes eeprom memory** that is flashed in the factory. It can be flashed using the ftdi-eeprom **open source tool**. This tool can be compiled to any platform following the instruction of the [tool-systems apio package](https://github.com/FPGAwars/tools-system)

### Flashing the eeprom

**NOTE**: Do not play with the FTDI eeprom memory unless you know what you are doing. If you change the product id string, Icestudio will not recognized it as an FPGA board and will not upload the bitstreams

* **Step 1**: Build the eeprom image from the config file

  * Edit the Alhambra1.conf file
  * Make your changes
  * Build the new eeprom image using the command:

```
$ ftdi-eeprom --build-eeprom Alhambra1.conf

FTDI eeprom generator v0.17
(c) Intra2net AG and the libftdi developers <opensource@intra2net.com>
FTDI read eeprom: 0
EEPROM size: 256
Used eeprom space: 254 bytes
Writing to file: A1-eeprom-image.bin
FTDI close: 0
```
The file A1-eeprom-image.bin will be generated

* **Step 2**: Flash the eeprom image

```
ftdi-eeprom --flash-eeprom Alhambra1.conf

FTDI eeprom generator v0.17
(c) Intra2net AG and the libftdi developers <opensource@intra2net.com>
FTDI read eeprom: 0
EEPROM size: 256
Used eeprom space: 254 bytes
FTDI write eeprom: 0
Writing to file: A1-eeprom-image.bin
FTDI close: 0
```

* **Step 3**: Testing the changes

If you have changed the manufacturer or product ids, you can check the changes using apio:

```
$ apio system --lsftdi
Number of FTDI devices found: 1
Checking device: 0
Manufacturer: CHANGED, Description: IceZUM Alhambra v1.1 - B02-059
```
