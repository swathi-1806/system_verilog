//user defined vompare method

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

  function eth_pkt copy(input eth_pkt ep1);
    eth_pkt ep2;
    ep2 =new();
    ep2.preamble = ep1.preamble;
    ep2.sof      = ep1.sof;
    ep2.sa       = ep1.sa;
    ep2.da       = ep1.da;
    ep2.len      = ep1.len;
    ep2.crc      = ep1.crc;
    ep2.payload  = ep1.payload;
    return ep2;
  endfunction
  
  function bit compare(input eth_pkt ep1,ep2);
    if(ep1.preamble == ep2.preamble &&
       ep1.sof == ep2.sof &&
       ep1.sa == ep2.sa &&
       ep1.da == ep2.da &&
       ep1.len == ep2.len &&
       ep1.crc == ep2.crc &&
       ep1.payload == ep2.payload
      )
      return 1;
    else return 0;
  endfunction
  
endclass


module tb;
  eth_pkt pkt1,pkt2;
  initial begin
    pkt1=new();
    pkt1.randomize();
    pkt1.print("pkt1");
    pkt2=pkt1.copy(pkt1);
    pkt2.print("pkt2");
    
    if(pkt1.compare(pkt1,pkt2))
      $display("both pkts are same");
    else
      $display("both pkts are not same");
  end
endmodule

/*
# -------------------------------------------pkt1----------------------------------------------------------
# preamble=14906476018882073
# sof=251
# sa=210838264658979
# da=197270863703325
# len=61323
# crc=0
# payload='{}
# -------------------------------------------pkt2----------------------------------------------------------
# preamble=14906476018882073
# sof=251
# sa=210838264658979
# da=197270863703325
# len=61323
# crc=0
# payload='{}
# both pkts are same
*/
