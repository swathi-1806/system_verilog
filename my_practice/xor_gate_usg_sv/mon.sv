class monitor;
  virtual and_if vif;

  function new(virtual and_if vif);
    this.vif = vif;
  endfunction

  task run();
    forever begin
      $display("a=%0b b=%0b y=%0b", vif.a, vif.b, vif.y);
      #10;
    end
  endtask
endclass

