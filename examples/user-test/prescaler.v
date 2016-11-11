
//-- Simple Parametric prescaler

module prescaler(input clk_in, output clk_out);
wire clk_in;
wire clk_out;

//-- Number of bits
parameter N = 22;

//-- N bits counter
reg [N-1:0] count = 0;

//-- The most significant bit is used as the output
assign clk_out = count[N-1];

//-- Counter
always @(posedge(clk_in)) begin
  count <= count + 1;
end

endmodule
