module Mux (input logic [63:0] seed, grid_evolve,input logic  sel, output logic [63:0] grid);

assign grid = sel? grid_evolve: seed;

endmodule

