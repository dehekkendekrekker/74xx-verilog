// 74x04 - Hex inverter. Gate 1
module MOD_74x04_1 (A, Y);

parameter A_SIGNED = 0;
parameter A_WIDTH = 0;
parameter Y_WIDTH = 0;

input A;
output Y;

NOT _TECHMAP_REPLACE_(.A(A), .Y(Y));

endmodule


