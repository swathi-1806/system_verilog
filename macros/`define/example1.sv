`define MAXIMUM \
function int max(input int n1,n2);\
  max = (n1>n2)?n1:n2;\
endfunction

class sample;
  rand bit [3:0]a;
  rand bit [3:0]b;
  `MAXIMUM
endclass


module tb;
sample s;
  
	initial begin
  	s=new();
  		repeat(5)begin
    		s.randomize();
          $display("a = %d  b = %d  max = %0d",
                s.a, s.b,
                s.max(s.a, s.b));    
 		 end
	end
endmodule

 /*
output:
# a =  3  b =  4  max = 4
# a =  4  b =  3  max = 4
# a = 14  b =  3  max = 14
# a =  5  b =  4  max = 5
# a =  8  b =  3  max = 8
 */
