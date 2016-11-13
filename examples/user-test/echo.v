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

//-- Transmitter ready signal
wire ready;

assign tx = rx;

assign ledb = data;

//-- Receiver unit instantation
uart_rx #(.BAUDRATE(BAUDRATE))
  RX0 (.clk(clk),
       .rx(rx),
       .rcv(rcv),
       .data(data)
      );

endmodule
