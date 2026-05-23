class sample;
  rand bit [3:0]a;
  rand bit [3:0]b;
  bit [4:0]c;
  
  function add(input int p,q,output int r);
    r=p+q;
  endfunction
  
endclass

module tb;
  integer seed_1;
  sample s;
  initial begin 
    seed_1=2005;
   
    repeat(5)begin
    	s= new();
      	s.srandom(seed_1);
      	assert(s.randomize());
      	s.add(s.a,s.b,s.c);
      $display("[%0d]+[%0d]=[%0d]",s.a,s.b,s.c);
    end
    
  end
endmodule

/*
output
# [3]+[4]=[7]
# [3]+[4]=[7]
# [3]+[4]=[7]
# [3]+[4]=[7]
# [3]+[4]=[7]
*/
