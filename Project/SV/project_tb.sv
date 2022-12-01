`timescale 1ns / 1ps
module stimulus ();

   logic  clk;
   logic reset;
   logic start;
   logic sel;
   logic [63:0] q;
   logic [63:0] grid;
   logic [63:0] grid_evolve;
   
   
   
   
   // Instantiate DUT
 control dut (clk, reset, start,  q,  sel);
 
   // Setup the clock to toggle every 1 time units 
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end

initial begin
#0 reset = 1'b1;
#20 start =1'b0;
#20 start = 1'b1;
#0  reset = 1'b0;
#0 sel = 1'b0;
#20 sel = 1'b1;
end
      
       
endmodule// FSM_tb

