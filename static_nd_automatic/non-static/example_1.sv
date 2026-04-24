class sample;
  int a;
  function void print();
    a++;
    $display("a=%0d",a);
  endfunction
endclass

module tb;
  sample s;
  initial begin
    s=new();//memory is created
    //since a is a class variable it is stored in a object(s)
    //a=0 after increment -->a=1; and a is used inside the object "s"
    s.print();//1
    s.print();//2
    s.print();//3
    s.print();//4
    s.print();//5
  end
endmodule


/*
------------------------------------------------------------------------------------------------------------------------------------------------------------
since a is class variable , it remembers values between each call .
------------------------------------------------------------------------------------------------------------------------------------------------------------
output:
# a=1
# a=2
# a=3
# a=4
# a=5
*/
