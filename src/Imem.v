`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/05/2024 09:29:54 PM
// Design Name: 
// Module Name: Imem
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


module Imem(
input [31:0] pc_in,
input clk,
input rst,
output reg [31:0] data_out

 );
 reg [31:0]memory [4095:0];
 
 always @(posedge clk) begin
 if(rst)begin
 data_out<=0;
 end
 else begin
 data_out<=memory[pc_in[31:2]];
 end
 
 end
    
endmodule
