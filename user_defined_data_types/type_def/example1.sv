//sysntax:
//typedef <existing data type><dimension><user_define_data_type_name>

typedef bit[3:0] nibble;
module tb;
  nibble a;
  initial begin
    repeat(5)begin
      a=$random;
      $display("a=%0d",a);
    end
  end
endmodule

/*
# a=4
# a=1
# a=9
# a=3
# a=13
*/
