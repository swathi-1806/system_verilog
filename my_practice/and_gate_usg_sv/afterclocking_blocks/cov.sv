class coverage;
    mailbox #(transaction) mon2cov;
    transaction tx;

    covergroup cg;
        coverpoint tx.a;
        coverpoint tx.b;
        cross tx.a, tx.b;
    endgroup

    function new(mailbox #(transaction) mon2cov);
        this.mon2cov = mon2cov;
        cg = new();
    endfunction

    task run();
        forever begin
            mon2cov.get(tx);
            cg.sample();
			$display("%0t-->[COV] a=%b b=%b",$time, tx.a, tx.b);
        end
    endtask
endclass
