//Stops the simulation completely.after $finish no statements will be executed

module tb;

  initial begin
    $display("Simulation Started");

    #20;

    //$display("Simulation Ended");
    $finish;
    $display("Simulation Ended");
  end

endmodule

/*
# Simulation Started
*/
