/*
if we did not create any instance to module , instance for that module will be automatically created in root space with the same module name
just like between class3 and class4 instance is created in the root space
*/

module class1;
  int a;
endmodule

module class2;
  class1 c1();
endmodule

module class3;
  class2 c2();
endmodule

module class4;
  initial begin
    $root.class3.c2.c1.a=100;
    $display("a=%0d",$root.class3.c2.c1.a);
  end
endmodule

/*
# a=100
*/
