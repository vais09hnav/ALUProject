`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 12:48:23
// Design Name: 
// Module Name: MULTIPLIER
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


module bit4multiplier (
    input [3:0] multiplicand,
    input [3:0] multiplier_input,
    output reg [7:0] A_B
);

always @(*) begin
    A_B <= multiplicand * multiplier_input;
end

endmodule

