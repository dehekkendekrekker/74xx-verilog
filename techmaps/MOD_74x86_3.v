module MOD_74x86_3 (A, B, Y);

parameter A_SIGNED = 0;
parameter B_SIGNED = 0;
parameter A_WIDTH = 0;
parameter B_WIDTH = 0;
parameter Y_WIDTH = 0;

input [2:0] A;
input [2:0] B;
output [2:0] Y;

XOR _TECHMAP_REPLACE_(.A(A), .B(B), .Y(Y));

endmodule

module MOD_74x86_3_SPLIT (A, B, Y);

parameter A_SIGNED = 0;
parameter B_SIGNED = 0;
parameter A_WIDTH = 0;
parameter B_WIDTH = 0;
parameter Y_WIDTH = 0;

input [2:0] A;
input [2:0] B;
output [2:0] Y;


XOR _TECHMAP_REPLACE_(.A(A), .B(B), .Y(Y));

endmodule