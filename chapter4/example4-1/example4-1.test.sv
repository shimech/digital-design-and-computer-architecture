// How to run:
// iverilog -o example4-1.out -g2012 example4-1.sv example4-1.test.sv

`timescale 100ns/10ns

module example4_1_testbench;

    // Inputs
    logic a, b, c;

    // Outputs
    logic y;

    // Instantiate the sillyfunction module
    sillyfunction uut (
        .a(a),
        .b(b),
        .c(c),
        .y(y)
    );

    // Initialize inputs
    initial begin
        // 0 - 100 [ns]
        // Input: 0
        a = 0;
        b = 0;
        c = 0;
        #1;
        $display(a, b, c, y);

        // 100 - 200 [ns]
        // Input: 1
        a = 0;
        b = 0;
        c = 1;
        #1;
        $display(a, b, c, y);

        // 200 - 300 [ns]
        // Input: 2
        a = 0;
        b = 1;
        c = 0;
        #1;
        $display(a, b, c, y);

        // 300 - 400 [ns]
        // Input: 3
        a = 0;
        b = 1;
        c = 1;
        #1;
        $display(a, b, c, y);

        // 400 - 500 [ns]
        // Input: 4
        a = 1;
        b = 0;
        c = 0;
        #1;
        $display(a, b, c, y);

        // 500 - 600 [ns]
        // Input: 5
        a = 1;
        b = 0;
        c = 1;
        #1;
        $display(a, b, c, y);

        // 600 - 700 [ns]
        // Input: 6
        a = 1;
        b = 1;
        c = 0;
        #1;
        $display(a, b, c, y);

        // 700 - 800 [ns]
        // Input: 7
        a = 1;
        b = 1;
        c = 1;
        #1;
        $display(a, b, c, y);

        $finish;
    end

    initial begin
        $dumpfile("example4-1.vcd");
        $dumpvars(0, example4_1_testbench);
    end

endmodule
