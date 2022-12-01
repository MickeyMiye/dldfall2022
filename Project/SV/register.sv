module register (clk,reset, d, q);
input logic reset;
input logic clk;
input logic [63:0] d;

output logic [63:0] q;

always @(negedge clk) 
assign q = d;

endmodule