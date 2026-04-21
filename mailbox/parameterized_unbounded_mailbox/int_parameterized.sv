module tb;
  int value;
  real pi;
  string name;
  int num;
  
  mailbox #(int) mbox=new();//int parameterized unbounded mailbox
  	initial begin
      mbox.put(100);
      mbox.put(3.14);//real is cast to int (pi=3)
      mbox.put("VLSI_DV");//string is cast to int (ASCII packed) 
      mbox.put(10);
      //mailbox[100,3,ascii values(default:1230980182),10]

      
      mbox.get(value);
      $display("value=%0d",value);
      
      mbox.get(pi);
      $display("pi=%0d",pi);
      
      mbox.try_get(name);//if we use get() the code execution stops due blocking nature of the get method , so here we are usg try_get()
      $display("name=%0d",name);//we get empty string
      
      mbox.get(num);
      $display("num=%0d",num);//Now you get the ASCII packed int that came from "VLSI_DV",3rd value from mailbox([100,3,ascii values(default:1230980182),10])
      
      mbox.get(num);
      $display("num=%0d",num);//here we get 4th value i.e. num=10;
      
    end
endmodule

/*
output:
# value=100
# pi=3
# name=
# num=1230980182
# num=10
*/
