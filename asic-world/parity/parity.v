// returns 1 if input bits have odd total number of 1's.
// see wikipedia on parity function.

module parity(
a,
b,
c,
d,
y   // output
);

input a;
input b;
input c;
input d;

output y;

wire a;
wire b;
wire c;
wire d;
wire y;

// internal connections for parity on two bits.
wire y0;
wire y1;

// note order for xor: y0 is the output.
xor p0(y0, a, b);

xor p1(y1, c, d);

xor p(y, y0, y1);

endmodule
