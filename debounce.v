`timescale 1ns / 1ps

module debounce(input pb_1,clk,output pb_out);
wire Q1,Q2;

my_dff d1(clk,pb_1,Q1);
my_dff d2(clk,Q1,Q2);
assign pb_out = Q1 & (~Q2);

endmodule
// D-flip-flop for debouncing module 
module my_dff(input DFF_CLOCK, D, output reg Q);

    always @ (negedge DFF_CLOCK) begin
        Q <= D;
    end
endmodule