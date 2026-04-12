//monitor sends observed data to scoreboard and coverage

class monitor;
  int count =0;
//interface declaration
  virtual and_if vif;

//mailbox declaration
mailbox #(transaction)mon2sbd;
mailbox #(transaction)mon2cov;

//constructor
  function new(virtual and_if vif,
 				mailbox #(transaction)mon2sbd,
 				mailbox #(transaction)mon2cov);
    this.vif = vif;
	this.mon2sbd=mon2sbd;
	this.mon2cov=mon2cov;
  endfunction
  

//run task
  task run();
    transaction tx;
    while (count < 5)begin	
	@(vif.mon_cb);   // samples AFTER DUT updates 
	  tx=new();
	  //#5;
	  tx.a = vif.mon_cb.a;
	  tx.b = vif.mon_cb.b;
	  tx.y = vif.mon_cb.y;
	  mon2sbd.put(tx);
	  mon2cov.put(tx);
      count++;
      
	   $display("%0t-->[MON] a=%b  b=%b  y=%b ",$time,tx.a,tx.b,tx.y);

    end
  endtask
endclass




