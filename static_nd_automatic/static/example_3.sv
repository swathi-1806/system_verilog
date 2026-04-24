class sample;
  
  static function void print();  
    static int a;
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
variable keeps value between calls
# a=1
# a=2
# a=3
# a=4
# a=5
*/
