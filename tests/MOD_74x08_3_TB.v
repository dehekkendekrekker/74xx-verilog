module MOD_74x08_3_TB;
    reg A1,A2,A3;
    reg B1,B2,B3;
    wire Y1,Y2,Y3;
`INIT

MOD_74x08_3 mut(
    A1,B1,A2,B2,A3,B3,Y1,Y2,Y3
);

localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x08_3");
    $dumpfile("./build/MOD_74x08_3_TB.vcd");
    $dumpvars(0, MOD_74x08_3_TB);
    $timeformat(-6, 0, " us", 20);

    // === GATE 1 ===    
    A1 = 1; B1 = 1;
    #period
    if (Y1 == 0) 
        `FAILED("Test failed for A1(1) & B1(1)");

    A1 = 0; B1 = 1;
    #period
    if (Y1 == 1) 
        `FAILED("Test failed for A1(0) & B1(1)");

    A1 = 1; B1 = 0;
    #period
    if (Y1 == 1) 
        `FAILED("Test failed for A1(1) & B1(0)");

    A1 = 0; B1 = 0;
    #period
    if (Y1 == 1) 
        `FAILED("Test failed for A1(0) & B1(0)");

    // === GATE 2 ===
    A2 = 1; B2 = 1;
    #period
    if (Y2 == 0) 
        `FAILED("Test failed for A2(1) & B2(1)");

    A2 = 0; B2 = 1;
    #period
    if (Y2 == 1) 
        `FAILED("Test failed for A2(0) & B2(1)");

    A2 = 1; B2 = 0;
    #period
    if (Y2 == 1) 
        `FAILED("Test failed for A2(1) & B2(0)");

    A2 = 0; B2 = 0;
    #period
    if (Y2 == 1) 
        `FAILED("Test failed for A2(0) & B2(0)");

    // === GATE 3 ===
    A3 = 1; B3 = 1;
    #period
    if (Y3 == 0) 
        `FAILED("Test failed for A3(1) & B3(1)");

    A3 = 0; B3 = 1;
    #period
    if (Y3 == 1) 
        `FAILED("Test failed for A3(0) & B3(1)");

    A3 = 1; B3 = 0;
    #period
    if (Y3 == 1) 
        `FAILED("Test failed for A3(1) & B3(0)");

    A3 = 0; B3 = 0;
    #period
    if (Y3 == 1) 
        `FAILED("Test failed for A3(0) & B3(0)");
end


endmodule