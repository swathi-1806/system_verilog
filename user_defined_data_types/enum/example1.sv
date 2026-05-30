module traffic_light;

  // Enum declaration
  typedef enum {
    RED,
    YELLOW,
    GREEN
  } light_t;

  light_t current_light;

  initial begin

    current_light = RED;
    $display("Current Light = %s", current_light.name());

    #10;
    current_light = GREEN;
    $display("Current Light = %s", current_light.name());

    #10;
    current_light = YELLOW;
    $display("Current Light = %s", current_light.name());

    #10;
    current_light = RED;
    $display("Current Light = %s", current_light.name());

  end

endmodule

/*
output:

# Current Light = RED
# Current Light = GREEN
# Current Light = YELLOW
# Current Light = RED
*/
