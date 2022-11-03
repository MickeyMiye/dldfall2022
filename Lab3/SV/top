module top (input logic clk, reset, right, left, hazards, output logic [5:0] lights);
logic clk_en;
clk_div slowclk(clk, reset, clk_en);
FSM thunderbird (clk_en, reset, right, left, hazards, lights);

endmodule