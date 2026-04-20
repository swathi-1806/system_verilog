module tb;
  int value;
  real pi;
  logic [5:0] num;
  string name;
  mailbox mbox=new(2);
  	initial begin
      
      //putting data into the mailbox    
      mbox.put(10);
      mbox.put(3.14);
      //the data is stored in the mailboc[10,3.14] and the mailbox is full
      
      //getting values from the mailbox
      mbox.get(value);//get 1st item from mailbox nd convert it into int & store it in the value
      $display("value=%0d",value);
      
      mbox.get(pi);//get 2nd item from mailbox nd convert it into real & store it in the pi
      $display("pi=%0.2f",pi);
      //now we retrieved the data from the mailbox ,so now mailbox is empty . duw to this we can add more values into the mailbox
      
      
      mbox.put(32);
      mbox.put("VLSI_DV");
      
      mbox.get(num);
      $display("num=%b",num);
      mbox.get(name);
      $display("name=%0s",name);
      
    end
endmodule


/*
output:-
# value=10
# pi=3.14
# num=100000
# name=VLSI_DV
*/
