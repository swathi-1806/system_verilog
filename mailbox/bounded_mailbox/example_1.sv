module tb;
  int value;
  real pi;

  mailbox mbox=new(2);
  	initial begin
      
  //putting data into the mailbox    
      mbox.put(10);
      mbox.put(3.14);
  //the mailbox is full as it is bounded mailbox of 2 so we can't put more data into the mailbox
      
  //getting values from the mailbox
      mbox.get(value);//get 1st item from mailbox nd convert it into int & store it in the value
      $display("value=%0d",value);
      
      mbox.get(value);//get 2nd item from mailbox nd convert it into real & store it in the pi
      $display("pi=%0.2f",pi);
      
    end
endmodule

/*
# value=10
# pi=3.14
*/
