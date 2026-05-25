class sample;
  rand bit [3:0]a;
  rand bit [3:0]b;
  bit [4:0]c;
  
  function add();
    c=a+b;
  endfunction
  
endclass

module tb;

  sample s;
  initial begin 
    
    repeat(5)begin
    	s= new();  
      	s.randomize();
      	s.add();
        $display("[%0d]+[%0d]=[%0d]",s.a,s.b,s.c);
    end
    
  end
endmodule


/*
# [3]+[4]=[7]
# [5]+[7]=[12]
# [3]+[2]=[5]
# [11]+[15]=[26]
# [4]+[4]=[8]
*/
