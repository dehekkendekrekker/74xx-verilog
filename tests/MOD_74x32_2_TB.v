module MOD_74x32_2_TB;
    reg A1,A2;
    reg B1,B2;
    wire Y1,Y2;

MOD_74x32_2 mut(
    A1,B1,A2,B2,Y1,Y2
);

localparam period = 20;  

initial begin
    $display("=== Testing MOD_74x32_2 ===");
    $dumpfile("./build/MOD_74x32_2_TB.vcd");
    $dumpvars(0, MOD_74x32_2_TB);
    $timeformat(-6, 0, " us", 20);

    // === GATE 1 ===    
    A1 = 1; B1 = 1;
    #period
    if (Y1 == 0) 
        $display("* Test failed for A1(1) | B1(1)");

    A1 = 0; B1 = 1;
    #period
    if (Y1 == 0) 
        $display("* Test failed for A1(0) | B1(1)");

    A1 = 1; B1 = 0;
    #period
    if (Y1 == 0) 
        $display("* Test failed for A1(1) | B1(0)");

    A1 = 0; B1 = 0;
    #period
    if (Y1 == 1) 
        $display("* Test failed for A1(0) | B1(0)");

    // === GATE 2 ===
    A2 = 1; B2 = 1;
    #period
    if (Y2 == 0) 
        $display("* Test failed for A2(1) | B2(1)");

    A2 = 0; B2 = 1;
    #period
    if (Y2 == 0) 
        $display("* Test failed for A2(0) | B2(1)");

    A2 = 1; B2 = 0;
    #period
    if (Y2 == 0) 
        $display("* Test failed for A2(1) | B2(0)");

    A2 = 0; B2 = 0;
    #period
    if (Y2 == 1) 
        $display("* Test failed for A2(0) | B2(0)");
end


endmodule