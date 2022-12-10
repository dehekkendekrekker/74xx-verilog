// 74x32 - Quad input OR Gate. Gates 1,2 and 3
module MOD_74x32_3 (
    input [0:2] A,
    input [0:2] B,
    output [0:2] Y);

assign Y = A | B;


endmodule

module MOD_74x32_3_SPLIT (
    input [0:2] A,
    input [0:2] B,
    output [0:2] Y);

assign Y[0] = A[0] | B[0];
assign Y[1] = A[1] | B[1];
assign Y[2] = A[2] | B[2];


endmodule