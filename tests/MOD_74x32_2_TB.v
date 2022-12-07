module MOD_74x32_2_TB;
    reg [0:1] A;
    reg [0:1] B;
    wire [0:1] Y;
`INIT

MOD_74x32_2 mut(
    A,B,Y
);

localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x32_2");
    $dumpfile("./build/MOD_74x32_2_TB.vcd");
    $dumpvars(0, MOD_74x32_2_TB);
    $timeformat(-6, 0, " us", 20);

    // === GATE 1 ===    
    A = 2'b11; 
    B = 2'b11;
    #period
    if (Y == 2'b00) 
        `FAILED("Test failed for A(1) | B(1)");

    A = 2'b11; 
    B = 2'b00;
    #period
    if (Y != 2'b11) 
        `FAILED("Test failed for A(0) | B(1)");

    A = 2'b00; 
    B = 2'b11;
    #period
    if (Y != 2'b11) 
        `FAILED("Test failed for A(1) | B(0)");

    A = 2'b00; 
    B = 2'b00;
    #period
    if (Y != 2'b00) 
        `FAILED("Test failed for A(0) | B(0)");

  
end


endmodule