`timescale 1ns / 1ps
module tb ();

   logic [3:0]       a;
   logic [3:0]	b;
   logic 	c;
   logic 	y;
   logic [3:0]   sum;
   logic        clk; 
   logic [3:0] Sum_correct;
     
   
  // instantiate device under test
   rca dut (a, b, c, sum, y);

  initial 
	begin
		clk = 1'b1;
		forever #10 clk = ~clk;
  end


 integer handle3; 
 integer desc3; 
 integer i;

assign Sum_correct = a + b + c;

initial begin
handle3 = $fopen("rca.out"); 
desc3 = handle3;
 #5000 $finish;
end

initial 
begin
for (i=0; i < 150; i=i+1) 
begin 
// Put vectors before beginning of clk
@(posedge clk)
begin 
a = $random;
b = $random;
c = 1'b0;
end
@(negedge clk)
begin
$fdisplay(desc3, "%h %h || %h | %h | %b", a, b, sum, Sum_correct, (sum == Sum_correct)); 
end
end

 

end 


   
endmodule
