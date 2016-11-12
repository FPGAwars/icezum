//-----------------------------------------------------------------------------------------
//-- txstr: Uart_tx example 2
//-- Transmission of string
//-- The reset signal is connected to the dtr signal (in file txstr.pcf)
//-- Fot this example to work is necessary to open a serial terminal (gtkterm for example)
//-- and deactivate DTR. Every time a reset is done, a string appears on the terminal
//-- Fixed BAUDRATE: 115200
//-----------------------------------------------------------------------------
`default_nettype none
`include "baudgen.vh"

//-- Top entity
module txstr #(
          parameter BAUDRATE = `B115200
)(
          input wire clk,   //-- System clock
          input wire go,    //-- When to transmit the string (pulse)
          output wire tx    //-- Serial data output
);


//-- Serial Unit instantation
uart_tx #(
    .BAUDRATE(BAUDRATE)  //-- Set the baudrate

  ) TX0 (
    .clk(clk),
    .data(data),
    .start(start),
    .tx(tx),
    .ready(ready)
);

//-- Connecting wires
wire ready;
reg start = 0;
reg [7:0] data = 0;

//-- Multiplexer with the 8-character string to transmit
always @*
  case (char_count)
    8'd0: data <= "H";
    8'd1: data <= "e";
    8'd2: data <= "l";
    8'd3: data <= "l";
    8'd4: data <= "o";
    8'd5: data <= "!";
    8'd6: data <= ".";
    8'd7: data <= ".";
    default: data <= ".";
  endcase

//-- Characters counter
//-- It only counts when the cena control signal is enabled
reg [2:0] char_count = 0;
reg cena = 0;                //-- Counter enable

always @(posedge clk)
  if (cena)
    char_count = char_count + 1;


//--------------------- CONTROLLER

localparam INI = 0;
localparam TXCAR = 1;
localparam NEXTCAR = 2;
localparam WAIT = 3;

//-- fsm state
reg [1:0] state = INI;
reg [1:0] next_state;

//-- Transition between states
always @(posedge clk) begin
    state <= next_state;
end

//-- Control signal generation and next states
always @(*) begin
  next_state = state;
  start = 0;
  cena = 0;

  case (state)
    //-- Initial state. Start the trasmission
    INI: begin
      start = 1;
      next_state = TXCAR;
    end

    //-- Wait until one car is transmitted
    TXCAR: begin
      if (ready)
        next_state = NEXTCAR;
    end

    //-- Increment the character counter
    //-- Finish when it is the last character
    NEXTCAR: begin
      cena = 1;
      if (char_count == 7)
        next_state = WAIT;
      else
        next_state = INI;
    end

    WAIT: begin
      if (go)
        next_state = INI;
    end

    default: begin
    end

  endcase
end


endmodule
