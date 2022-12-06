// 74x32 - Quad input OR Gate. Gates 1,2 and 3
module MOD_74x32_3 (
    input [0:2] A,
    input [0:2] B,
    output [0:2] Y);

assign Y = A | B;


endmodule