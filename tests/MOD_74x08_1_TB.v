module MOD_74x08_1_TB;
    reg A1;
    reg B1;
    wire Y1;

MOD_74x08_1 mut(
    A1,B1,Y1
);

localparam period = 20;  

initial begin
    $display("=== Testing _1 ===");
    $dumpfile("./build/MOD_74x08_1_TB.vcd");
    $dumpvars(0, MOD_74x08_1_TB);
    $timeformat(-6, 0, " us", 20);

    // === GATE 1 ===    
    A1 = 1; B1 = 1;
    #period
    if (Y1 == 0) 
        $display("* Test failed for A1(1) & B1(1)");

    A1 = 0; B1 = 1;
    #period
    if (Y1 == 1) 
        $display("* Test failed for A1(0) & B1(1)");

    A1 = 1; B1 = 0;
    #period
    if (Y1 == 1) 
        $display("* Test failed for A1(1) & B1(0)");

    A1 = 0; B1 = 0;
    #period
    if (Y1 == 1) 
        $display("* Test failed for A1(0) & B1(0)");

end


endmodule