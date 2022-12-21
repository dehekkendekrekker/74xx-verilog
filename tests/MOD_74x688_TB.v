module MOD_74x688_TB;
`INIT

reg [7:0] A;
reg [7:0] B;
wire Y;

MOD_74x688 mut(
    A,B,Y
);



localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x688_TB");
    $dumpfile("./build/MOD_74x688_TB.vcd");
    $dumpvars(0, MOD_74x688_TB);
    $timeformat(-6, 0, " us", 20);

    

    A = 8'b11111111; 
    B = 8'b11111111;
    #period
    if (Y != 1) 
        `FAILED("Test 1 failed");

    A = 8'b11111111; 
    B = 8'b00000000;
    #period
    if (Y != 0) 
        `FAILED("Test 2 failed");

   

end


endmodule