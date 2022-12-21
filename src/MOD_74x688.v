// 8-bit comparator
module MOD_74x688 (
    input [7:0] A,
    input [7:0] B,
    output Y
);

assign Y = (A == B);

endmodule