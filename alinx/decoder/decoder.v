// decoder
//
// the output, which originally is all 1, is acted on by the input to invert the
// $(input)-th bit.
//
// essentially out = (~0) ^ (1 << in).

module decoder(
in,
out
);

parameter encodeWidth = 3;
parameter decodeWidth = 2 ** encodeWidth;

input [encodeWidth - 1 : 0] in;
output [decodeWidth - 1 : 0] out;

wire [encodeWidth - 1 : 0] in;
reg [decodeWidth - 1 : 0] out;

always @in begin
    out = {decodeWidth{1'b1}};
    out[in] = 0;
end

endmodule
