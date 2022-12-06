// 74x32 - Quad input OR Gate. Gates 1 and 2
module MOD_74x32_2 (
    input [0:1] A,
    input [0:1] B,
    output [0:1] Y);

assign Y = A | B;

endmodule