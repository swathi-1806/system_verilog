class transaction;
  rand bit [3:0]a, b;
  bit  [4:0]y;

  function void display(string name);
  	$display("[%s] a=%0b b=%0b y=%0b", name, a, b, y);
  endfunction
endclass
