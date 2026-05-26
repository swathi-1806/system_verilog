class sample;
  
  //properties
  rand bit [3:0]a;
  rand bit [7:0]b;

  //methods
  function void print();
    $display("a=%0d  b=%0d",a,b);
  endfunction

  //constraints
  constraint c_a{
    a inside {[1:15]};
    b inside {[50:100]};
  }

endclass

module tb;
  sample s;
  initial begin
    repeat(5)begin
    s=new();
      s.randomize();
      s.print();
    end
  end
endmodule

/*
# a=4  b=60
# a=6  b=97
# a=4  b=73
# a=12  b=96
# a=5  b=87
*/
  
