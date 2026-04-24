class sample;
  
  static function void print();  
    int a;
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
since "a" is function's local variable, and it is non-static so every time memory is created and destroyed
- a starts as 0
- a++ → 1
- destroyed

# a=1
# a=1
# a=1
# a=1
# a=1
*/
