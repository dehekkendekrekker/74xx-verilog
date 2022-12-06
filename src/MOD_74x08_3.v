// 74x08 - Quad input AND Gate. Gates 1,2 and 3
module MOD_74x08_3 (
    input [0:2] A,
    input [0:2] B,
    output [0:2] Y);

assign Y = A & B;

endmodule