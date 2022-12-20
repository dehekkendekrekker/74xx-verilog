module MOD_74x04_4_TB;
`INIT

reg [3:0] A1,A2;
wire [3:0] Y1,Y2;

MOD_74x04_4 mut1(
    A1,Y1
);

MOD_74x04_4_SPLIT mut2(
    A2,Y2
);



localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x04_4_TB");
    $dumpfile("./build/MOD_74x04_4_TB.vcd");
    $dumpvars(0, MOD_74x04_4_TB);
    $timeformat(-6, 0, " us", 20);

    

    A1 = 4'b1111; 
    #period
    if (Y1 != 4'b0000) 
        `FAILED("Test failed for A1(1) ");

    A1 = 4'b0000;
    #period
    if (Y1 != 4'b1111) 
        `FAILED("Test failed for A1(0)");

    // SPLIT
    A2 = 4'b1111; 
    #period
    if (Y2 != 4'b0000) 
        `FAILED("Test failed for A2(1) ");

    A2 = 4'b0000;
    #period
    if (Y2 != 4'b1111) 
        `FAILED("Test failed for A2(0)");


   

end


endmodule