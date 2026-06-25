/*
=================================================================================================================
- rand cannot be declared in a module rand variables and constraints are class properties, not module variables.
=================================================================================================================
- Constraint blocks must be inside a class
=================================================================================================================
addr = randomize(); ❌❌
This assigns 1 or 0 to addr
----------------------------
handle.randomize() ✅✅
=================================================================================================================
*/

class packet;
  rand bit [7:0] addr;

  constraint c_adder {
    addr > 10;
    addr < 50;
  }

endclass


module tb;
  packet p;
  initial begin
    p = new();
    repeat(5) begin
      if(p.randomize())
        $display("addr = %0d", p.addr);
      else
        $display("Randomization Failed");
    end
  end
endmodule

/*
addr = 19
addr = 20
addr = 35
addr = 40
addr = 19
*/

