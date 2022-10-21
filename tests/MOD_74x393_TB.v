`timescale 1 ms/10 ps  // time-unit = 1 ms, precision = 10 ps

module MOD_74x393_TB;
    reg CLK1;
    reg CLR1;
    reg CLR2;
    reg CLR3;
    reg CLR4;

    wire [3:0] Q1;
    wire [3:0] Q2;
    wire [3:0] Q3;
    wire [3:0] Q4;

    localparam period = 20;

    MOD_74x393 MUT1 (
        CLK1,
        CLR1,
        CLK1,
        CLR2,
        Q1,
        Q2
    );

    MOD_74x393 MUT2 (
        CLK1,
        CLR3,
        CLK1,
        CLR4,
        Q3,
        Q4
    );

reg [3:0] expectation1 = 0;
reg [3:0] expectation2 = 0;

reg [3:0] q3_should_reset_on = 0;
reg [3:0] q4_should_reset_on  = 0;
reg q3_should_reset = 0;
reg q4_should_reset = 0;

initial begin
    $display("=== Testing MOD_74x08 ===");
    $dumpfile("./build/MOD_74x393_TB.vcd");
    $dumpvars(0, MOD_74x393_TB);
    $timeformat(-6, 0, " us", 20);

    // Pull clear lines low, so device will NOT clear
    {CLR1, CLR2, CLR3, CLR4} = 0;
    CLK1 = 1;


    #2000
    $finish();
end


// Define clock
always #period CLK1 = ~CLK1;


/**
This test checks if every negative clock edge will cause the counter to increase Bank 1 of the IC
*/
always @(negedge CLK1) begin
    #period
    expectation1 = (expectation1 + 1) % 16;
    if (Q1 != expectation1)
        $display("* Test failed for Q1 == %d, actual Q1 == %d", expectation1, Q1);
end

/**
This test checks if every negative clock edge will cause the counter to increase Bank 2 of the IC
*/
always @(negedge CLK1) begin
    #period
    expectation2 = (expectation2 + 1) % 16;
    if (Q1 != expectation2)
        $display("* Test failed for Q2 == %d, actual Q2 == %d", expectation2, Q2);
end

/**
This test checks if the counter1 will reset to 0 from all levels when mandated.
*/
always@(negedge CLK1) begin
    #period
    if (CLR3) begin
        if (Q3 != 0) 
            $display("Q3 did not reset when Q4 == %d", q3_should_reset_on);

        q3_should_reset_on = (q3_should_reset_on + 1 % 16);
        CLR3 = 0;
    end


    if (q3_should_reset_on == Q3)
        CLR3 = 1;
end

/**
This test checks if the counter2 will reset to 0 from all levels when mandated.
*/
always@(negedge CLK1) begin
    #period
    if (CLR4) begin
        if (Q4 != 0) 
            $display("Q4 did not reset when Q4 == %d", q4_should_reset_on);

        q4_should_reset_on = (q4_should_reset_on + 1 % 16);
        CLR4 = 0;
    end

    if (q4_should_reset_on == Q4)
        CLR4 = 1;
end






endmodule