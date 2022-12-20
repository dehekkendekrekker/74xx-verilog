module MOD_74x04_6_TB;
`INIT

reg [5:0] A1,A2;
wire [5:0] Y1,Y2;

MOD_74x04_6 mut1(
    A1,Y1
);

MOD_74x04_6_SPLIT mut2(
    A2,Y2
);



localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x04_6_TB");
    $dumpfile("./build/MOD_74x04_6_TB.vcd");
    $dumpvars(0, MOD_74x04_6_TB);
    $timeformat(-6, 0, " us", 20);

    

    A1 = 6'b111111; 
    #period
    if (Y1 != 6'b000000) 
        `FAILED("Test failed for A1(1) ");

    A1 = 6'b000000;
    #period
    if (Y1 != 6'b111111) 
        `FAILED("Test failed for A1(0)");

    // SPLIT
    A2 = 6'b111111; 
    #period
    if (Y2 != 6'b000000) 
        `FAILED("Test failed for A2(1) ");

    A2 = 6'b000000;
    #period
    if (Y2 != 6'b111111) 
        `FAILED("Test failed for A2(0)");


   

end


endmodule