module MOD_74x08_1_TB;
`INIT

reg A;
reg B;
wire Y;



MOD_74x08_1 mut(
    A,B,Y
);



localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x08_1_TB");
    $dumpfile("./build/MOD_74x08_1_TB.vcd");
    $dumpvars(0, MOD_74x08_1_TB);
    $timeformat(-6, 0, " us", 20);

    

    A = 1; 
    B = 1;
    #period
    if (Y == 0) 
        `FAILED("Test failed for A(1) & B(1)");

    A = 0;
    B = 1;
    #period
    if (Y == 1) 
        `FAILED("Test failed for A(0) & B(1)");

    A = 1; 
    B = 0;
    #period
    if (Y == 1) 
        `FAILED("Test failed for A(1) & B(0)");

    A = 0; 
    B = 0;
    #period
    if (Y == 1) 
        `FAILED("Test failed for A(0) & B(0)");

end


endmodule