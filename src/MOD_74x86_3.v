// 74x08 - Quad input XOR Gate.
module MOD_74x86_3 (
    input [0:2] A,
    input [0:2] B,
    output [0:2] Y);

assign Y = A ^ B;

endmodule

module MOD_74x86_3_SPLIT (
    input [0:2] A,
    input [0:2] B,
    output [0:2] Y);

assign Y[0] = A[0] ^ B[0];
assign Y[1] = A[1] ^ B[1];
assign Y[2] = A[2] ^ B[2];

endmodule
