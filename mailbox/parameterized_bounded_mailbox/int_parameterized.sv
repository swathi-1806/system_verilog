module tb;  
	int value;
  
  mailbox #(int) mbox=new(2);
  	initial begin
    
      mbox.put(10); 
      mbox.put(20);
      mbox.try_put(30);//only we can put 2 values in the mailbox
      
      mbox.get(value);
      $display("value=%0d",value);
     
      mbox.get(value);
      $display("value=%0d",value);
      
      mbox.get(value);
      $display("value=%0d",value);// it wont print bcoz mailbox has two value that we already retrived usg get() two times
            
    end
endmodule

/*

output:
# value=10
# value=20
*/
