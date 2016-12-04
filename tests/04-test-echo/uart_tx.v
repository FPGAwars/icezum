//----------------------------------------------------------------------------
//-- Asynchronous serial transmitter Unit
//------------------------------------------
//-- (C) BQ. December 2015. Written by Juan Gonzalez (Obijuan)
//-- GPL license
//----------------------------------------------------------------------------
//-- Tested at all the standard baudrates:
//-- 300, 600, 1200, 2400, 4800, 9600, 19200, 38400, 57600, 115200
//----------------------------------------------------------------------------
//-- Although this transmitter has been written from the scratch, it has been
//-- inspired by the one developed in the swapforth proyect by James Bowman
//--
//-- https://github.com/jamesbowman/swapforth
//--
//----------------------------------------------------------------------------
`default_nettype none

`include "baudgen.vh"

//--- Serial transmitter unit module
//--- TX output is not registered
module uart_tx #(
         parameter BAUDRATE = `B115200  //-- Default baudrate
)(
         input wire clk,        //-- System clcok (12MHz in the ICEstick)
         input wire rstn,       //-- Reset  (Active low)
         input wire start,      //-- Set to 1 for starting the transmission
         input wire [7:0] data, //-- Byte to transmit
         output reg tx,         //-- Serial data output
         output reg ready      //-- Transmitter ready (1) / busy (0)
);


//-- Transmission clock
wire clk_baud;

//-- Bitcounter
reg [3:0] bitc;

//-- Registered data
reg [7:0] data_r;

//--------- control signals
reg load;    //-- Load the shifter register / reset
reg baud_en; //-- Enable the baud generator

//-------------------------------------
//-- DATAPATH
//-------------------------------------

//-- Register the input data
always @(posedge clk)
  if (start == 1 && state == IDLE)
    data_r <= data;

//-- 1 bit start + 8 bits datos + 1 bit stop
//-- Shifter register. It stored the frame to transmit:
//-- 1 start bit + 8 data bits + 1 stop bit
reg [9:0] shifter;

//-- When the control signal load is 1, the frame is loaded
//-- when load = 0, the frame is shifted right to send 1 bit,
//--   at the baudrate determined by clk_baud
//--  1s are introduced by the left
always @(posedge clk)
  //-- Reset
  if (rstn == 0)
    shifter <= 10'b11_1111_1111;

  //-- Load mode
  else if (load == 1)
    shifter <= {data_r,2'b01};

  //-- Shift mode
  else if (load == 0 && clk_baud == 1)
    shifter <= {1'b1, shifter[9:1]};

//-- Sent bit counter
//-- When load (=1) the counter is reset
//-- When load = 0, the sent bits are counted (with the raising edge of clk_baud)
always @(posedge clk)
  if (!rstn)
    bitc <= 0;

  else if (load == 1)
    bitc <= 0;
  else if (load == 0 && clk_baud == 1)
    bitc <= bitc + 1;

//-- The less significant bit is transmited through tx
//-- It is a registed output, because tx is connected to an Asynchronous bus
//--  and the glitches should be avoided
always @(posedge clk)
  tx <= shifter[0];

//-- Baud generator
baudgen_tx #( .BAUDRATE(BAUDRATE))
BAUD0 (
    .rstn(rstn),
    .clk(clk),
    .clk_ena(baud_en),
    .clk_out(clk_baud)
  );

//------------------------------
//-- CONTROLLER
//------------------------------

//-- fsm states
localparam IDLE  = 0;  //-- Idle state
localparam START = 1;  //-- Start transmission
localparam TRANS = 2;  //-- Transmitting data

//-- Registers for storing the states
reg [1:0] state;
reg [1:0] next_state;

//-- Transition between states
always @(posedge clk)
  if (!rstn)
    state <= IDLE;
  else
    state <= next_state;

//-- Control signal generation and next states
always @(*) begin

  //-- Default values
  next_state = state;      //-- Stay in the same state by default
  load = 0;
  baud_en = 0;

  case (state)

    //-- Idle state
    //-- Remain in this state until start is 1
    IDLE: begin
      ready = 1;
      if (start == 1)
        next_state = START;
    end

    //-- 1 cycle long
    //-- turn on the baudrate generator and the load the shift register
    START: begin
      load = 1;
      baud_en = 1;
      ready = 0;
      next_state = TRANS;
    end

    //-- Stay here until all the bits have been sent
    TRANS: begin
      baud_en = 1;
      ready = 0;
      if (bitc == 11)
        next_state = IDLE;
    end

    default:
      ready = 0;

  endcase
end

endmodule
