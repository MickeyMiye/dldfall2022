module fulladder (input logic a,b,c, output logic sum, y);
  assign y = a & b | c & b| c & a;
  assign sum = a ^ b ^ c;
endmodule

module rca (input  logic [3:0] a, b, input logic c, output logic [3:0]sum, output logic y);
   
   logic  y0, y1, y2;
  fulladder g1(a[0], b[0], c, sum[0], y0);
  fulladder g2(a[1], b[1], y0, sum[1], y1);
  fulladder g3(a[2], b[2], y1, sum[2], y2);
  fulladder g4(a[3], b[3], y2, sum[3], y);

   
endmodule
