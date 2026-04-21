module tb;
  
  string name;
	int value;
  
  mailbox #(string) mbox=new(2);//string parameterized bounded mailbox
  	initial begin
 
     
      mbox.put("VLSI_DV");
      
      mbox.put("system_verilog");
      
      mbox.try_put("UVM");//here we have to use try_put() , otherwise due to blocking nature of put() method we may get error
      
      mbox.get(name);
      $display("name=%0s",name);
     
      mbox.get(name);
      $display("name=%0s",name);
      
      mbox.get(name);
      $display("name=%0s",name);
      
       
    end
endmodule


/*
output:
# name=VLSI_DV
# name=system_verilog
*/
