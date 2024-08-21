`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 04:15:43 PM
// Design Name: 
// Module Name: branch
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


module branch(
input [31:0]OPA,
input [31:0] OPB,
output  reg branch_sel,
input branch_en,
input [2:0]func3
    );
    always@(*)begin
  case (func3)
               3'b000 :begin branch_sel = (OPA==OPB) ? 1 : 0 ; end
               3'b001 :begin branch_sel = (OPA!=OPB) ? 1 : 0 ; end
               3'b100 :begin branch_sel = ($signed (OPA) < $signed (OPB)) ? 1:0;end
               3'b101 :begin branch_sel = ($signed (OPA) >= $signed (OPB)) ? 1:0;end
               3'b110 :begin branch_sel= (OPA < OPB) ? 1 : 0;end
               3'b111 :begin branch_sel = (OPA >= OPB) ? 1 : 0;end
            endcase
            end
    
endmodule
