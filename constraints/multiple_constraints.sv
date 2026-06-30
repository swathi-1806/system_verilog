//================================================================================================
//muktiple constraints
//================================================================================================

class packet;

  rand bit [7:0] a;
  rand bit [15:0] b;

  constraint c1_a {
    a inside {[50:100]};
  }

  constraint c2_b{
    b inside {[1000:1500]};
  }
endclass


module tb;
  packet p;
  
  initial begin
    p = new();
    repeat(10) begin
      if(p.randomize())
        $display("a = %0d", p.a);
        $display("b= %0d", p.b);   
      else
        $display("Randomization Failed");
    end
  end

endmodule
