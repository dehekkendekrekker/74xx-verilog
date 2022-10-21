module MOD_74x08_4 (
    input A1,
    input B1,
    input A2,
    input B2,
    input A3,
    input B3,
    input A4,
    input B4,
    output Y1,
    output Y2,
    output Y3,
    output Y4);

assign Y1 = A1 & B1;
assign Y2 = A2 & B2;
assign Y3 = A3 & B3;
assign Y4 = A4 & B4;

endmodule