/*
randomization method is a call back method
if we call randomize method(s.randomize) it will automatically calls the pre_randomize and post_randomize methods
*/

class sample;
  rand int a,b;
  function void print();
    $display("a=%0d  b=%0d",a,b);
  endfunction

  function void pre_randomize();
    $display("pre_randomization done");
  endfunction

  function void post_randomize();
    $display("post_randomization done");
  endfunction

  constraint a_b{
    a inside {[5:10]};
    b inside {[1:10]};
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
# pre_randomization done
# post_randomization done
# a=7  b=9

# pre_randomization done
# post_randomization done
# a=6  b=10

# pre_randomization done
# post_randomization done
# a=9  b=3

# pre_randomization done
# post_randomization done
# a=6  b=7

# pre_randomization done
# post_randomization done
# a=10  b=2
*/
  
