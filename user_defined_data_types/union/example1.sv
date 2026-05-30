module tb;

  union {
    int i;
    byte b[4];
  } data;

  initial begin
    data.i = 32'h12345678;

    $display("i    = %0h", data.i);
    $display("b[0] = %0h", data.b[0]);
    $display("b[1] = %0h", data.b[1]);
    $display("b[2] = %0h", data.b[2]);
    $display("b[3] = %0h", data.b[3]);
  end

endmodule

/*
output
# i    = 12345678
# b[0] = 78
# b[1] = 56
# b[2] = 34
# b[3] = 12
*/
