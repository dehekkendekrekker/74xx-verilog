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

    // === GATE 1 ===    
    A = 4'b1000; B = 4'b1000;
    #period
    if (Y == 4'b0000) 
        `FAILED("Test failed for A(1) & B(1)");

    A = 4'b0000; B = 4'b1000;
    #period
    if (Y == 4'b1000) 
        `FAILED("Test failed for A(0) & B(1)");

    A = 4'b1000; B = 4'b0000;
    #period
    if (Y == 4'b1000) 
        `FAILED("Test failed for A(1) & B(0)");

    A = 4'b0000; B = 4'b0000;
    #period
    if (Y == 4'b1000) 
        `FAILED("Test failed for A(0) & B(0)");

    // === GATE 2 ===
    A = 4'b0100; B = 4'b0100;
    #period
    if (Y == 4'b0000) 
        `FAILED("Test failed for A2(1) & B2(1)");

    A = 4'b0000; B = 4'b0100;
    #period
    if (Y == 4'b0100) 
        `FAILED("Test failed for A2(0) & B2(1)");

    A = 4'b0100; B = 4'b0000;
    #period
    if (Y == 4'b0100) 
        `FAILED("Test failed for A2(1) & B2(0)");

    A = 4'b0000; B = 4'b0000;
    #period
    if (Y == 4'b0100) 
        `FAILED("Test failed for A2(0) & B2(0)");

    // === GATE 3 ===
    A = 4'b0010; B = 4'b0010;
    #period
    if (Y == 4'b0000)
        `FAILED("Test failed for A3(1) & B3(1)");

    A = 4'b0000; B = 4'b0010;
    #period
    if (Y == 4'b0010)
        `FAILED("Test failed for A3(0) & B3(1)");

    A = 4'b0010; B = 4'b0000;
    #period
    if (Y == 4'b0010) 
        `FAILED("Test failed for A3(1) & B3(0)");

    A = 4'b0000; B = 4'b0000;
    #period
    if (Y == 4'b0010) 
        `FAILED("Test failed for A3(0) & B3(0)");

    
    // === GATE 4 ===
    A = 4'b0001; B = 4'b0001;
    #period
    if (Y == 4'b0000)
        `FAILED("Test failed for A4(1) & B4(1)");

    A = 4'b0000; B = 4'b0001;
    #period
    if (Y == 4'b0001)
        `FAILED("Test failed for A4(0) & B4(1)");

    A = 4'b0001; B = 4'b0000;
    #period
    if (Y == 4'b0001)  
        `FAILED("Test failed for A4(1) & B4(0)");

    A = 4'b0000; B = 4'b0000;
    #period
    if (Y == 4'b0001) 
        `FAILED("Test failed for A4(0) & B4(0)");
end


endmodule