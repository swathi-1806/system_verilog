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
      if(p.randomize())begin
        $display("a = %0d", p.a);
        $display("b= %0d", p.b);
		$display("--------------");
		end
      else begin
        $display("Randomization Failed");
      end
    end
  end

endmodule

/*
output:
# a = 62
# b= 1313
# --------------
# a = 98
# b= 1378
# --------------
# a = 78
# b= 1134
# --------------
# a = 56
# b= 1048
# --------------
# a = 74
# b= 1266
# --------------
# a = 88
# b= 1165
# --------------
# a = 67
# b= 1397
# --------------
# a = 76
# b= 1331
# --------------
# a = 82
# b= 1331
# --------------
# a = 58
# b= 1426
# --------------

*/

