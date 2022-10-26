// 74x08 - Quad input AND Gate. Gates 1 and 2
module MOD_74x08_2 (
    input A1,
    input B1,
    input A2,
    input B2,
    output Y1,
    output Y2);

assign Y1 = A1 & B1;
assign Y2 = A2 & B2;

endmodule