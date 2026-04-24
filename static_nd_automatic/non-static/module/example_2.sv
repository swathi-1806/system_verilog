module tb;

  
  //automatic function
   function automatic void print();
    int a;
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
-->What is a here?
  - a is a local variable
  - Function is automatic
  - New a is created every call
  - Starts from default value 0 every time
# a=1
# a=1
# a=1
# a=1
# a=1
*/
