// 74x32 - Quad input OR Gate. Gates 1,2,3 and 4
module MOD_74x32_4 (
     input [0:3] A,
    input [0:3] B,
    output [0:3] Y);

assign Y[0] = A[0] | B[0];
assign Y[1] = A[1] | B[1];
assign Y[2] = A[2] | B[2];
assign Y[3] = A[3] | B[3];

endmodule