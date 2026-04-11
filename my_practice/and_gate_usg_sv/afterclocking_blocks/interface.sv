interface and_if;
	logic clk;
    logic [3:0]a, b;
	logic [3:0]y;

	// Driver clocking block
    clocking drv_cb @(posedge clk);
        output a, b;
    endclocking

    // Monitor clocking block
    clocking mon_cb @(posedge clk);
        input #1 a, b, y;//This tells monitor:Sample 1 timestep after clock → after DUT updates.
    endclocking

	
endinterface
