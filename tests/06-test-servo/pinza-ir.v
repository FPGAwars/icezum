`default_nettype none
`include "divider.vh"

module pos1(input wire clk,
            input wire open,
            output wire servo1);

localparam SERVO_T = `T_20ms;

wire timer_ena = 1'b1;
wire [17:0] pos;

wire not_open = ~open;

assign pos = (not_open == 1) ? `POS_OPEN : `POS_CLOSE;

dividerp1 #(SERVO_T)
  TIMER0 (
    .clk(clk),
    .clk_out(servo1),
    .pos(pos),
    .timer_ena(timer_ena)
  );


wire din, dout, outen;

endmodule
