module MOD_74x32_1_TB;
    reg A1;
    reg B1;
    wire Y1;
`INIT

MOD_74x32_1 mut(
    A1,B1,Y1
);

localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x32_1");
    $dumpfile("./build/MOD_74x32_1_TB.vcd");
    $dumpvars(0, MOD_74x32_1_TB);
    $timeformat(-6, 0, " us", 20);

    // === GATE 1 ===    
    A1 = 1; B1 = 1;
    #period
    if (Y1 == 0) 
        `FAILED("Test failed for A1(1) | B1(1)");

    A1 = 0; B1 = 1;
    #period
    if (Y1 == 0) 
        `FAILED("Test failed for A1(0) | B1(1)");

    A1 = 1; B1 = 0;
    #period
    if (Y1 == 0) 
        `FAILED("Test failed for A1(1) | B1(0)");

    A1 = 0; B1 = 0;
    #period
    if (Y1 == 1) 
        `FAILED("Test failed for A1(0) | B1(0)");
end


endmodule