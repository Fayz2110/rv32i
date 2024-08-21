`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2024 05:55:21 PM
// Design Name: 
// Module Name: alu
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


module alu(
input wire [31:0] in1,
input wire [31:0] in2,
input wire [3:0] aluop,
output reg [31:0]alu_out

    );
    always@(*)begin
    case(aluop)
    4'b0000:begin
    alu_out=in1+in2;
    end
    4'b1000:begin
    alu_out=in1-in2;
    end
    4'b0001:begin
    alu_out=in1<<in2;
    end
    4'b0010:begin
    alu_out=(in1<in2)?1:0;
    end
    4'b0011:begin
    alu_out=($unsigned(in1)<$unsigned(in2))?1:0;
    end
    4'b0100:begin
    alu_out=in1^in2;
    end
    4'b0101:begin
    alu_out=in1>>in2;
    end
    4'b1101:begin
    alu_out=in1>>>in2;
    end
    4'b0110:begin
    alu_out=in1|in2;
    end
    4'b0111:begin
    alu_out=in1&in2;
    end
    4'b1111:begin
    alu_out=in2;
    end
    endcase
    end
endmodule
