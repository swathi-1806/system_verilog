class packet;

  rand bit [7:0] a;

  constraint c_adder {
    a inside {[50:100]};
  }

endclass


module tb;

  packet p;

  initial begin
    p = new();

    repeat(10) begin
      if(p.randomize())
        $display("a = %0d", p.a);
      else
        $display("Randomization Failed");
    end
  end

endmodule

/*
a = 60
a = 62
a = 81
a = 88
a = 61
a = 56
a = 98
a = 62
a = 80
a = 63
*/
