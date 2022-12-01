module FSM (clk, reset, right, left, hazards,lights);

   input logic  clk;
   input logic  reset;
   input logic 	left;
   input logic 	right;
   input logic 	hazards;
   
   output logic [5:0] lights;
  
   

   typedef enum 	logic [3:0] {S0, S1, S2,S3,S4,S5,S6,S7,S8,S9} statetype;
   statetype state, nextstate;
   
   
   // state register
   always_ff @(posedge clk, posedge reset)
     if (reset) state <= S0;
     else  state <= nextstate;
   
   // next state logic
   always_comb
     case (state)
       S0: begin  
	  if (hazards & !left & !right) nextstate <= S7;
	 else if (!hazards & left & !right)  nextstate <= S1;
   else if (!hazards & !left & right) nextstate <= S4;
   else  nextstate <= S0;
   lights = 6'b000000;
       end

       S1: begin	  	  
	  
    nextstate <= S2;
    lights = 6'b001000;
       end
       S2: begin

	  
	  nextstate <= S3;
    lights = 6'b011000;
       end
       S3: begin

	  nextstate <= S0;
    lights = 6'b111000;
       end
       S4: begin

    nextstate <= S5;
    lights = 6'b000100;
       end
       S5: begin

	  nextstate <= S6;
    lights = 6'b000110;
       end
       S6: begin

	 nextstate <= S0;
    lights = 6'b000111;
       end
       S7:  begin
       
       nextstate <= S8;
       lights = 6'b001100;
       end
        S8:  begin
       
       nextstate <= S9;
       lights = 6'b011110;
       end
        S9:  begin
       
       nextstate <= S0;
       lights = 6'b111111;
       end
       default: begin
	  lights <= S0;	  	  
       end
     endcase
   
endmodule
