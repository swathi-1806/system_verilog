class eth_pkt;
  rand bit [55:0]preamble;
  rand bit [7:0]sof;
  rand bit [47:0]sa;
  rand bit [47:0]da;
  rand bit [15:0]len;
       bit [31:0]crc; 
  rand byte payload[$];

  function new();
    $display("============passing values===========");
    preamble = 100;
    sof = 200;
    sa = 300;
    da = 400;
    len = 10;
    crc = 0;
    
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
    pkt=new();
    pkt.print();
  end
endmodule

/*
# ============passing values===========
# ---------------------------------------------------------------------------------------------------------------------
# preamble=100
# sof=200
# sa=300
# da=400
# len=10
# crc=0
# payload='{}
*/
