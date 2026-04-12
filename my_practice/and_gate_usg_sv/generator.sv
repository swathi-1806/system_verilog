//it generates tx and sends those tx to bfm

class generator;
mailbox #(transaction) gen2bfm;

function new(mailbox #(transaction) gen2bfm);
	this.gen2bfm=gen2bfm;
endfunction

task run();
	transaction tx;
		repeat(5)begin
			tx=new();
			assert(tx.randomize());
			$display("%0t-->[GEN] a=%b  b=%b",$time,tx.a,tx.b);
			gen2bfm.put(tx);
			//#10;
		end
	endtask
endclass

