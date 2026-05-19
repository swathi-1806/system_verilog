module logical_operators_demo;

  logic [3:0] a, b;
  logic result;

  initial begin
    a = 4'b0000;  // false (zero)
    b = 4'b1011;  // true  (non-zero)

    $display("a = %b", a);
    $display("b = %b", b);
    $display("-------------------------");

    // Logical AND
    result = a && b;
    $display("a && b  = %0d", result);

    // Logical OR
    result = a || b;
    $display("a || b  = %0d", result);

    // Logical NOT
    result = !a;
    $display("!a      = %0d", result);

    result = !b;
    $display("!b      = %0d", result);

    $display("-------------------------");
    $finish;
  end

endmodule

/*
# a = 0000
# b = 1011
# -------------------------
# a && b  = 0
# a || b  = 1
# !a      = 1
# !b      = 0
# -------------------------
*/
