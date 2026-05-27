class bank;
  string bank_name;
  function void disp_bk_name(string bank_name);
    $display("bank name : %0s",bank_name);
  endfunction

      class acc_holder1;
        string name;
        int acc_no;
        int balance;
      endclass
  		
  		
  		acc_holder1 a_h1;
        function new();
          a_h1=new();
          a_h1.name = "swathi";
          a_h1.acc_no = 12345;
          a_h1.balance = 5000;
        endfunction

        function void disp_acc_holder1();
          $display("name =%0s",a_h1.name);
          $display("acc_no =%0d",a_h1.acc_no);
          $display("balance =%0d",a_h1.balance);
        endfunction
      endclass

module tb;
  bank b_h;
  
      initial begin
        b_h =new();
        b_h.disp_bk_name("SBI");
        b_h.disp_acc_holder1();
      end
endmodule
          
        
    
/*
# bank name : SBI
# name =swathi
# acc_no =12345
# balance =5000
*/
