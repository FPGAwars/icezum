//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icezum
//------------------------------------------------------------------
`default_nettype none

//-- Template for the top entity
module top(input wire CLK,
           output wire LED0, LED1, LED2, LED3,
                       LED4, LED5, LED6, LED7);

wire [7:0] ledb;

pwm_led CTO1 (
    .clk(CLK),
    .ledb(ledb)
  );

assign {LED7, LED6, LED5, LED4, LED3, LED2, LED1, LED0} = ledb;

//wire a;

//prescaler pres (.clk_in(CLK), .clk_out(a));


//assign LED7 = a;

endmodule
