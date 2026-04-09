class generator;
mailbox #(transaction) mbx;

  function new(mailbox #(transaction) mbx);
	this.mbx=mbx;
endfunction

task run();
	transaction tx;
		repeat(5)begin
			tx=new();
			assert(tx.randomize());
			mbx.put(tx);
		end
	endtask
endclass

