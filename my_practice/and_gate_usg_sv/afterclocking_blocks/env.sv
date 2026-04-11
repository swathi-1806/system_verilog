class env;

    agent agt;
    scoreboard sbd;

    mailbox #(transaction) gen2bfm;
    mailbox #(transaction) mon2sbd;
    mailbox #(transaction) mon2cov;

    function new(virtual and_if vif);

         // create ONCE here
        gen2bfm = new();
        mon2sbd = new();
        mon2cov = new();
      
       agt = new(vif, gen2bfm, mon2sbd, mon2cov);
       sbd = new(mon2sbd);


    endfunction

    task run();
        fork
            agt.run();
            sbd.run();
        join_none
    endtask

endclass
