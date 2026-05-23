class sample;
  rand bit[4:0]a;
  randc bit[4:0]b;
  function void print();
    $display("a=%0d  || b=%0d",a,b);
  endfunction
  constraint a_b_c{
    a inside {[0:15]};
    b inside {[15:25]};
  }
  endclass

module tb;
  sample s;
  initial begin
    repeat(10)begin
      s=new();
      s.randomize();
      s.print();
    end
  end
endmodule

/*
# a=3  || b=21
# a=6  || b=17
# a=9  || b=25
# a=3  || b=18
# a=4  || b=18
# a=9  || b=21
# a=7  || b=15
# a=0  || b=17
# a=0  || b=16
# a=9  || b=17
*/
