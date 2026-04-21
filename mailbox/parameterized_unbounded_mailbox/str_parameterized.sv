module tb;
  
  string name;
	int value;
  
  mailbox #(string) mbox=new();
  	initial begin
 
      mbox.put("VLSI_DV");
      mbox.put("system_verilog");
      
      mbox.get(name);
      $display("name=%0s",name);
         
      mbox.get(name);
      $display("name=%0s",name);
            
    end
endmodule


/*
output:-
# name=VLSI_DV
# name=system_verilog
*/
