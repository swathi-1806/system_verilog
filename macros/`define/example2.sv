`define MAXIMUM(n1,n2) ((n1 > n2) ? n1 : n2)

class sample;

  rand bit [3:0] a;
  rand bit [3:0] b;

endclass


module tb;
  sample s;
  initial begin
    s = new();
    repeat(5) begin
      assert(s.randomize());
      $display("a = %0d  b = %0d  max = %0d",
                s.a,
                s.b,
                `MAXIMUM(s.a,s.b));
    end
  end
endmodule
