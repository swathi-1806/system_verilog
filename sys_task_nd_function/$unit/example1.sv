int a=10;
module tb;
  int b;
  initial begin
    b=20;
    $display("a=%0d  b=%0d",a,b);
  end
endmodule

/*
# a=10  b=20
*/
