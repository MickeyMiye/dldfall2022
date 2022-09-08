module silly (input  logic a, b, c, output logic y, sum);
   
  assign y = a & b | a & c | b & c;
  assign sum = a ^ b ^ c;
   
endmodule
