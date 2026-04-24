class sample;
  static int a;
  
  static function void print();   
    a++;
    $display("a=%0d",a);
  endfunction
endclass

module tb;
  initial begin
    sample::print();
    sample::print();
    sample::print();
    sample::print();
    sample::print();
  end
endmodule

/*
since "a" is a class variable it remebers the value between the calls

# a=1
# a=2
# a=3
# a=4
# a=5
*/
