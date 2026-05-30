class bank_account;

  typedef struct {
    string name;
    int acc_no;
    int balance;
  } account_t;

  account_t acc;

  function new(string n, int a, int b);
    acc.name    = n;
    acc.acc_no  = a;
    acc.balance = b;
  endfunction

  function void display();
    $display("Name    : %s", acc.name);
    $display("Acc No  : %0d", acc.acc_no);
    $display("Balance : %0d", acc.balance);
  endfunction

endclass


module tb;

  bank_account b1;

  initial begin
    b1 = new("Swathi", 12345, 50000);
    b1.display();
  end

endmodule

/*
output:-
# Name    : Swathi
# Acc No  : 12345
# Balance : 50000
*/
