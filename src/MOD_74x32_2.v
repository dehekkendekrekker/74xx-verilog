// 74x32 - Quad input OR Gate. Gates 1 and 2
module MOD_74x32_2 (
    input [0:1] A,
    input [0:1] B,
    output [0:1] Y);

assign Y = A | B;

endmodule

module MOD_74x32_2_SPLIT (
    input [0:1] A,
    input [0:1] B,
    output [0:1] Y);

assign Y[0] = A[0] | B[0];
assign Y[1] = A[1] | B[1];

endmodule