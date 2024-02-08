`include "decoder.v"
`timescale 1 ns/1 ns

module decoder_tb(
in,
out
);

parameter encodeWidth = 3;
parameter decodeWidth = 2 ** encodeWidth;

output [encodeWidth - 1 : 0] in;
input [decodeWidth - 1 : 0] out;

reg [encodeWidth - 1 : 0] in;
wire [decodeWidth - 1 : 0] out;

initial begin
    $dumpfile("decoder_tb.vcd");
    $dumpvars(0, decoder_tb);

    in = 0;
    #20 in = 3'b001;
    #20 in = 3'b111;
    #20 in = 3'b010;
    #20 $finish;
end

decoder test_decoder(
.in     (in),
.out    (out)
);

endmodule
