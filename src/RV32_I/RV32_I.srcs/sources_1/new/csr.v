`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 01:44:24 PM
// Design Name: 
// Module Name: csr
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


module csr(
input csr_en,wrt_en,
input interrupt,
input [2:0] func3,
input[11:0] csr_offset,
input [31:0] rs1_in,
output reg[31:0] csr_out

    );
 localparam mcause=12'h342; 
 localparam mstatus=12'h300;
 localparam mie=12'h304;
 localparam mip=12'h344;
 localparam mtvec=12'h305;
 localparam mepc=12'h341;
   
  reg[31:0] mcause_reg,mstatus_reg,mie_reg,mip_reg,mtvec_reg,mepc_reg=0;
  reg[31:0] csr_reg=0;  
  
  always @(*)begin
  // 1) storing the csr register values in a register
   if(csr_en)begin
   case(csr_offset)
   
    mcause:begin
    csr_reg=mcause_reg;
    end
    
     mstatus:begin
    csr_reg=mstatus_reg;
    end
    
     mie:begin
    csr_reg=mie_reg;
    end
    
     mip:begin
    csr_reg=mip_reg;
    end
    
     mstatus:begin
    csr_reg=mstatus_reg;
    end
    
     mtvec:begin
    csr_reg=mtvec_reg;
    end
    
     mepc:begin
    csr_reg=mepc_reg;
    end
    
    default:begin
    csr_reg=0;
    end
    
   endcase
   //2) for reading the  csr register
    csr_out=(wrt_en)?csr_reg:0;
    
    //3) checking the function to be perform/write on the csr register i.e set,clear or directly storing
   case(func3)
   3'b001: begin
   
   csr_reg=rs1_in;
   end
   3'b010:begin
   
    csr_reg=rs1_in|csr_reg;
   end
   3'b011:begin
    
     csr_reg=rs1_in&csr_reg;
    end
   
   endcase
   
   
   //4) now saving the register to its particular csr register
   
   case(csr_offset)
    mcause:begin
    mcause_reg=csr_reg;
    end
    
     mstatus:begin
    mstatus_reg=csr_reg;
    end
    
     mie:begin
    mie_reg=csr_reg;
    end
    
     mip:begin
    mip_reg=csr_reg;
    end
    
     mstatus:begin
    mstatus_reg=csr_reg;
    end
    
     mtvec:begin
    mtvec_reg=csr_reg;
    end
    
     mepc:begin
    mepc_reg=csr_reg;
    end
    endcase
   end
   else begin
   csr_reg=0;
   end
   end
   
   
   
 
 
 
    
endmodule
