/*if global variable and local variable has the same variable name then,
- we can access through two different ways
  1) usg scope resolution operator
      $unit::<var_neme>;
  2) usg packages
  syntax;
      package_name::<var_name>;

      
      package <package_name>
          var_name = value;
      endpackage
      module top;
        import <package_name>::*;
        ----
      endmodule
    */

int a=10;
module tb;
  int a;
  int b;
  initial begin
    a=50;
    b=20;
    $display("local a =%0d  b=%0d",a,b);
    $display("global a =%0d",$unit::a);
  end
endmodule

/*
# local a =50  b=20
# global a =10
*/
//---------------------------------------------------------------------------------------------------------
/*
package global_pkg;
int a=10;
endpackage

module tb;
  import global_pkg::*;
  int a;
  int b;
  initial begin
    a=50;
    b=20;
    $display("local  a =%0d  b=%0d",a,b);
    $display("global a =%0d",global_pkg::a);
  end
endmodule

/*
# local a =50  b=20
# global a =10
*/
*/
