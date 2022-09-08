module fulladder (input  logic a, b, cin, output logic, cout);
   

  assign cout = a & b | a & cin | b & cin;

   
endmodule
