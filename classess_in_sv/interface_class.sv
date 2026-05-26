interface class payment_if;

  pure virtual function void pay(int amount);

  pure virtual function void display();

endclass



class phonepe implements payment_if;

  function void pay(int amount);
    $display("PhonePe Payment : %0d", amount);
  endfunction

  function void display();
    $display("Payment Method : PhonePe");
  endfunction

endclass



class gpay implements payment_if;

  function void pay(int amount);
    $display("Google Pay Payment : %0d", amount);
  endfunction

  function void display();
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
