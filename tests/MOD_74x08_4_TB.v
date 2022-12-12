module MOD_74x08_4_TB;
    
`INIT

reg [0:3] A1;
reg [0:3] B1;
wire [0:3] Y1;

reg [0:3] A2;
reg [0:3] B2;
wire [0:3] Y2;

MOD_74x08_4 mut1(
    A1,B1,Y1
);

MOD_74x08_4_SPLIT mut2(
    A2,B2,Y2
);

localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x08_4_TB");
    $dumpfile("./build/MOD_74x08_4_TB.vcd");
    $dumpvars(0, MOD_74x08_4_TB);
    $timeformat(-6, 0, " us", 20);

    A1 = 4'b1111; 
    B1 = 4'b1111;
    #period
    if (Y1 == 4'b0000) 
        `FAILED("Test failed for A(1) & B(1)");

    A1 = 4'b0000; 
    B1 = 4'b1111;
    #period
    if (Y1 != 4'b000) 
        `FAILED("Test failed for A(0) & B(1)");

    A1 = 4'b1111; 
    B1 = 4'b0000;
    #period
    if (Y1 != 4'b0000) 
        `FAILED("Test failed for A(1) & B(0)");

    A1 = 4'b0000; 
    B1 = 4'b0000;
    #period
    if (Y1 != 4'b0000) 
        `FAILED("Test failed for A(0) & B(0)");


    // ====

    A2 = 4'b1111; 
    B2 = 4'b1111;
    #period
    if (Y2 == 4'b0000) 
        `FAILED("Test failed for A(1) & B(1)");

    A2 = 4'b0000; 
    B2 = 4'b1111;
    #period
    if (Y2 != 4'b000) 
        `FAILED("Test failed for A(0) & B(1)");

    A2 = 4'b1111; 
    B2 = 4'b0000;
    #period
    if (Y2 != 4'b0000) 
        `FAILED("Test failed for A(1) & B(0)");

    A2 = 4'b0000; 
    B2 = 4'b0000;
    #period
    if (Y2 != 4'b0000) 
        `FAILED("Test failed for A(0) & B(0)");

    
end


endmodule