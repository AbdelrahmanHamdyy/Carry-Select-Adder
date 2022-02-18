/*
wire[2:0] c;

wire [4:0] sum;
assign sum = A[3:0] + B[3:0] + Cin;
assign Sum[3:0] = sum[3:0];
assign c[0] = sum[4];

for (int i = 4; i < 16; i = i + 4) begin
  int j = 0;
  wire [4:0] s0, s1;
  wire c0, c1;
  assign s0 = A[i+3:i] + B[i+3:i] + 1'b0;
  assign c0 = s0[4];
  assign s1 = A[i+3:i] + B[i+3:i] + 1'b1;
  assign c1 = s1[4];
  assign Sum[i+3:i] = (c[j]) ? s1[3:0] : s0[3:0];
  assign c[j+1] = (c[j]) ? c1 : c0;
  j = j + 1;
end
endmodule
*/

/*
// MUX
module mux_5bit (a, b, sel, out);
input [4:0] a, b;
input sel;
output [4:0] out;
assign out = 
(sel == 0) ? a:
(sel == 1) ? b: 5'bx;
endmodule

// Half Adder
module Add_half(a, b, sum, cout);
input a,b;
output sum, cout;
xor xor_1 (sum,a,b);
and and_1 (cout,a,b);
endmodule

// Full Adder
module Add_full(a, b, cin, sum, cout);
input a,b,cin;
output sum, cout;
wire x,y,z;
 
Add_half h1(.a(a), .b(b), .sum(x), .cout(y));
Add_half h2(.a(x), .b(cin), .sum(sum), .cout(z));
or or_1(cout,z,y);
endmodule

// Binary Parallel Adder
module ripple_adder(a, b, cin, sum, cout);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;

wire c1,c2,c3;
 
Add_full F0(
.a(a[0]),
.b(b[0]),
.cin(cin),
.sum(sum[0]),
.cout(c1));
 
Add_full F1(
.a(a[1]),
.b(b[1]),
.cin(c1),
.sum(sum[1]),
.cout(c2));
 
Add_full F2(
.a(a[2]),
.b(b[2]),
.cin(c2),
.sum(sum[2]),
.cout(c3));
 
Add_full F3(
.a(a[3]),
.b(b[3]),
.cin(c3),
.sum(sum[3]),
.cout(cout));
endmodule
*/