class traffic_light;

  typedef enum {
    RED,
    YELLOW,
    GREEN
  } light_t;

  rand light_t current_light;

  function void print();
    $display("Current Light = %s", current_light.name());
  endfunction

endclass


module tb;

  traffic_light tl;

  initial begin
    tl = new();

    repeat(10) begin
      assert(tl.randomize());
      tl.print();
      #10;
    end

  end

endmodule

/*
output:-
# Current Light = YELLOW
# Current Light = GREEN
# Current Light = RED
# Current Light = RED
# Current Light = GREEN
# Current Light = GREEN
# Current Light = GREEN
# Current Light = GREEN
# Current Light = RED
# Current Light = RED
*/
