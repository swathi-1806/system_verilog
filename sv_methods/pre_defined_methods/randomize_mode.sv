class sample;
  rand int a,b;

  function void print();
    $display("a=%0d  b=%0d",a,b);
  endfunction

  function void pre_randomize();
    b.rand_mode(0);//for b no randomization
    a_c.constraint_mode(0);//constraint mode is also 0
  endfunction

  function void post_randomize();
    b=100;
  endfunction

  constraint a_c{
    a inside {[10:50]};
  }
endclass

module tb;
  sample s;
  initial begin
    s=new();
    s.randomize();
    s.print();
  end
endmodule

/*
# a=-770586142  b=100
*/
