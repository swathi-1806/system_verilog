//Up to 2 processes can access the shared resource at the same time.

initial begin
  sem.get(1);//takes 1 key at t=0;
  $display("%0t : Agent1 started", $time);//t=0
    #10;
  $display("%0t : Agent1 finished", $time);//t=10;
  sem.put(1);//submits the key at t=10;
  end

  initial begin
    #1;
    sem.get(2);//requires two keys but inly one key is avalible so agent 2 blocks here
    //after two keys submitted then agent 2 starts i.e at t=10;
    $display("%0t : Agent2 started", $time);//t=10
    #8;
    $display("%0t : Agent2 finished", $time);//t=18
    sem.put(2);//two keys will be submitted at t=18
  end

  initial begin
    #2;
    sem.get(1);//need 1 key
    $display("%0t : Agent3 started", $time); //t=2;
    #5;
    $display("%0t : Agent3 finished", $time);//t=7;
    sem.put(1);//agent3 submits  key at t=7; 
  end

endmodule

/*

agent1 and agent 3 runs parllelll
# 0 : Agent1 started
# 2 : Agent3 started
# 7 : Agent3 finished
# 10 : Agent1 finished
# 10 : Agent2 started
# 18 : Agent2 finished

//here we are running agt 1 and agt2 parllelly
*/
