module MOD_74x32_3_TB;
    reg [0:2] A;
    reg [0:2] B;
    wire [0:2] Y;
`INIT

MOD_74x32_3 mut(
     A,B,Y
);

localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x32_3");
    $dumpfile("./build/MOD_74x32_3_TB.vcd");
    $dumpvars(0, MOD_74x32_3_TB);
    $timeformat(-6, 0, " us", 20);

    // === GATE 1 ===    
    A = 3'b100; B = 3'b100;
    #period
    if (Y == 3'b000) 
        `FAILED("Test failed for A(1) | B(1)");

    A = 3'b000; B = 3'b100;
    #period
    if (Y == 3'b000) 
        `FAILED("Test failed for A(0) | B(1)");

    A = 3'b100; B = 3'b000;
    #period
    if (Y == 3'b000) 
        `FAILED("Test failed for A(1) | B(0)");

    A = 3'b000; B = 3'b000;
    #period
    if (Y == 3'b100) 
        `FAILED("Test failed for A(0) | B(0)");

    // === GATE 2 ===
    A = 3'b010; B = 3'b010;
    #period
    if (Y == 3'b000) 
        `FAILED("Test failed for A2(1) | B2(1)");

    A = 3'b000; B = 3'b010;
    #period
    if (Y == 3'b000)
        `FAILED("Test failed for A2(0) | B2(1)");

    A = 3'b010; B = 3'b000;
    #period
    if (Y == 3'b000)
        `FAILED("Test failed for A2(1) | B2(0)");

    A = 3'b000; B = 3'b000;
    #period
    if (Y == 3'b010)
        `FAILED("Test failed for A2(0) | B2(0)");

    // === GATE 3 ===
    A = 3'b001; B = 3'b001;
    #period
    if (Y == 3'b000) 
        `FAILED("Test failed for A3(1) | B3(1)");

    A = 3'b000; B = 3'b001;
    #period
    if (Y == 3'b000)
        `FAILED("Test failed for A3(0) | B3(1)");

    A = 3'b001; B = 3'b000;
    #period
    if (Y == 3'b000) 
        `FAILED("Test failed for A3(1) | B3(0)");

    A = 3'b000; B = 3'b000;
    #period
    if (Y == 3'b001)
        `FAILED("Test failed for A3(0) | B3(0)");
end


endmodule