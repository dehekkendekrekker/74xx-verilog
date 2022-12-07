module MOD_74x08_4_TB;
    reg [0:3] A;
    reg [0:3] B;
    wire [0:3] Y;
`INIT

MOD_74x08_4 mut(
    A,B,Y
);

localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x08_4");
    $dumpfile("./build/MOD_74x08_4_TB.vcd");
    $dumpvars(0, MOD_74x08_4_TB);
    $timeformat(-6, 0, " us", 20);

    A = 4'b1111; 
    B = 4'b1111;
    #period
    if (Y == 4'b0000) 
        `FAILED("Test failed for A(1) & B(1)");

    A = 4'b0000; 
    B = 4'b1111;
    #period
    if (Y != 4'b000) 
        `FAILED("Test failed for A(0) & B(1)");

    A = 4'b1111; 
    B = 4'b0000;
    #period
    if (Y != 4'b0000) 
        `FAILED("Test failed for A(1) & B(0)");

    A = 4'b0000; 
    B = 4'b0000;
    #period
    if (Y != 4'b0000) 
        `FAILED("Test failed for A(0) & B(0)");

    
end


endmodule