module MOD_74x04_1_TB;
`INIT

reg A;
wire Y;

MOD_74x04_1 mut(
    A,Y
);



localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x04_1_TB");
    $dumpfile("./build/MOD_74x04_1_TB.vcd");
    $dumpvars(0, MOD_74x04_1_TB);
    $timeformat(-6, 0, " us", 20);

    

    A = 1; 
    #period
    if (Y != 0) 
        `FAILED("Test failed for A(1) ");

    A = 0;
    #period
    if (Y != 1) 
        `FAILED("Test failed for A(0)");

   

end


endmodule