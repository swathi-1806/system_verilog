//if global and local variable has the same variable then local variable shadows the global varible data
int a=10;
module tb;
  int a;
  int b;
  initial begin
    a=50;
    b=20;
    $display("a=%0d  b=%0d",a,b);
  end
endmodule

/*
# run -all
# a=50  b=20
*/
