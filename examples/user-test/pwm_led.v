//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icezum
//------------------------------------------------------------------
`default_nettype none

//-- Pwm circuit for the leds
//-- Just fade in and fade out the leds
module pwm_led(input wire clk, output wire [7:0] ledb);

//-- clk_1ms is 2**14 / 12000 ms = 1.37ms (not exactly 1ms)
wire clk_1ms;
wire clk_1s;

prescaler
       #(.N(18))
       T1S (
         .clk_in(clk),
         .ena(1'b1),
         .clk_out(clk_1s)
         );


prescaler
       #(.N(6))
       T1MS (
         .clk_in(clk),
         .ena(1'b1),
         .clk_out(clk_1ms)
         );

//-- 4 bits Counter.
reg [7:0] cont = 0;
always @ (posedge clk_1ms) begin
  cont <= cont + 1;
end

//-- This register stores the pulse width (16 leves) in units of 1.37ms
wire [7:0] pulse_width;
reg [8:0] pulse_width_ud = 0;

always @ ( posedge clk_1s ) begin
  pulse_width_ud <= pulse_width_ud + 9'b0_0000_1000;
end

wire a = pulse_width_ud[8];

assign pulse_width = pulse_width_ud[7:0] ^ {a,a,a,a,a,a,a,a};

//-- Comparator for generating the high and low states of the PWM signal
wire pwm;
assign pwm = (cont >= pulse_width) ? 0 : 1;

//-- The same pwm signal for all the leds
assign ledb[7:0] =  { 8{pwm} };

endmodule
