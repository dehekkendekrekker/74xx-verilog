module MOD_74x04_2_TB;
`INIT

reg [1:0] A1,A2;
wire [1:0] Y1,Y2;

MOD_74x04_2 mut1(
    A1,Y1
);

MOD_74x04_2_SPLIT mut2(
    A2,Y2
);



localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x04_2_TB");
    $dumpfile("./build/MOD_74x04_2_TB.vcd");
    $dumpvars(0, MOD_74x04_2_TB);
    $timeformat(-6, 0, " us", 20);

    

    A1 = 2'b11; 
    #period
    if (Y1 != 2'b00) 
        `FAILED("Test failed for A1(1) ");

    A1 = 2'b00;
    #period
    if (Y1 != 2'b11) 
        `FAILED("Test failed for A1(0)");

    // SPLIT
    A2 = 2'b11; 
    #period
    if (Y2 != 2'b00) 
        `FAILED("Test failed for A2(1) ");

    A2 = 2'b00;
    #period
    if (Y2 != 2'b11) 
        `FAILED("Test failed for A2(0)");


   

end


endmodule