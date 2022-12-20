module MOD_74x04_3 (
    input [2:0] A,
    output [2:0] Y);

assign Y = ~A;

endmodule

module MOD_74x04_3_SPLIT (
    input [2:0] A,
    output [2:0] Y);

assign Y[0] = ~A[0];
assign Y[1] = ~A[1];
assign Y[2] = ~A[2];

endmodule
