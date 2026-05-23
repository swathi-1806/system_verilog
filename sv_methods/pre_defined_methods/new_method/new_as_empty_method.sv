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
  
