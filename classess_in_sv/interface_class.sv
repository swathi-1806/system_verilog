/*
interface class only consists of only pure virtual function ,
- here we use impliments keyword instead of extends
- multi level inheritance is possible
  ex.(class test impliments mem_tx,apb_tx)

  interface class class_a;
    pure virtual function display_a();
  endclass

  interface class class_b;
    pure virtual function display_b();
  endclass

  class test implements class_a,class_b;
      virtual function void display_a();
          $dsiplay("class_a")
        endfunction

        virtual function void display_a();
          $dsiplay("class_a")
        endfunction
    endclass
        
*/
//==============================================================================================
//interface class
//================================================================================================
interface class payment_if;

  pure virtual function void pay(int amount);

  pure virtual function void display();

endclass



class phonepe implements payment_if;

  virtual function void pay(int amount);
    $display("PhonePe Payment : %0d", amount);
  endfunction

  virtual function void display();
    $display("Payment Method : PhonePe");
  endfunction

endclass



class gpay implements payment_if;

  virtual function void pay(int amount);
    $display("Google Pay Payment : %0d", amount);
  endfunction

  virtual function void display();
    $display("Payment Method : GPay");
  endfunction

endclass



module tb;

  phonepe p_h;
  gpay g_h;

  initial begin

    p_h = new();
    p_h.display();
    p_h.pay(500);

    $display("----------------");
   g_h = new();
    g_h.display();
    g_h.pay(1000);

  end

endmodule
    
/*
# Payment Method : PhonePe
# PhonePe Payment : 500
# ----------------
# Payment Method : GPay
# Google Pay Payment : 1000
*/
