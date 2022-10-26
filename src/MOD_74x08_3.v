// 74x08 - Quad input AND Gate. Gates 1,2 and 3
module MOD_74x08_3 (
    input A1,
    input B1,
    input A2,
    input B2,
    input A3,
    input B3,
    output Y1,
    output Y2,
    output Y3);

assign Y1 = A1 & B1;
assign Y2 = A2 & B2;
assign Y3 = A3 & B3;

endmodule