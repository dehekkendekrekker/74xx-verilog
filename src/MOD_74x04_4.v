module MOD_74x04_4 (
    input [3:0] A,
    output [3:0] Y);

assign Y = ~A;

endmodule

module MOD_74x04_4_SPLIT (
    input [3:0] A,
    output [3:0] Y);

assign Y[0] = ~A[0];
assign Y[1] = ~A[1];
assign Y[2] = ~A[2];
assign Y[3] = ~A[3];

endmodule
