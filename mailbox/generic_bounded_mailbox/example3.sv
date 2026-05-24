class sample;
  rand int a;
  mailbox mbox = new(10);
  
  function void print(input string str = "");
    $display("a = %0d", a);
  endfunction
  
  constraint a_c{
    a inside {[100:200]};
  }
endclass

module tb;
  sample s;
  int data;
  initial begin
    s=new();
    // Put data into mailbox
    for(int i=0;i<10;i++)begin
      s.randomize();
      s.mbox.put(s.a);
      $display("PUT Data = %0d", s.a);
    end
    
    // Get data from mailbox
      for (int i = 0; i < 5; i++) begin
      s.mbox.get(data);
      $display("GET Data = %0d", data);
      end
  end
endmodule
/*
# PUT Data = 198
# PUT Data = 163
# PUT Data = 120
# PUT Data = 178
# PUT Data = 119
# PUT Data = 166
# PUT Data = 170
# PUT Data = 103
# PUT Data = 132
# PUT Data = 148

# GET Data = 198
# GET Data = 163
# GET Data = 120
# GET Data = 178
# GET Data = 119
*/
