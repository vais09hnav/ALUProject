`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 12:44:43
// Design Name: 
// Module Name: ALU
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


module ALU (
    input [3:0] a,
    input [3:0] b,
    input [1:0] sel,
    input clk,
    input rst,
    output reg [7:0] result
);

wire [7:0] adder_result, subtractor_result, multiplier_result;
wire [3:0] negation_result;

four_bit_adder_with_feedback adder (
    .a(a),
    .clk(clk),
    .rst(rst),
    .result(adder_result)
);

four_bit_subtractor_with_feedback subtractor (
    .a(a),
    .clk(clk),
    .rst(rst),
    .result(subtractor_result)
);

bit4multiplier multiplier (
    .multiplicand(a),
    .multiplier_input(b),
    .A_B(multiplier_result)
);

four_bit_negation negation (
    .a(a),
    .neg(negation_result)
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        result <= 8'b0;
    end else begin
        case (sel)
            2'b00: result <= adder_result;
            2'b01: result <= subtractor_result;
            2'b10: result <= multiplier_result;
            2'b11: result <= {4'b0, negation_result};
            default: result <= 8'b0;
        endcase
    end
end

endmodule


