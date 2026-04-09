`include "and_gate.v"
`include "interface.sv"
`include "transaction.sv"
`include "generator.sv"
`include "drv.sv"
`include "mon.sv"
`include "env.sv"

module tb;
  and_if vif();
  environment env;

 and_gate dut (
        .a(vif.a),
        .b(vif.b),
        .y(vif.y)
   );

  initial begin
    env = new(vif);
    env.run();
  end

 	initial begin
    	#200;
   		 $finish();
  	end
endmodule
