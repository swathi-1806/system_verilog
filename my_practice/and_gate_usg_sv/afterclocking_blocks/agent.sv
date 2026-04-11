class agent;

    generator gen;
    bfm       bfm;
    monitor   mon;
    coverage  cov;

    function new(virtual and_if vif,
                 mailbox #(transaction) gen2bfm,
                 mailbox #(transaction) mon2sbd,
                 mailbox #(transaction) mon2cov);

        gen = new(gen2bfm);
        bfm = new(vif, gen2bfm);
        mon = new(vif, mon2sbd, mon2cov);
        cov = new(mon2cov);
    endfunction

    task run();
        fork
            gen.run();
            bfm.run();
            mon.run();
            cov.run();
        join_none
    endtask

endclass
