module MOD_74x04_6 (A, Y);

parameter A_SIGNED = 0;
parameter A_WIDTH = 0;
parameter Y_WIDTH = 0;

input [5:0] A;
output [5:0]Y;

NOT _TECHMAP_REPLACE_(.A(A), .Y(Y));

endmodule

module MOD_74x04_6_SPLIT (A, Y);

parameter A_SIGNED = 0;
parameter A_WIDTH = 0;
parameter Y_WIDTH = 0;

input [5:0] A;
output [5:0]Y;

NOT _TECHMAP_REPLACE_(.A(A), .Y(Y));

endmodule
