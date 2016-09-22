//------------------------------------------------------------------
//-- Test: Turning all the icezum leds on
//------------------------------------------------------------------

module leds(output wire LED0,
            output wire LED1,
            output wire LED2,
            output wire LED3,
            output wire LED4,
            output wire LED5,
            output wire LED6,
            output wire LED7);

assign {LED0, LED1, LED2, LED3, LED4, LED5, LED6, LED7} = 8'hFF;

endmodule
