`timescale 1ns / 1ps
module tb ();

   logic        a;
   logic 	b;
   logic 	cin;
   logic 	cout;
   logic        clk;   
   
  // instantiate device under test
   fulladder dut (a, b, cin, cout);

   // 2 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #10 clk = ~clk;
     end


   initial
     begin
    
	#0   a = 1'b1;	
	#0   b = 1'b1;	
	#0   c = 1'b1;

	#20  a = 1'b1;	
<<<<<<< HEAD
	#0   b = 1'b0;	
	#0   c = 1'b1;

	#20  a = 1'b1;	
	#0   b = 1'b1;	
	#0   c = 1'b0;	

	#20  a = 1'b0;	
	#0   b = 1'b1;	
	#0   c = 1'b0;	

	#20  a = 1'b0;	
	#0   b = 1'b0;	
	#0   c = 1'b1;	

	#20  a = 1'b0;	
	#0   b = 1'b0;	
	#0   c = 1'b0;	

	#20  a = 1'b1;	
	#0   b = 1'b0;	
	#0   c = 1'b0;	

	#20  a = 1'b0;	
	#0   b = 1'b1;	
	#0   c = 1'b1;	
=======
	#0   b = 1'b1;	
	#0   c = 1'b0;

	#20  a = 1'b1;	
	#0   b = 1'b0;	
	#0   c = 1'b1;	

	#20  a = 1'b1;	
	#0   b = 1'b0;	
	#0   c = 1'b0;	

	#20  a = 1'b0;	
	#0   b = 1'b1;	
	#0   c = 1'b1;	

	#20  a = 1'b0;	
	#0   b = 1'b1;	
	#0   c = 1'b0;	

	#20  a = 1'b0;	
	#0   b = 1'b0;	
	#0   c = 1'b1;	

	#20  a = 1'b0;
	#0   b = 1'b0	
	#0   c = 1'b0	
>>>>>>> aef3c90315062b8974119ae13df4f4d6560c4bbc

	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;		
	
     end

   
endmodule
