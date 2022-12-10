module MOD_74x08_2_TB;
   
`INIT

reg [0:1] A1;
reg [0:1] B1;
wire [0:1] Y1;

reg [0:1] A2;
reg [0:1] B2;
wire [0:1] Y2;


MOD_74x08_2 mut1(
    A1,B1,Y1
);

MOD_74x08_2 mut2(
    A2,B2,Y2
);

localparam period = 20;  

initial begin
    `SET_MOD("MOD_74x08_2");
    $dumpfile("./build/MOD_74x08_2_TB.vcd");
    $dumpvars(0, MOD_74x08_2_TB);
    $timeformat(-6, 0, " us", 20);

    // === GATE 1 ===    
    A1= 2'b11; 
    B1= 2'b11;
    #period
    if (Y1 == 2'b00) 
        `FAILED("Test failed for A(1) & B(1)");

    A1= 2'b00; 
    B1= 2'b11;
    #period
    if (Y1 != 2'b00) 
        `FAILED("Test failed for A(0) & B(1)");

    A1= 2'b11; 
    B1= 2'b00;
    #period
    if (Y1 != 2'b00) 
        `FAILED("Test failed for A(1) & B(0)");

    A1= 2'b00;
    B1= 2'b00;
    #period
    if (Y1 != 2'b00) 
        `FAILED("Test failed for A(0) & B(0)");

    // === GATE 2 ===    
    A2= 2'b11; 
    B2= 2'b11;
    #period
    if (Y2 == 2'b00) 
        `FAILED("Test failed for A(1) & B(1)");

    A2= 2'b00; 
    B2= 2'b11;
    #period
    if (Y2 != 2'b00) 
        `FAILED("Test failed for A(0) & B(1)");

    A2= 2'b11; 
    B2= 2'b00;
    #period
    if (Y2 != 2'b00) 
        `FAILED("Test failed for A(1) & B(0)");

    A2= 2'b00;
    B2= 2'b00;
    #period
    if (Y2 != 2'b00) 
        `FAILED("Test failed for A(0) & B(0)");


end


endmodule