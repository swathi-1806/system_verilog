class environment;
  generator gen;
  driver drv;
  monitor mon;
  mailbox #(transaction) mbx;

  function new(virtual and_if vif);
    mbx = new();
    gen = new(mbx);
    drv = new(mbx, vif);
    mon = new(vif);
  endfunction

  task run();
    fork
      gen.run();
      drv.run();
      mon.run();
    join
  endtask
endclass
