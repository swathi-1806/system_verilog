class eth_pkt;
  rand bit [55:0]preamble;
  rand bit [7:0]sof;
  rand bit [47:0]sa;
  rand bit [47:0]da;
  rand bit [15:0]len;
       bit [31:0]crc; 
  rand byte payload[$];

  function new(input bit[55:0]a,bit[7:0]b,bit[47:0]c,bit [47:0]d,[15:0]e);
    $display("============with arguments===========");
    preamble = a;
    sof = b;
    sa = c;
    da = d;
    len = e;
  endfunction
  
  function void pre_randomize();
    preamble.rand_mode(0);
    sof.rand_mode(0);
    sa.rand_mode(0);
    da.rand_mode(0);
    len.rand_mode(0);
    payload.rand_mode(1);
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
    pkt=new(500,100,400,400,15);
    pkt.randomize();
    pkt.print();
  end
endmodule
  
/*
# ============with arguments===========
# ---------------------------------------------------------------------------------------------------------------------
# preamble=500
# sof=100
# sa=400
# da=400
# len=15
# crc=0
# payload='{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31, -124, -1, 6, 115}
*/
