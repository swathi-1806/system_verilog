class driver;
	mailbox #(transaction) gen2bfm;
	virtual and_if vif;

  function new(mailbox #(transaction) gen2bfm,virtual and_if vif);
	this.mbx=mbx;
	this.vif=vif;
endfunction

task run();
	transaction tx;
	forever begin
		mbx.get(tx);
		vif.a<=tx.a;
		vif.b<=tx.b;
		#10;
	end
endtask
endclass

