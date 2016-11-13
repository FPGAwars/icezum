//-----------------------------------------------------------------------------
//-- Baudrate generator
//-- It generates a square signal, with a frequency for communicating at the
//-- given baudrate
//-- The output is set to 1 only during one clock cycle. The rest of the
// time is 0
//-- Once enabled, the pulse is generated just in the middle of the period
//-- This is necessary for the implementation of the receptor
//------------------------------------------------------------------------------
//-- (c) Juan Gonzalez (obijuan)
//-----------------------------------------------------------------------------
//-- GPL license
//-----------------------------------------------------------------------------
`include "baudgen.vh"

//------------------------------------------------------------------------------
//-- baudgen module
//--
//-- INPUTS:
//--     -clk: System clock (12 MHZ in the iceStick board)
//--     -clk_ena: clock enable:
//--            1. Normal working: The squeare signal is generated
//--            0: stoped. Output always 0
//-- OUTPUTS:
//--     - clk_out: Output signal. Pulse width: 1 clock cycle.
//--                Output not registered
//--                It tells the uart_rx when to sample the next bit
//--        __                                         __
//--   _____| |________________________________________| |_____________________
//--   |  ->  <- 1 clock cycle   |
//--          <-------  Period ------------------------>
//--
//------------------------------------------------------------------------------

module baudgen_rx #(
         parameter BAUDRATE = `B115200  //-- Default baudrate
)(
         input wire clk,          //-- System clock
         input wire clk_ena,      //-- Clock enable
         output wire clk_out      //-- Bitrate Clock output
);

//-- Number of bits needed for storing the baudrate divisor
localparam N = $clog2(BAUDRATE);

//-- Value for generating the pulse in the middle of the period
localparam M2 = (BAUDRATE >> 1);

//-- Counter for implementing the divisor (it is a BAUDRATE module counter)
//-- (when BAUDRATE is reached, it start again from 0)
reg [N-1:0] divcounter = 0;

//-- Contador módulo M
always @(posedge clk)
  if (clk_ena)
    //-- Normal working: counting. When the maximum count is reached, it starts from 0
    divcounter <= (divcounter == BAUDRATE - 1) ? 0 : divcounter + 1;
  else
    //-- Counter fixed to its maximum value
    //-- When it is resumed it start from 0
    divcounter <= BAUDRATE - 1;

//-- The output is 1 when the counter is in the middle of the period, if clk_ena is active
//-- It is 1 only for one system clock cycle
assign clk_out = (divcounter == M2) ? clk_ena : 0;


endmodule
