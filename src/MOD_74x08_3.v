// 74x08 - Quad input AND Gate. Gates 1,2 and 3
module MOD_74x08_3 (
    input [0:2] A,
    input [0:2] B,
    output [0:2] Y);

assign Y[0] = A[0] & B[0];
assign Y[1] = A[1] & B[1];
assign Y[2] = A[2] & B[2];

endmodule