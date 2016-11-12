
//-- Simple Parametric prescaler

module prescaler(input clk_in,
                 input wire ena,
                 output clk_out);

//-- Number of bits
parameter N = 22;

//-- N bits counter
reg [N-1:0] count = 0;

//-- The most significant bit is used as the output
assign clk_out = count[N-1];

//-- Counter
always @(posedge(clk_in)) begin
  if (!ena)
    count <= 0;
  else
    count <= count + 1;

end

endmodule
