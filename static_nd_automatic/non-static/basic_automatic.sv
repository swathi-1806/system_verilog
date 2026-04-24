class sample;
  static int a;//static property
  int b;//non-static property

  //inside the non-static method we can call or use both static and non-static properties
  function void print();
    $display("a=%0d",a);
    $display("b=%0d",b);
  endfunction
endclass

module tb;
  sample s;
  initial begin
    s=new(); //the method is non-static ew need to create memory 
    s.print();
  end
endmodule


/*
output:
a=0
b=0
*/
