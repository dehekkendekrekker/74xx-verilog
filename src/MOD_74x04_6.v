module MOD_74x04_6 (
    input [5:0] A,
    output [5:0] Y);

assign Y = ~A;

endmodule

module MOD_74x04_6_SPLIT (
    input [5:0] A,
    output [5:0] Y);

assign Y[0] = ~A[0];
assign Y[1] = ~A[1];
assign Y[2] = ~A[2];
assign Y[3] = ~A[3];
assign Y[4] = ~A[4];
assign Y[5] = ~A[5];

endmodule
