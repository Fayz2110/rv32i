module decode(ins,oprs1,oprs2,oprd,aluop,imm);

input  [31:0]ins;
output  reg[4:0] oprs1,oprs2,oprd;
output reg[3:0] aluop;
output  reg signed[31:0] imm;
output  reg wrt_en;
reg i_type,r_type;
wire  [6:0] opcode;
reg  signed[11:0] imm_d;

assign opcode=ins[6:0];


always @(ins) begin
 // opcode=ins[6:0];
case(ins[6:0])
7'b0010011: begin i_type=1'b1; r_type=1'b0; end
7'b0110011: begin r_type=1'b1; i_type=1'b0; end
endcase

if(i_type||r_type)begin
 oprs1=ins[19:15];
 oprd=ins[11:7];
 wrt_en=1'b1;

end
if(i_type)begin
imm_d=ins[31:20];
 aluop=ins[14:12];
end
if(r_type)begin
 aluop={ins[30],ins[14:12]};
 oprs2=ins[24:20];
end

// ===============immediate generation=============================================
if(i_type)begin
    imm = (imm_d[11]) ? {{20{1'b1}}, imm_d} : {{20{1'b0}}, imm_d};
end
end
endmodule

