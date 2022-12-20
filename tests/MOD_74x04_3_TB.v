module MOD_74x04_3_TB;
`INIT

reg [2:0] A1,A2;
wire [2:0] Y1,Y2;

MOD_74x04_3 mut1(
    A1,Y1
);

MOD_74x04_3_SPLIT mut2(
    A2,Y2
);



localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x04_3_TB");
    $dumpfile("./build/MOD_74x04_3_TB.vcd");
    $dumpvars(0, MOD_74x04_3_TB);
    $timeformat(-6, 0, " us", 20);

    

    A1 = 3'b111; 
    #period
    if (Y1 != 3'b000) 
        `FAILED("Test failed for A1(1) ");

    A1 = 3'b000;
    #period
    if (Y1 != 3'b111) 
        `FAILED("Test failed for A1(0)");

    // SPLIT
    A2 = 3'b111; 
    #period
    if (Y2 != 3'b000) 
        `FAILED("Test failed for A2(1) ");

    A2 = 3'b000;
    #period
    if (Y2 != 3'b111) 
        `FAILED("Test failed for A2(0)");


   

end


endmodule