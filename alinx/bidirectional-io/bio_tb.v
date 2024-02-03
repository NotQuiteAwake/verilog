`include "bio.v"
`timescale 1 ns/1 ns // timescale <time unit>/<simulation precision>

module bio_tb(
en0,
din0,
dout0,
en1,
din1,
dout1,
bio
);

output en0;
output din0;
output en1;
output din1;

input dout0;
input dout1;

inout bio;

reg en0;
reg din0;
reg en1;
reg din1;

wire dout0;
wire dout1;

wire bio;

initial begin
    $dumpfile("bio_tb.vcd");
    $dumpvars(0, bio_tb);
    din0 = 0;
    din1 = 0;
    en0 = 1;
    en1 = 0;
    #1000;
    en1 = 1;
    en0 = 0;
/*  disaster!
    #5000;
    en1 = 1;
    en0 = 1;
*/
    #1000 $finish;
end

// generate random inputs
always #({$random} % 100) din0 = ~din0;
always #({$random} % 100) din1 = ~din1;

bio b1(
.en     (en0),
.din    (din0),
.dout   (dout0),
.bio    (bio)
);

bio b2(
.en     (en1),
.din    (din1),
.dout   (dout1),
.bio    (bio)
);

endmodule
