module tb;
  int value;
  real pi;

  mailbox mbox=new(2);
  	initial begin
      value=10;
    pi =3.14;
  //putting data into the mailbox    
      mbox.put(10);
      mbox.put(3.14);
      
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
