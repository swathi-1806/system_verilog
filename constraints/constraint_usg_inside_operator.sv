class packet;

  rand bit [7:0] a;

  constraint c1_a {
   a inside {5,10,15,20};
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
a = 20
a = 20
a = 15
a = 10
a = 20
a = 10
a = 15
a = 15
a = 10
a = 15
*/
