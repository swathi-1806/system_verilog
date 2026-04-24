class sample;
  
  function void print();
    int a;
    a++;
    $display("a=%0d",a);
  endfunction
endclass

module tb;
  sample s;
  initial begin
    s=new();
    s.print();//1
    s.print();//1
    s.print();//1
    s.print();//1
    s.print();//1
  end
endmodule

/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
since a is declared inside the function 
so, whenever print() is called
1)new memory is created for varable a;
2)a starts at 0-->a=0;
3)after increment a++--->a=1;
4)function ends and memory is destroyed
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
# a=1
# a=1
# a=1
# a=1
# a=1
*/
