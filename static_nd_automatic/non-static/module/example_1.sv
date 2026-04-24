module tb;
 int a;//satic variable
  
  //automatic function
   function automatic void print();
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
  - a is a module variable
  - Module variables have static lifetime
  - Only one copy exists for the whole simulation
  - The function is automatic, but it is modifying a static variable
output
# a=1
# a=2
# a=3
# a=4
# a=5
*/
