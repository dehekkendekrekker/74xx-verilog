module MOD_74x08_2 (A, B, Y);

parameter A_SIGNED = 0;
parameter B_SIGNED = 0;
parameter A_WIDTH = 0;
parameter B_WIDTH = 0;
parameter Y_WIDTH = 0;

input [1:0] A;
input [1:0] B;
output [1:0] Y;

AND _TECHMAP_REPLACE_(.A(A), .B(B), .Y(Y));

endmodule

module MOD_74x08_2_SPLIT (A, B, Y);

parameter A_SIGNED = 0;
parameter B_SIGNED = 0;
parameter A_WIDTH = 0;
parameter B_WIDTH = 0;
parameter Y_WIDTH = 0;

input [1:0] A;
input [1:0] B;
output [1:0] Y;


AND _TECHMAP_REPLACE_(.A(A), .B(B), .Y(Y));

endmodule