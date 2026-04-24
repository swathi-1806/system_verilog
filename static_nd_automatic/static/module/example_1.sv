// Code your testbench here
// or browse Examples
module tb;
 int a;//static by default
  
  //static function
  function void print();
    a++;
    $display("a=%0d",a);
  endfunction
  
  initial begin
    print();
    print();
    print();
    print();
    print();
  end
endmodule

/*
# a=1
# a=2
# a=3
# a=4
# a=5
*/
