`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 12:47:39
// Design Name: 
// Module Name: SUBTRACTOR
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


module four_bit_subtractor_with_feedback (
    input [3:0] a,
    input clk,
    input rst,
    output reg [7:0] result
);

reg [3:0] b;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        b <= 4'b0000;
        result <= 8'b0;
    end else begin
        result <= {4'b0, a - b};
        b <= result[3:0];
    end
end

endmodule

