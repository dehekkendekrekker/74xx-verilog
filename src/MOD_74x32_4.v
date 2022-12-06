// 74x32 - Quad input OR Gate. Gates 1,2,3 and 4
module MOD_74x32_4 (
     input [0:3] A,
    input [0:3] B,
    output [0:3] Y);

assign Y = A | B;

endmodule