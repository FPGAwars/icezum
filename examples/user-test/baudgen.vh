//-----------------------------------------------------------------------------
//-- Constants for the serial asinchronous communication modules
//------------------------------------------------------------------------------
//-- (C) BQ. December 2015. Written by Juan Gonzalez (Obijuan)
//------------------------------------------------------------------------------
// These constans have been calculated for the ICESTICK board which have
// a 12MHz clock
//
//-- The calculation for the icestick board is:
//-- Divisor = 12000000 / BAUDRATE  (and the result is rounded to an integer number)
//--------------------------------------------------------------------------------
//-- The python3 script: baudgen.py contains the function for generating this table
//-----------------------------------------------------------------------------------

//-- Constants for obtaining standard BAURATES:
`define B115200 104
`define B57600  208
`define B38400  313

`define B19200  625
`define B9600   1250
`define B4800   2500
`define B2400   5000
`define B1200   10000
`define B600    20000
`define B300    40000
