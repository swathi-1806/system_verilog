int a; //global scope variable

module tb;
  int b;//module scope variable
  
  task run();
    int c;//task_scope variable
  endtask

  initial begin
    a=100;
    b=200;
    $root.tb.run.c=300;

     $display("global scope var a=%0d",a);
    $display("local/module scope var b=%0d",b);
     $display("task scope var c=%0d",$root.tb.run.c);
  end
endmodule


/*
# global scope var a=100
# local/module scope var b=200
# task scope var c=300
*/
