`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 12:54:24
// Design Name: 
// Module Name: tb_multiplier
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


module tb_multiplier;

reg [3:0] multiplicand;
reg [3:0] multiplier_input;
wire [7:0] A_B;

bit4multiplier uut (
    .multiplicand(multiplicand),
    .multiplier_input(multiplier_input),
    .A_B(A_B)
);

initial begin
    $monitor("Time = %0d, multiplicand = %b, multiplier_input = %b, A_B = %b", 
             $time, multiplicand, multiplier_input, A_B);

    multiplicand = 4'b0000; multiplier_input = 4'b0000; #10;
    
    multiplicand = 4'b0011; multiplier_input = 4'b0010; #10;
    multiplicand = 4'b0101; multiplier_input = 4'b0110; #10;
    multiplicand = 4'b0111; multiplier_input = 4'b0010; #10;
    multiplicand = 4'b1001; multiplier_input = 4'b0101; #10;
    multiplicand = 4'b1111; multiplier_input = 4'b1111; #10;

    $stop;
end

endmodule

