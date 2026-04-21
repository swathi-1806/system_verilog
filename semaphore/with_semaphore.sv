module tb;
  semaphore sem=new(1);
  initial begin
    sem.get(1);
    $display("agent1 starts writing into the resource");
    #5;
    $display("agent1 completed writing into the resource");
    sem.put(1);
  end
  initial begin
    sem.get(1);
    #2;
    $display("agent2 starts writing into the resource");
    #10;
    $display("agent2 completed writing into the resource");
    sem.put(1);
  end
endmodule

/*
output:-
# agent1 starts writing into the resource
# agent1 completed writing into the resource
# agent2 starts writing into the resource
# agent2 completed writing into the resource
*/
