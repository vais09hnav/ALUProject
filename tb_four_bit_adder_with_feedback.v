`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 12:52:35
// Design Name: 
// Module Name: tb_four_bit_adder_with_feedback
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


module tb_four_bit_adder_with_feedback;

reg [3:0] a;
reg clk;
reg rst;
wire [7:0] result;

four_bit_adder_with_feedback uut (
    .a(a),
    .clk(clk),
    .rst(rst),
    .result(result)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    a = 4'b0011;
    rst = 1;
    #10 rst = 0;
    #100;
    $stop;
end

endmodule

