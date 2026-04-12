`include "and_gate.v"
`include "interface.sv"
`include "transaction.sv"
`include "generator.sv"
`include "bfm.sv"
`include "mon.sv"
`include "cov.sv"
`include "sbd.sv"
`include "agent.sv"
`include "env.sv"

  
module tb;
	and_if vif();
  
	 // Clock generation
    initial begin
        vif.clk = 0;
        forever #5 vif.clk = ~vif.clk;
    end
  
    and_gate dut (.a(vif.a), .b(vif.b), .y(vif.y));

    env e;
	    initial begin
        e = new(vif);
        e.run();
        #200 $finish;
      
    end

endmodule

/*
output:=
# run -all
# 0-->[GEN] a=0110  b=0100
# 0-->[GEN] a=1100  b=1110
# 0-->[GEN] a=1011  b=0010
# 0-->[GEN] a=0010  b=1000
# 0-->[GEN] a=0010  b=0010
------------------------------------
# 5-->[BFM] a=0110  b=0100
# 5-->[MON] a=0000  b=0000  y=00000 
# [PASS]-->a=0000  b=0000  y=00000

# 5-->[COV] a=0000 b=0000
------------------------------------
# 15-->[BFM] a=1100  b=1110
# 15-->[MON] a=0110  b=0100  y=00100 
# [PASS]-->a=0110  b=0100  y=00100

# 15-->[COV] a=0110 b=0100
=====================================
# 25-->[BFM] a=1011  b=0010
# 25-->[MON] a=1100  b=1110  y=01100 
# [PASS]-->a=1100  b=1110  y=01100

# 25-->[COV] a=1100 b=1110
--------------------------------------
# 35-->[BFM] a=0010  b=1000
# 35-->[MON] a=1011  b=0010  y=00010 
# [PASS]-->a=1011  b=0010  y=00010

# 35-->[COV] a=1011 b=0010
---------------------------------------
# 45-->[BFM] a=0010  b=0010
# 45-->[MON] a=0010  b=1000  y=00000 
# [PASS]-->a=0010  b=1000  y=00000

# 45-->[COV] a=0010 b=1000
---------------------------------------
*/
