//Pauses simulation temporarily.

module tb;

  initial begin
    $display("Before stop");

    #10;
    $stop;

    $display("After stop");
  end

endmodule
