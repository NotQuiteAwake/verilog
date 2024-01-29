`include "counter.v"

module counter_tb();

reg clock;
reg reset;
reg enable;

wire [3:0] counter_out;

initial begin
    $display ("time \t clk \t rst \t enable \t counter_out");
    $monitor ("%g \t %b \t %b \t %b \t %b", $time, clock, reset, enable, counter_out);
    clock = 1;
    reset = 0;
    enable = 0;

    #10 reset = 1;
    #10 reset = 0;
    #10 enable = 1;
    #50 enable = 0;
    #10 reset = 1;
    #10 reset = 0;
    #5 $finish;

end

always begin
    #5 clock = ~clock;
end

counter test_counter(clock, reset, enable, counter_out);

endmodule
