/*
D flip flop with async reset
*/

module dff(
clk,    // clock
rst,    // reset
pre,    // preset
d,      // input signal
q,      // output
nq      // not q
);

input clk;
input rst;
input pre;
input d;

output q;
output nq;

wire clk;
wire rst;
wire pre;
wire d;

reg q;
// reg nq; this won't work

// nq always the opposite of q
assign nq = ~q;

always @ (posedge rst or posedge clk)
begin
    // in posedge rst only this line can be executed, since rst will be 1.
    // desired since rst signal shouldn't change anything else.
    if (rst == 1'b1) begin
        q <= 0;
    end else if (pre == 1'b1) begin
        q <= 1;
    end else begin
        q <= d;
    end
end

endmodule
