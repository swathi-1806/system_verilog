class eth_pkt;
  rand bit [55:0]preamble;
  rand bit [7:0]sof;
  rand bit [47:0]sa;
  rand bit [47:0]da;
  rand bit [15:0]len;
       bit [31:0]crc; 
  rand byte payload[$];

  function new(input bit[55:0]a=1000,bit[7:0]b=200,bit[47:0]c=3000,bit [47:0]d=4000,[15:0]e=50);
    $display("============with arguments===========");
    preamble = a;
    sof = b;
    sa = c;
    da = d;
    len = e;
  endfunction
  
  function void print();
    $display("---------------------------------------------------------------------------------------------------------------------");
    $display("preamble=%0d",preamble);
    $display("sof=%0d",sof);
    $display("sa=%0d",sa);
    $display("da=%0d",da);
    $display("len=%0d",len);
    $display("crc=%0d",crc);
    $display("payload=%p",payload);
  endfunction
  
  constraint a_c{
    len inside {[10:25]};
    payload.size()==len;
  }
  
endclass

module tb;
  eth_pkt pkt;
  initial begin
     pkt = new();
    $display("b4 override -> default values");
    pkt.print();
    
    pkt=new(,,3500);//overriding sa from 3000->3500
    //pkt.randomize();
    $display("after override");
    pkt.print();
  end
endmodule
  

/*
# ============with arguments===========
# b4 override -> default values
# ---------------------------------------------------------------------------------------------------------------------
# preamble=1000
# sof=200
# sa=3000
# da=4000
# len=50
# crc=0
# payload='{}
# ============with arguments===========
# after override
# ---------------------------------------------------------------------------------------------------------------------
# preamble=1000
# sof=200
# sa=3500
# da=4000
# len=50
# crc=0
# payload='{}
*/
