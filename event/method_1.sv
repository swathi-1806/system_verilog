module tb;
  event e1,e2,e3;
  	initial begin
      wait(e3.triggered());
      $display("statement_1");
    end
  	initial begin
      wait(e2.triggered());
      $display("statement_2");
      ->e3;
    end
 	 initial begin
       wait(e1.triggered());
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
