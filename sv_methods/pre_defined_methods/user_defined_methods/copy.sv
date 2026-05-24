class eth_pkt;
  rand bit [55:0]preamble;
  rand bit [7:0]sof;
  rand bit [47:0]sa;
  rand bit [47:0]da;
  rand bit [15:0]len;
  bit [31:0]crc;
  rand byte payload[$];

  function void print(input string str = "eth_pkt");
    $display("-------------------------------------------%0s----------------------------------------------------------",str);
    $display("preamble=%0d",preamble);
    $display("sof=%0d",sof);
    $display("sa=%0d",sa);
    $display("da=%0d",da);
    $display("len=%0d",len);
    $display("crc=%0d",crc);
    $display("payload=%p",payload);
  endfunction

  function void copy(input eth_pkt ep1, output eth_pkt ep2);
    ep2 =new();
    ep2.preamble = ep1.preamble;
    ep2.sof      = ep1.sof;
    ep2.sa       = ep1.sa;
    ep2.da       = ep1.da;
    ep2.len      = ep1.len;
    ep2.crc      = ep1.crc;
    ep2.payload  = ep1.payload;
  endfunction
  
  constraint a_c{
    len inside {[10:25]};
    payload.size()==len;
  }
  
endclass


module tb;
  eth_pkt pkt1,pkt2;
  initial begin
    pkt1=new();
    pkt1.randomize();
    pkt1.print("pkt1");
    pkt1.copy(pkt1,pkt2);
    pkt2.print("pkt2");
  end
endmodule

/*
# -------------------------------------------pkt1----------------------------------------------------------
# preamble=14906476018882073
# sof=251
# sa=210838264658979
# da=197270863703325
# len=19
# crc=0
# payload='{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31, -124, -1, 6, 115, 84, -91, 42, 118}
# -------------------------------------------pkt2----------------------------------------------------------
# preamble=14906476018882073
# sof=251
# sa=210838264658979
# da=197270863703325
# len=19
# crc=0
# payload='{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31, -124, -1, 6, 115, 84, -91, 42, 118}
*/
