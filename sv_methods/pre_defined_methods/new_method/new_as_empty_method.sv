class eth_pkt;
  rand bit [55:0]preamble;
  rand bit [7:0]sof;
  rand bit [47:0]sa;
  rand bit [47:0]da;
  rand bit [15:0]len;
       bit [31:0]crc; 
  rand byte payload[$];

  function new();
    $display("new as a empty method");
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
    pkt.randomize();
    pkt.print();
  end
endmodule

/*
# new as a empty method
# ---------------------------------------------------------------------------------------------------------------------
# preamble=14906476018882073
# sof=251
# sa=210838264658979
# da=197270863703325
# len=19
# crc=0
# payload='{-51, -99, -18, -71, -68, -58, 20, 120, 111, 37, 31, -124, -1, 6, 115, 84, -91, 42, 118}
*/
