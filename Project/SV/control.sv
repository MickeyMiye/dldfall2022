module control (input logic clk, reset, start, output logic [63:0]  q, input logic sel);
logic clk_en;
logic [63:0] seed;
logic [63:0] grid;
logic [63:0] grid_evolve;
logic [63:0] d;

clk_div slowclk(clk, reset, clk_en);
GridFSM G1(clk_en, reset, start, sel);
assign seed = 64'h0412_6424_0034_3c28;
Mux M1(seed, q, sel, grid);
datapath d1( grid, grid_evolve);
// add reset
register r1(clk,reset, grid_evolve, q);
endmodule
