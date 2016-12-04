//----------------------------------------------------------------------------
//-- Asynchronous serial receiver Unit
//------------------------------------------
//-- (C) BQ. December 2015. Written by Juan Gonzalez (Obijuan)
//-- GPL license
//----------------------------------------------------------------------------
//-- Tested at the standard baudrates:
//-- 300, 600, 1200, 4800, 9600, 19200, 38400, 115200
//----------------------------------------------------------------------------
//-- Although this transmitter has been written from the scratch, it has been
//-- inspired by the one developed in the swapforth proyect by James Bowman
//--
//-- https://github.com/jamesbowman/swapforth
//--
//----------------------------------------------------------------------------
`default_nettype none

`include "baudgen.vh"

//-- Serial receiver unit module
module uart_rx #(
         parameter BAUDRATE = `B115200   //-- Default baudrate
)(
         input wire clk,         //-- System clock (12MHz in the ICEstick)
         input wire rstn,        //-- Reset (Active low)
         input wire rx,          //-- Serial data input
         output reg rcv,         //-- Data is available (1)
         output reg [7:0] data   //-- Data received
);

//-- Transmission clock
wire clk_baud;

//-- Control signals
reg bauden;  //-- Enable the baud generator
reg clear;   //-- Clear the bit counter
reg load;    //-- Load the received character into the data register


//-------------------------------------------------------------------
//--     DATAPATH
//-------------------------------------------------------------------

//-- The serial input is registered in order to follow the
//-- synchronous design rules
reg rx_r;

always @(posedge clk)
  rx_r <= rx;

//-- Baud generator
baudgen_rx #(BAUDRATE)
  baudgen0 (
    .rstn(rstn),
    .clk(clk),
    .clk_ena(bauden),
    .clk_out(clk_baud)
  );

//-- Bit counter
reg [3:0] bitc;

always @(posedge clk)
  if (clear)
    bitc <= 4'd0;
  else if (clear == 0 && clk_baud == 1)
    bitc <= bitc + 1;


//-- Shift register for storing the received bits
reg [9:0] raw_data;

always @(posedge clk)
  if (clk_baud == 1)
    raw_data <= {rx_r, raw_data[9:1]};

//-- Data register. Store the character received
always @(posedge clk)
  if (rstn == 0)
    data <= 0;
  else if (load)
    data <= raw_data[8:1];

//-------------------------------------------
//-- CONTROLLER  (Finite state machine)
//-------------------------------------------

//-- Receiver states
localparam IDLE = 2'd0;  //-- IDLEde reposo
localparam RECV = 2'd1;  //-- Receiving data
localparam LOAD = 2'd2;  //-- Storing the character received
localparam DAV = 2'd3;   //-- Data is available

//-- fsm states
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
  bauden = 0;
  clear = 0;
  load = 0;

  case(state)

    //-- Idle state
    //-- Remain in this state until a start bit is received in rx_r
    IDLE: begin
      clear = 1;
      rcv = 0;
      if (rx_r == 0)
        next_state = RECV;
    end

    //-- Receiving state
    //-- Turn on the baud generator and wait for the serial package to be received
    RECV: begin
      bauden = 1;
      rcv = 0;
      if (bitc == 4'd10)
        next_state = LOAD;
    end

    //-- Store the received character in the data register (1 cycle)
    LOAD: begin
      load = 1;
      rcv = 0;
      next_state = DAV;
    end

    //-- Data Available (1 cycle)
    DAV: begin
      rcv = 1;
      next_state = IDLE;
    end

    default:
      rcv = 0;

  endcase

end

endmodule
