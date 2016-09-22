//------------------------------------------------------------------
//-- Test: Testing the pushbuttons sw1 and sw2. They are wired
//-- directly to led0 and led7 respectivelly
//------------------------------------------------------------------

module leds(input wire SW1,
            input wire SW2,
            output wire LED0,
            output wire LED1);

assign {LED0, LED1} = {SW1, SW2};

endmodule
