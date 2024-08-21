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
  initial begin
        $readmemh("mem.txt", memory); // Use $readmemb for binary file
        cnt=1;
    end
  
 always @(posedge clk or pc_in) begin
 if(rst)begin
 for(i=0;i<=4095;i=i+1)begin
    memory[i]=0;
    data_out=0;
    
    $readmemh("mem.txt", memory);
    end
 end
 else begin
 pc=pc_in[31:2];
 data_out=memory[pc_in[31:2]];
 end
 
 
 end
 
 initial begin
     // Display a message with time and values
     $monitor("At time %0t: Value of signal pc_in = %0d, Value of signal data_out = %0d", $time, pc_in[31:2], data_out);
 end
    
endmodule
