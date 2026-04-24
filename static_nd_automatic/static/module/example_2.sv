module tb;  
  //static function
  function void print();
    automatic int a;
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
# a=1
# a=1
# a=1
# a=1
*/
