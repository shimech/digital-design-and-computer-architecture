module gates(input logic [3:0] a, b,
             output logic [3:0] y1, y2,
                                y3, y4, y5);

    // 4ビットのバスに作用する5つの異なる2入力論理ゲート
    assign y1 = a & b;   // AND
    assign y2 = a | b;   // OR
    assign y3 = a ^ b;   // XOR
    assign y4 = ~(a & b) // NAND
    assign y5 = ~(a | b) // NOR

endmodule
