`include "dff.v"

module dff_tb(
clk,    // clock
rst,    // reset
pre,    // preset
d,      // input signal
q,      // output
nq      // not q
);

output clk;
output rst;
output pre;
output d;

input q;
input nq;

reg clk;
reg rst;
reg pre;
reg d;

wire q;
wire nq;

always begin
    #5 clk = ~clk;
end

initial begin
    $dumpfile("dff_tb.vcd");
    $dumpvars(0, dff_tb);
    $display("time\tclk\trst\tpre\td\tq");
    $monitor("%g\t%b\t%b\t%b\t%b\t%b", $time, clk, rst, pre, d, q);

    clk = 0;
    rst = 0;
    pre = 0;
    d = 0;

    #10 d = 1;
    #10 d = 0;
    #10 pre = 1;
    #10 rst = 1;
    #10 d = 1;
    #10 rst = 0;
        pre = 0;
    #10 $finish;
end

dff test_dff(
.clk    (clk),
.rst    (rst),
.pre    (pre),
.d      (d),
.q      (q),
.nq     ()  // not connected
);

endmodule
