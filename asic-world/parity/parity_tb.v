`include "parity.v"

module parity_tb(
a,
b,
c,
d,
y
);

output a;
output b;
output c;
output d;

input y;

reg a;
reg b;
reg c;
reg d;

wire y;

initial begin
    $display("a\tb\tc\td\ty");
    $monitor("%b\t%b\t%b\t%b\t%b", a, b, c, d, y);
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    #5 a = 1;
    #5 b = 1;
    #5 c = 1;
    #5 d = 1;
    #5 c = 0;
    #10 $finish;
end

parity test_parity(
.a      (a),
.b      (b),
.c      (c),
.d      (d),
.y      (y)
);

endmodule
