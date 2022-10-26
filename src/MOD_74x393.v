// 74x393 Dual 4-bit ripple counter
module MOD_74x393 (
    input CLK1,
    input CLR1,
    input CLK2,
    input CLR2,
    output reg [3:0] Q1,
    output reg [3:0] Q2
);

initial begin
  Q1 = 0;
  Q2 = 0;
end

always @(negedge CLK1) begin
    if (CLR1)
        Q1 <= 0;
    else 
        Q1 <= Q1 + 1;
end

always @(negedge CLK2) begin
    if (CLR2)
        Q2 <= 0;
    else 
        Q2 <= Q2 + 1;
end

endmodule
