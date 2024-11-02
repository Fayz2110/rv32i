`timescale 1ns / 1ps
//`include "memory.txt"
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
 reg cnt;
 reg[31:0] pc;
 integer i;
 /* initial begin
        $readmemh("mem.txt", memory); // Use $readmemb for binary file
        
    end */
  
 always @( pc_in) begin
  $readmemh("mem.txt", memory); 
 
 pc=pc_in[31:2];
 data_out=memory[pc_in[31:2]];
 
 end
 
 always@(rst) begin
 if(rst)begin
 

  for(i=0;i<=4095;i=i+1)begin
     memory[i]<=0;
     data_out<=0;
     
     $readmemh("mem.txt", memory);
     end
  end
  end
    
endmodule
