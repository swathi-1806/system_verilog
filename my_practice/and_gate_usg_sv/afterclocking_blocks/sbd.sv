class scoreboard;
	mailbox #(transaction) mon2sbd;

//constuctor
function new(mailbox #(transaction) mon2sbd);
	this.mon2sbd = mon2sbd;
endfunction

//run task
task run();
	transaction tx;
  bit [3:0]expected;
		forever begin
			mon2sbd.get(tx);
				expected=tx.a & tx.b;
          if(tx.y == expected)
					$display("[PASS]-->a=%b  b=%b  y=%b",tx.a,tx.b,tx.y);
				else
                  $display("[FAIL] a=%b b=%b y=%b exp=%b",tx.a, tx.b, tx.y, expected);
		end
endtask
endclass

