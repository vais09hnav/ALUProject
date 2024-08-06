`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 12:51:19
// Design Name: 
// Module Name: tb_ALU
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


module tb_ALU;

reg [3:0] a;
reg [3:0] b;
reg [1:0] sel;
reg clk;
reg rst;
wire [7:0] result;

ALU uut (
    .a(a),
    .b(b),
    .sel(sel),
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
    b = 4'b0001; 
    rst = 1;     
    #10 rst = 0; 

    sel = 2'b00; #20; 

    sel = 2'b01; #20; 

    sel = 2'b10; #20; 

    sel = 2'b11; #20; 

    $stop;
end

endmodule

