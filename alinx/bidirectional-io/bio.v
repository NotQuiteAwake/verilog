/*
bi-directional IO.

en: controls the gate status.
    en = 1: din is passed through
    en = 0: gate closes (set bio to 1'bz, the tri-state.)
    the tri-state is such that another source will be able to change it.

din: signal input

dout: signal output

bio: stores one bit and passes it to dout.
*/

module bio(
en,     // state of the gate
din,    // input
dout,
bio
);

input en;
input din;
output dout;
inout bio;

wire en;
wire din;
wire dout;
wire bio;

// if not outputting, set to tri-state
assign bio = en ? din : 1'bz;

// if another gate is connected to bio and en == 1'bz, dout might well be input
// from the other gate. See testbench file for an example.
assign dout = bio;

endmodule
