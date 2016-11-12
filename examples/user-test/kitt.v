`default_nettype none

module kitt (input wire clk,
             output wire [7:0] ledb);

wire clk_kitt;

//-- Base time for the leds movement
prescaler
       #(.N(19))
      press1 (
         .clk_in(clk),
         .ena(1'b1),
         .clk_out(clk_kitt)
         );

//-- counter for the led number
reg [3:0] pos = 0;

always @ (posedge clk_kitt ) begin
    pos <= pos + 1;
end

//-- Demux/decoder
wire in0 = 1'b1;

wire a = pos[3];
wire [2:0] pos2;

assign pos2 = pos ^ {a,a,a,a};

assign ledb = in0 << pos2;


endmodule // kitt
