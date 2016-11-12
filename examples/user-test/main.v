//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icezum
//------------------------------------------------------------------
`default_nettype none

//-- Template for the top entity
module top(input wire CLK,
           input wire SW1,
           input wire SW2,
           output wire TX,
           output wire LED0, LED1, LED2, LED3,
                       LED4, LED5, LED6, LED7);


//-- Test circuit 1
wire [7:0] led_ct1;

pwm_led CT0 (
    .clk(CLK),
    .ledb(led_ct1)
  );

//-- Test circuit 2
wire [7:0] led_ct2;

kitt CT1 (
  .clk(CLK),
  .ledb(led_ct2)
  );

//-- Test circuit 3
wire [7:0] led_ct3 = 8'hAA;

txstr CT2 (
        .clk(CLK),
        .go(sw2),
        .tx(TX)
);

//-- Multiplexer for accessing the leds
wire [7:0] ledb;
reg [1:0] sel_cto = 2;

always @ ( * ) begin
  case (sel_cto)
    0: ledb = led_ct1;
    1: ledb = led_ct2;
    2: ledb = led_ct3;
    3: ledb = 8'h55;
    default: ledb = 0;
  endcase
end

//-- Circuit number
always @ ( posedge CLK) begin
  if (sw1) begin
    sel_cto <= sel_cto + 1;
  end
end

//-- Button 1
wire sw1;
debounce_pulse deb1 (
  .clk(CLK),
  .sw_in(SW1),
  .sw_out(sw1)
  );

//-- Button 2
wire sw2;
debounce_pulse deb2 (
  .clk(CLK),
  .sw_in(SW2),
  .sw_out(sw2)
  );

//-- Test buttons (DEBUG)
reg sw2_ff = 0;
always @ (posedge CLK) begin
  if (sw2)
    sw2_ff <= ~sw2_ff;
end


  assign {LED7, LED6, LED5, LED4, LED3, LED2, LED1, LED0} = ledb;

endmodule





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
