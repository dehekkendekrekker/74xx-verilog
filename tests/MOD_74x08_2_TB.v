module MOD_74x08_2_TB;
    reg [0:1] A;
    reg [0:1] B;
    wire [0:1] Y;
`INIT

MOD_74x08_2 mut(
    A,B,Y
);

localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x08_2");
    $dumpfile("./build/MOD_74x08_2_TB.vcd");
    $dumpvars(0, MOD_74x08_2_TB);
    $timeformat(-6, 0, " us", 20);

    // === GATE 1 ===    
    A = 2'b10; B = 2'b10;
    #period
    if (Y == 2'b00) 
        `FAILED("Test failed for A(1) & B(1)");

    A = 2'b00; B = 2'b10;
    #period
    if (Y == 2'b10) 
        `FAILED("Test failed for A(0) & B(1)");

    A = 2'b10; B = 2'b00;
    #period
    if (Y == 2'b10) 
        `FAILED("Test failed for A(1) & B(0)");

    A = 2'b00; B = 2'b00;
    #period
    if (Y == 2'b10) 
        `FAILED("Test failed for A(0) & B(0)");

    // === GATE 2 ===
    A = 2'b01; B = 2'b01;
    #period
    if (Y == 2'b00) 
        `FAILED("Test failed for A2(1) & B2(1)");

    A = 2'b00; B = 2'b01;
    #period
    if (Y == 2'b01) 
        `FAILED("Test failed for A2(0) & B2(1)");

    A = 2'b01; B = 2'b00;
    #period
    if (Y == 2'b01) 
        `FAILED("Test failed for A2(1) & B2(0)");

    A = 2'b00; B = 2'b00;
    #period
    if (Y == 2'b01) 
        `FAILED("Test failed for A2(0) & B2(0)");

end


endmodule