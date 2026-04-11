//bfm receives tx from the generator and sends those transactions to dut through interface

class bfm;
//mailbox declaration
	mailbox #(transaction) gen2bfm;//same mailbox from generator

//virtual interface declaration
	virtual and_if vif;//to drive dut pins

//constructor
  function new(virtual and_if vif,
               mailbox #(transaction) gen2bfm);
	this.gen2bfm=gen2bfm;
	this.vif=vif;
endfunction

//run task
task run();
	transaction tx;
	forever begin
		gen2bfm.get(tx);//receive tx from generator
			
//drive to DUT
	    @(vif.drv_cb);   // wait for clock edge
		vif.a<=tx.a;
		vif.b<=tx.b;
		$display("%0t-->[BFM] a=%b  b=%b",$time,tx.a,tx.b);
		//#10;
	end
endtask
endclass
