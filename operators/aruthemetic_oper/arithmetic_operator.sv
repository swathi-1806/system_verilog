module arithmetic_operators;

  int a = 20;
  int b = 6;
  int result;

  initial begin
    $display("Initial values: a=%0d, b=%0d", a, b);

    // Addition
    result = a + b;
    $display("Addition (a + b) = %0d", result);

    // Subtraction
    result = a - b;
    $display("Subtraction (a - b) = %0d", result);

    // Multiplication
    result = a * b;
    $display("Multiplication (a * b) = %0d", result);

    // Division
    result = a / b;
    $display("Division (a / b) = %0d", result);

    // Modulus
    result = a % b;
    $display("Modulus (a %% b) = %0d", result);

    // Increment
    a++;
    $display("Increment (a++) = %0d", a);

    // Decrement
    b--;
    $display("Decrement (b--) = %0d", b);

  end

endmodule

/*
# Initial values: a=20, b=6
# Addition (a + b) = 26
# Subtraction (a - b) = 14
# Multiplication (a * b) = 120
# Division (a / b) = 3
# Modulus (a % b) = 2
# Increment (a++) = 21
# Decrement (b--) = 5
*/
