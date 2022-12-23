module MOD_74x86_3 (A, B, Y);

parameter A_SIGNED = 0;
parameter B_SIGNED = 0;
parameter A_WIDTH = 0;
parameter B_WIDTH = 0;
parameter Y_WIDTH = 0;

input A[2:0];
input B[2:0];
output Y[2:0];

XOR _TECHMAP_REPLACE_(.A(A), .B(B), .Y(Y));

endmodule

module MOD_74x86_3_SPLIT (A, B, Y);

parameter A_SIGNED = 0;
parameter B_SIGNED = 0;
parameter A_WIDTH = 0;
parameter B_WIDTH = 0;
parameter Y_WIDTH = 0;

input A[2:0];
input B[2:0];
output Y[2:0];


XOR _TECHMAP_REPLACE_(.A(A), .B(B), .Y(Y));

endmodule