
module debounce_pulse(input wire clk,
                input wire sw_in,
                output wire sw_out);


//------------------------------
//-- CONTROLLER
//------------------------------

//-- fsm states
localparam IDLE  = 0;    //-- Idle state. Button not pressed
localparam WAIT_1  = 1;  //-- Waiting for the stabilization of 1. Butt pressed
localparam PULSE = 2;    //-- 1-clk pulse is generated
localparam WAIT_0 = 3;   //-- Button released. Waiting for stabilization of 0

//-- Registers for storing the states
reg [1:0] state = IDLE;
reg [1:0] next_state;

//-- Control signals
reg out = 0;
reg timer_ena = 0;

assign sw_out = out;

//-- Transition between states
always @(posedge clk)
  state <= next_state;

//-- Control signal generation and next states
always @(*) begin

  //-- Default values
  next_state = state;      //-- Stay in the same state by default
  timer_ena = 0;
  out = 0;

  case (state)

    //-- Button not pressed
    //-- Remain in this state until the botton is pressed
    IDLE: begin
      timer_ena = 0;
      out = 0;
      if (sw_in)
        next_state = WAIT_1;
    end

    //-- Wait until x ms has elapsed
    WAIT_1: begin
      timer_ena = 1;
      out = 0;
      if (timer_trig)
        next_state = PULSE;
    end

    PULSE: begin
      timer_ena = 0;
      out = 1;
      next_state = WAIT_0;
    end

    WAIT_0: begin
      timer_ena = 1;
      out = 0;
      if (timer_trig && sw_in==0)
        next_state = IDLE;
    end

    default: begin

    end
  endcase
end

assign sw_out = out;

//-- Timer

wire timer_trig;


prescaler #(
  .N(16)
) pres0 (
  .clk_in(clk),
  .ena(timer_ena),
  .clk_out(timer_trig)
);

endmodule  // debouncer_pulse
