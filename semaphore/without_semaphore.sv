module tb;
  semaphore sem=new();
  initial begin
    $display("agent1 starts writing into the resource");
    #5;
    $display("agent1 completed writing into the resource");
  end
  initial begin
    #2;
    $display("agent2 starts writing into the resource");
    #10;
    $display("agent2 completed writing into the resource");
  end
endmodule

/*
output:-
# agent1 starts writing into the resource
# agent2 starts writing into the resource
# agent1 completed writing into the resource
# agent2 completed writing into the resource
*/
