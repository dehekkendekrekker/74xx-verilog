module MOD_74x04_5_TB;
`INIT

reg [4:0] A1,A2;
wire [4:0] Y1,Y2;

MOD_74x04_5 mut1(
    A1,Y1
);

MOD_74x04_5_SPLIT mut2(
    A2,Y2
);



localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x04_5_TB");
    $dumpfile("./build/MOD_74x04_5_TB.vcd");
    $dumpvars(0, MOD_74x04_5_TB);
    $timeformat(-6, 0, " us", 20);

    

    A1 = 5'b11111; 
    #period
    if (Y1 != 5'b00000) 
        `FAILED("Test failed for A1(1) ");

    A1 = 5'b00000;
    #period
    if (Y1 != 5'b11111) 
        `FAILED("Test failed for A1(0)");

    // SPLIT
    A2 = 5'b11111; 
    #period
    if (Y2 != 5'b00000) 
        `FAILED("Test failed for A2(1) ");

    A2 = 5'b00000;
    #period
    if (Y2 != 5'b11111) 
        `FAILED("Test failed for A2(0)");


   

end


endmodule