module MOD_74x32_3_TB;
   
`INIT

reg [0:2] A1;
reg [0:2] B1;
wire [0:2] Y1;

reg [0:2] A2;
reg [0:2] B2;
wire [0:2] Y2;

MOD_74x32_3 mut1(
     A1,B1,Y1
);

MOD_74x32_3 mut2(
     A2,B2,Y2
);

localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x32_3");
    $dumpfile("./build/MOD_74x32_3_TB.vcd");
    $dumpvars(0, MOD_74x32_3_TB);
    $timeformat(-6, 0, " us", 20);

    A1 = 3'b111; 
    B1 = 3'b111;
    #period
    if (Y1 == 3'b000) 
        `FAILED("Test failed for A(1) | B(1)");

    A1 = 3'b111; 
    B1 = 3'b000;
    #period
    if (Y1 != 3'b111) 
        `FAILED("Test failed for A(0) | B(1)");

    A1 = 3'b000; 
    B1 = 3'b111;
    #period
    if (Y1 != 3'b111) 
        `FAILED("Test failed for A(1) | B(0)");

    A1 = 3'b000; 
    B1 = 3'b000;
    #period
    if (Y1 != 3'b000) 
        `FAILED("Test failed for A(0) | B(0)");

    // ====

    A2 = 3'b111; 
    B2 = 3'b111;
    #period
    if (Y2 == 3'b000) 
        `FAILED("Test failed for A(1) | B(1)");

    A2 = 3'b111; 
    B2 = 3'b000;
    #period
    if (Y2 != 3'b111) 
        `FAILED("Test failed for A(0) | B(1)");

    A2 = 3'b000; 
    B2 = 3'b111;
    #period
    if (Y2 != 3'b111) 
        `FAILED("Test failed for A(1) | B(0)");

    A2 = 3'b000; 
    B2 = 3'b000;
    #period
    if (Y2 != 3'b000) 
        `FAILED("Test failed for A(0) | B(0)");
end


endmodule