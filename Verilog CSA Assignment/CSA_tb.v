`include "CSA.v"

module CarrySelectAdder_tb();
reg [15:0] a,b;
reg cin;
wire [15:0] sum;
wire cout;

initial begin
  $monitor("A=%d, B=%d, Cin=%b, Sum=%b, Cout=%b", a, b, cin, sum, cout);
  a=0; b=0; cin=0;
  #10 a=16'b0010101011010101; 
      b=16'b1001111001000101; 
      cin=1'b0;
  #10 a=16'b1110101011010100; 
      b=16'b1001001001010101; 
      cin=1'b0;
  #10 a=16'b0000101111000010; 
      b=16'b1000101000001011; 
      cin=1'b1;
  #10 a=16'b1100101011110100; 
      b=16'b1001011000000100; 
      cin=1'b0;
  #10 a=16'b0011100011000100; 
      b=16'b0101011010000001; 
      cin=1'b0;
  #10 a=16'b1111111111111111; 
      b=16'b0000000000000000; 
      cin=1'b1;
  #10 a=16'b1111111111111111; 
      b=16'b1111111111111111; 
      cin=1'b1;
  #10 a=16'b0101110111001011; 
      b=16'b1101011110110110; 
      cin=1'b1;
end

CarrySelectAdder CSA(
.A(a), 
.B(b),
.Cin(cin),
.Sum(sum),
.Cout(cout)
);
endmodule
