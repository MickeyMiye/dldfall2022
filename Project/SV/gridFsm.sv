module GridFSM (clk, reset, start, sel);

   input logic  clk;
   input logic  reset;
   input logic 	start;
   output logic 	sel;
   
   
   

   typedef enum 	logic  {S0, S1} statetype;
   statetype state, nextstate;
   
   
   // state register
   always_ff @(posedge clk, posedge reset)
     if (reset) state <= S0;
     else  state <= nextstate;
   
   // next state logic
   always_comb
     case (state)
       S0: begin  
	  if (start) nextstate <= S1;
	 else  nextstate <= S0;

   sel = 1'b0;
       end

       S1: begin	  	  
	  if (start) nextstate <= S1;
      else nextstate<= S0;
      sel = 1'b1;
       end
      
       default: begin
	  nextstate <= S0;	  	  
       end
     endcase
   
endmodule
