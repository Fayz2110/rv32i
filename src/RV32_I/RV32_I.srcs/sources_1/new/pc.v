`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2024 12:32:27 PM
// Design Name: 
// Module Name: pc
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


module pc(
input clk,
input rst,
input [31:0] pc_in,
//input branch_en,
output reg [31:0] pc_out

    );
    reg cnt=1;
    
  
    
    always@(posedge clk)begin
    if (rst)begin
    pc_out=0;
    cnt=1;
    end
    else if (cnt)begin
    pc_out=0;
    cnt=0;
    end
   
  //  else if(branch_en)begin
  //  pc_out=pc_in;
  //  end
    else begin
    pc_out=pc_in;
    end
    end
endmodule
