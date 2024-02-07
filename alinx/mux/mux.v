/*
mux, or multiplexer.

outputs one of the signals from a, b, c, d, based on the sel input.

the output is updated every time an input changes.
*/

module mux(
a,
b,
c,
d,
sel,
mout
);

input a;
input b;
input c;
input d;
input [1:0] sel;

output mout;

wire a;
wire b;
wire c;
wire d;
wire [1:0] sel;

reg mout;

always @(sel or a or b or c or d)
begin
    case(sel)
        2'b00 : mout = a;
        2'b01 : mout = b;
        2'b10 : mout = c;
        2'b11 : mout = d;
    endcase
end

endmodule
