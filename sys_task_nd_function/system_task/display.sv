module tb;

  int a = 10;
  int b = 20;

  initial begin
    $display("a = %0d", a);
    $display("b = %0d", b);
    $display("sum = %0d", a+b);
  end

endmodule

/*
a = 10
b = 20
sum = 30
*/
