module MOD_74x04_2 (
    input [1:0] A,
    output [1:0] Y);

assign Y = ~A;

endmodule

module MOD_74x04_2_SPLIT (
    input [1:0] A,
    output [1:0] Y);

assign Y[0] = ~A[0];
assign Y[1] = ~A[1];

endmodule
