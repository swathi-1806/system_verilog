class bank;

  string bank_name;

  // Nested class
  class account;

    string acc_holder;
    int balance;

    function void display();
      $display("Account Holder = %s", acc_holder);
      $display("Balance        = %0d", balance);
    endfunction

  endclass

  function void show_bank();
    $display("Bank Name = %s", bank_name);
  endfunction

endclass



module tb;

  bank b_h;
  bank::account a_h;

  initial begin

    // Bank object
    b_h = new();
    b_h.bank_name = "SBI";

    // Display
    b_h.show_bank();

    // Account object
    a_h = new();
    a_h.acc_holder = "Swathi";
    a_h.balance = 50000;
    a_h.display();

  end

endmodule

/*
# Bank Name = SBI
# Account Holder = Swathi
# Balance        = 50000
*/
