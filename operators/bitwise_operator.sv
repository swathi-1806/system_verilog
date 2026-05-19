module bitwise_operators_demo;

  // 4-bit variables
  logic [3:0] a, b;
  logic [3:0] result;

  initial begin
    a = 4'b1101;  // 13
    b = 4'b1011;  // 11

    $display("a = %b", a);
    $display("b = %b", b);
    $display("-------------------------");

    // Bitwise AND
    result = a & b;
    $display("a & b   = %b", result);

    // Bitwise OR
    result = a | b;
    $display("a | b   = %b", result);

    // Bitwise XOR
    result = a ^ b;
    $display("a ^ b   = %b", result);

    // Bitwise NOT (on a)
    result = ~a;
    $display("~a      = %b", result);

    // Bitwise NAND
    result = ~(a & b);
    $display("a ~& b  = %b", result);

    // Bitwise NOR
    result = ~(a | b);
    $display("a ~| b  = %b", result);

    // Bitwise XNOR
    result = ~(a^ b);
    $display("a ~^ b  = %b", result);

    $display("-------------------------");
    $finish;
  end

endmodule

/*
# a = 1101
# b = 1011
# -------------------------
# a & b   = 1001
# a | b   = 1111
# a ^ b   = 0110
# ~a      = 0010
# a ~& b  = 0110
# a ~| b  = 0000
# a ~^ b  = 1001
# -------------------------
*/
