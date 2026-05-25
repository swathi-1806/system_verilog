//$monotor Prints automatically whenever any argument value changes.

module tb;

  int a;

  initial begin
    $monitor("TIME=%0t a=%0d", $time, a);

    a = 5;
    #10 a = 15;
    #10 a =15;
    #10 a = 25;
  end

endmodule

/*
# TIME=0 a=5
# TIME=10 a=15
# TIME=30 a=25
*/
