// search for adder on wikipedia.
// this is a full adder.
// add larger bits by using co as ci for the next adder.

module addbit(
a,
b,
ci,     // carry-in bit from a previous less significant add
sum,
co      // carry-output: a more significant bit
);

input a;
input b;
input ci;

output sum;
output co;

wire a;
wire b;
wire ci;
wire sum;
wire co;

assign {co, sum} = a + b + ci;

endmodule
