`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 12:55:41
// Design Name: 
// Module Name: tb_four_bit_negation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_four_bit_negation;

reg [3:0] a;
wire [3:0] neg;

four_bit_negation uut (
    .a(a),
    .neg(neg)
);

initial begin
    a = 4'b0000; #10;
    $display("a = %b, neg = %b", a, neg);

    a = 4'b0001; #10;
    $display("a = %b, neg = %b", a, neg);

    a = 4'b0010; #10;
    $display("a = %b, neg = %b", a, neg);

    a = 4'b0100; #10;
    $display("a = %b, neg = %b", a, neg);

    a = 4'b1000; #10;
    $display("a = %b, neg = %b", a, neg);

    a = 4'b1111; #10;
    $display("a = %b, neg = %b", a, neg);

    $stop;
end

endmodule

