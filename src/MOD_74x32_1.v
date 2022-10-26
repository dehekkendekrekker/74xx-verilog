// 74x08 - Quad input OR Gate. Gates 1,2,3 and 4
module MOD_74x32_1 (
    input A1,
    input B1,
    output Y1);

assign Y1 = A1 | B1;

endmodule