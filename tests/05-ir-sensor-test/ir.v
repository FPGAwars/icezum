//------------------------------------------------------------------
//-- Test: Testing external ir sensors
//-- They are directly connected to led0 and led1 respectivelly
//------------------------------------------------------------------

module leds(input wire D13,  //-- IR sensor 1
            input wire D12,  //-- IR sensor 2
            output wire LED0,
            output wire LED1);

assign {LED0, LED1} = {D13, D12};

endmodule
