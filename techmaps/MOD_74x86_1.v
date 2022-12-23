module MOD_74x86_1 (A, B, Y);

parameter A_SIGNED = 0;
parameter B_SIGNED = 0;
parameter A_WIDTH = 0;
parameter B_WIDTH = 0;
parameter Y_WIDTH = 0;

input A;
input B;
output Y;

XOR _TECHMAP_REPLACE_(.A(A), .B(B), .Y(Y));

endmodule