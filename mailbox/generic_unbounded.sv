module tb;
  int value;
  real pi;
  logic [5:0] num;
  string name;
  mailbox mbox=new();
  	initial begin
     
  //putting data into the mailbox    
      mbox.put(10);
      mbox.put(3.14);
      mbox.put(32);
      mbox.put("VLSI_DV");
      
  //getting values from the mailbox
      mbox.get(value);//get 1st item from mailbox nd convert it into int & store it in the value
      $display("value=%0d",value);
      
      mbox.get(pi);//get 2nd item from mailbox nd convert it into real & store it in the pi
      $display("pi=%0.2f",pi);
   
      mbox.get(num);
      $display("num=%b",num);//get 3rd item from mailbox nd convert it into logic & store it in the num variable
      
      mbox.get(name);
      $display("name=%0s",name);//get 4th item from mailbox nd convert it into string & store it in the name
      
    end
endmodule


/*
output:-
# value=10
# pi=3.14
# num=100000
# name=VLSI_DV
*/
