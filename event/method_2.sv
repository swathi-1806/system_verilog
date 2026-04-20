module tb;
  event e1,e2,e3;
  	initial begin
      @(e3);
      $display("statement_1");
    end
  	initial begin
      @(e2);
      $display("statement_2");
      ->e3;
    end
 	 initial begin
       @(e1);
       $display("statement_3");
       ->e2;
    end
 	 initial begin
       $display("statement_4");
       ->e1;
    end
endmodule
/*
output:-
# statement_4
# statement_3
# statement_2
# statement_1
*/
