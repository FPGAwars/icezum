//----------------------------------------------------------------------------
//-- echo.v: Uart-rx example 2
//-- All the received characters are echoed
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
`default_nettype none

`include "baudgen.vh"

//-- Top design
module echo #(
         parameter BAUDRATE = `B115200
)(
         input wire clk,         //-- System clock
         input wire rx,          //-- Serial input
         output wire tx,          //-- Serial output
         output wire [7:0] ledb
);

//-- Received character signal
wire rcv;

//-- Received data
wire [7:0] data;

//-- Reset signal
reg rstn = 0;

//-- Transmitter ready signal
wire ready;

//-- Initialization
always @(posedge clk)
  rstn <= 1;

assign ledb = data;

//-- Receiver unit instantation
uart_rx #(.BAUDRATE(BAUDRATE))
  RX0 (.clk(clk),
       .rstn(rstn),
       .rx(rx),
       .rcv(rcv),
       .data(data)
      );

//-- Transmitter unit instantation
uart_tx #(.BAUDRATE(BAUDRATE))
  TX0 ( .clk(clk),
         .start(rcv),
         .data(data),
         .tx(tx),
         .ready(ready)
       );


endmodule
