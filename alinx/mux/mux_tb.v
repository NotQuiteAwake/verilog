`include "mux.v"
`timescale 1 ns/1 ns

module mux_tb(
a,
b,
c,
d,
sel,
mout
);

output a;
output b;
output c;
output d;
output [1:0] sel;

input mout;

reg a;
reg b;
reg c;
reg d;
reg [1:0] sel;

wire mout;

initial begin
    $dumpfile("mux_tb.vcd");
    $dumpvars(0, mux_tb);
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    sel = 2'b00;
    #1000 sel = 2'b01;
    #1000 sel = 2'b10;
    #1000 sel = 2'b11;
    #1000 $finish;
end

always #({$random} % 100) a = ~a;
always #({$random} % 100) b = ~b;
always #({$random} % 100) c = ~c;
always #({$random} % 100) d = ~d;

mux test_mux(
.a      (a),
.b      (b),
.c      (c),
.d      (d),
.sel    (sel),
.mout   (mout)
);

endmodule
