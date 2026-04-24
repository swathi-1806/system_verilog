class sample;
  static int a;//static property

//in a static method we have to call only static properties onle
  static function void print();
    $display("a=%0d",a); 
  endfunction
endclass

module tb; 
  initial begin
    sample::print();//no need to create memory as the method is static;
  end
endmodule

/*
output:-
a=0
*/
