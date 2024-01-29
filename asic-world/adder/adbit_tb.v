`include "addbit.v"

module addbit_tb(
a,
b,
ci,
sum,
co
);

output a;
output b;
output ci;

input sum;
input co;

reg a;
reg b;
reg ci;

wire sum;
wire co;

initial begin
    $display("time \t a b ci co sum");
    $monitor("%g \t %b %b %b %b %b", $time, a, b, ci, co, sum);

    a = 0;
    b = 0;
    ci = 0;

    #5 a = 1;
    #5 b = 1;
    #5 ci = 1;
    #5 a = 0;
    #10 $finish;
end

addbit test_addbit(
.a  (a),
.b  (b),
.ci (ci),
.co (co),
.sum (sum)
);

endmodule
