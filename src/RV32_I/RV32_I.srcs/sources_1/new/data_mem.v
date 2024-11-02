`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2024 04:53:13 PM
// Design Name: 
// Module Name: data_mem
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


module data_mem(

input wire clk,rst,
input [31:0] address,
input [31:0] data,
input [1:0] mask,
input wire wrt_en,rd_en,
output reg [31:0] data_out

    );
    reg [31:0]d_memory [4095:0];
    reg [31:0]address_hld;
    integer i;
    
    
    always@(rd_en or address or data)begin 
    
    if(rd_en)begin 
    address_hld=address;
     case(mask)
    2'b01:begin
            address_hld=address_hld%4;
            
            if(address_hld==0)begin
            data_out=d_memory[address[31:2]][7:0];
            end
            else if(address_hld==1)begin
            data_out=d_memory[address[31:2]][15:8];
            end
            else if(address_hld==2)begin
            data_out=d_memory[address[31:2]][23:16];
            end
            else if(address_hld==3)begin
             data_out=d_memory[address[31:2]][31:24];
             end
    
    end
     2'b10:begin
      address_hld=address_hld%2;
      if(address_hld==0)begin
      data_out=d_memory[address[31:2]][15:0];
      end
      else if(address_hld==1)begin
      data_out=d_memory[address[31:2]][31:0];
      end
     end
     
     2'b11:begin
            data_out= d_memory[address[31:2]];
            end
   
    
     endcase
     end
     end
    
    always@( rst)begin
    
    if(rst)begin
    for(i=0;i<=4095;i=i+1)begin
    d_memory[i]<=0;
    end
    end
    end
    
    always@(posedge clk)begin
     if(wrt_en) begin
      address_hld=address;
    case(mask)
        2'b01:begin
        address_hld=address_hld%4;
        
        if(address_hld==0)begin
        d_memory[address[31:2]][7:0]<=data[7:0];
        end
        else if(address_hld==1)begin
            d_memory[address[31:2]][15:8]<=data[7:0];
            end
        else if(address_hld==2)begin
            d_memory[address[31:2]][23:16]<=data[7:0];
            end
         else if(address_hld==3)begin
            d_memory[address[31:2]][31:24]<=data[7:0];
            end   
        end
        2'b10:begin
        address_hld=address_hld%2;
         if(address_hld==0)begin
               d_memory[address[31:2]][15:0]<=data[15:0];
               end
               else if(address_hld==1)begin
                   d_memory[address[31:2]][31:16]<=data[15:0];
                   end
        end
        2'b11:begin
        d_memory[address[31:2]]<=data;
        end
        
        
        endcase
    end
    
    end
        
    
    
endmodule
