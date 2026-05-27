class sample;
    class sample1;
      class sample2;
        static int a;
        int b;
        static function void print();
          $display("static vbariable a=%0d",a);
        endfunction

        function void print1();
          $display("dynamic variable b=%0d",b);
        endfunction
      endclass
    endclass
endclass

module tb;
  sample::sample1::sample2 s;
  initial begin
    sample::sample1::sample2::a=100;
    sample::sample1::sample2::print();
    s=new();
    s.b=200;
    s.print1();
  end
endmodule

/*
# static vbariable a=100
# dynamic variable b=200
*/
