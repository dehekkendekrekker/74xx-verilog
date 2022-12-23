module MOD_74x86_4 (A, B, Y);

parameter A_SIGNED = 0;
parameter B_SIGNED = 0;
parameter A_WIDTH = 0;
parameter B_WIDTH = 0;
parameter Y_WIDTH = 0;

input [3:0] A;
input [3:0] B;
output [3:0] Y;

XOR _TECHMAP_REPLACE_(.A(A), .B(B), .Y(Y));

endmodule

module MOD_74x86_4_SPLIT (A, B, Y);

parameter A_SIGNED = 0;
parameter B_SIGNED = 0;
parameter A_WIDTH = 0;
parameter B_WIDTH = 0;
parameter Y_WIDTH = 0;

input [3:0] A;
input [3:0] B;
output [3:0] Y;


XOR _TECHMAP_REPLACE_(.A(A), .B(B), .Y(Y));

endmodule