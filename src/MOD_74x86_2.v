// 74x08 - Quad input XOR Gate.
module MOD_74x86_2 (
    input [0:1] A,
    input [0:1] B,
    output [0:1] Y);

assign Y = A ^ B;

endmodule

module MOD_74x86_2_SPLIT (
    input [0:1] A,
    input [0:1] B,
    output [0:1] Y);

assign Y[0] = A[0] ^ B[0];
assign Y[1] = A[1] ^ B[1];

endmodule