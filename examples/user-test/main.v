//------------------------------------------------------------------
//-- User test program for the Icezum Alhambra v1.1 board
//-- (c) Juan Gonzalez-Gomez (Obijuan). Nov-2016
//------------------------------------------------------------------
//-- Released under the GPL license
//------------------------------------------------------------------
`default_nettype none

//-- Top entity
//-- All the 4 sub-circuits are instantiated and the leds and tx signal
//-- multiplexed among them
module top(input wire CLK,
           input wire SW1,
           input wire SW2,
           input wire RX,
           output wire TX,
           output wire LED0, LED1, LED2, LED3,
                       LED4, LED5, LED6, LED7);


//-- Test circuit 0: PWM on the leds
wire [7:0] led_ct0;

pwm_led CT0 (
    .clk(CLK),
    .ledb(led_ct0)
  );

//-- Test circuit 1: Knight rider effect on the leds
wire [7:0] led_ct1;

kitt CT1 (
  .clk(CLK),
  .ledb(led_ct1)
  );

//-- Test circuit 2: Serial tranmission (115200 bauds)
wire [7:0] led_ct2 = 8'hAA;
wire tx_ct2;

txstr CT2 (
        .clk(CLK),
        .go(sw2),
        .tx(tx_ct2)
);

//-- Test circuit 4: Serial echo (The received char is display in the leds)
wire [7:0] led_ct3;
wire tx_ct3;

echo CT3 (
         .clk(CLK),
         .rx(RX),
         .tx(tx_ct3),
         .ledb(led_ct3)
);

//-- Multiplexer for accessing the leds and the tx signal
wire [7:0] ledb;
reg [1:0] sel_cto = 0;

always @ ( * ) begin
  case (sel_cto)
    0: begin
         ledb = led_ct0;
         TX = 1'b1;    //-- No tx is used
       end
    1: begin
         ledb = led_ct1;
         TX = 1'b1;   //-- No tx is used
       end
    2: begin
         ledb = led_ct2;
         TX = tx_ct2;
       end
    3: begin
         ledb = led_ct3;
         TX = tx_ct3;
       end
    default: begin
      ledb = 0;
      TX = 1'b1;
    end
  endcase
end


//-- Selector Circuit
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

//-- Output the data to the leds
assign {LED7, LED6, LED5, LED4, LED3, LED2, LED1, LED0} = ledb;

endmodule
