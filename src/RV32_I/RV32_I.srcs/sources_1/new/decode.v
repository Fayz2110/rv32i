module decode(

input  [31:0]ins,
output  wire[4:0] oprs1,oprs2,oprd,
output reg[3:0] aluop,
output  reg signed[31:0] imm,
output  reg wrt_en,
output reg alu_op2_sel,alu_op1_sel,
output reg mem_wrt_en,
output reg mem_rd_en,wrt_back_sel,
output reg [1:0] mem_mask,
output reg branch_en,
output reg [2:0] branch_op,
output reg jal_pc,
output reg jal_rd


);
localparam R_type=7'b0110011;
localparam I_type=7'b0010011;
localparam S_type=7'b0100011;
localparam Load=7'b0000011;
localparam SB=7'b1100011;
localparam U=7'b0110111;
localparam auipc=7'b0010111;
localparam jal=7'b1101111;
localparam jalr=7'b1100111;


reg i_type,r_type,load,store,branch,u_type,auipc_sig,jal_sig,jalr_sig;





reg  signed[11:0] imm_d;
reg signed [12:0] imm_sb;
reg signed[20:0] imm_jal;
assign oprs1=(ins[6:0]==I_type ||ins[6:0]==R_type||ins[6:0]==Load||ins[6:0]==store||ins[6:0]==SB||ins[6:0]==jalr)?ins[19:15]:0;
assign oprs2=(ins[6:0]==S_type||R_type||ins[6:0]==SB)?ins[24:20]:0;
assign oprd =(ins[6:0]==I_type ||ins[6:0]==R_type||ins[6:0]==Load||ins[6:0]==U||ins[6:0]==auipc||ins[6:0]==jal||ins[6:0]==jalr) ?ins[11:7]:0;
always @(ins) begin
 
case(ins[6:0])
I_type: begin i_type=1'b1;jalr_sig=1'b0; jal_sig=1'b0; auipc_sig=1'b0;u_type=1'b0; branch=1'b0;store=1'b0; r_type=0; load=0;imm_d=ins[31:20];end
R_type: begin r_type=1'b1;jalr_sig=1'b0; jal_sig=1'b0; auipc_sig=1'b0;u_type=1'b0; branch=1'b0;store=1'b0;i_type=0;  load=0; end
Load:begin  load=1'b1; jalr_sig=1'b0; jal_sig=1'b0; auipc_sig=1'b0;u_type=1'b0; branch=1'b0;store=1'b0;i_type=0;r_type=0;imm_d=ins[31:20];   end
S_type:begin store=1'b1; jalr_sig=1'b0; jal_sig=1'b0; auipc_sig=1'b0;u_type=1'b0; branch=1'b0;i_type=0;r_type=0;load=1'b0;imm_d={ins[31:25],ins[11:7]}; end
SB:begin branch=1'b1; jalr_sig=1'b0; jal_sig=1'b0; auipc_sig=1'b0;u_type=1'b0;store=1'b0;i_type=0;r_type=0;load=1'b0;imm_sb={ins[31],ins[7],ins[30:25],ins[11:8],1'b0};end
U:begin u_type=1'b1; jalr_sig=1'b0; jal_sig=1'b0; auipc_sig=1'b0; branch=1'b0;store=1'b0;i_type=0;r_type=0;load=1'b0; end
auipc:begin auipc_sig=1'b1; jalr_sig=1'b0; jal_sig=1'b0; u_type=1'b0; branch=1'b0;store=1'b0;i_type=0;r_type=0; load=1'b0;end
jal:begin jal_sig=1'b1;jalr_sig=0; auipc_sig=1'b0;u_type=1'b0; branch=1'b0;store=1'b0;i_type=0; r_type=0; load=0;imm_jal={ins[31],{ins[19:12]},{ins[20]},{ins[30:21]},1'b0};  end
jalr:begin jalr_sig=1'b1; jal_sig=1'b0; auipc_sig=1'b0;u_type=1'b0; branch=1'b0;store=1'b0;i_type=0; r_type=0; load=0;imm_d=ins[31:20]; end
endcase




 alu_op1_sel=(ins[6:0]==SB||ins[6:0]==auipc||ins[6:0]==jal)?1:0;
 alu_op2_sel=(ins[6:0]==I_type||ins[6:0]==Load||ins[6:0]==S_type||ins[6:0]==SB||ins[6:0]==U||ins[6:0]==auipc||ins[6:0]==jal||ins[6:0]==jalr)?1:0;
 mem_rd_en=(ins[6:0]==Load)?1:0;
 mem_wrt_en=(ins[6:0]==S_type)?1:0;
 wrt_back_sel=(ins[6:0]==I_type ||ins[6:0]==R_type||ins[6:0]==U||ins[6:0]==auipc)?0:(ins[6:0]==Load)?1:0;
 aluop=(ins[6:0]==I_type ||ins[6:0]==R_type)?{ins[30],ins[14:12]}:(ins[6:0]==U)?4'b1111:0;
// oprd =(ins[6:0]==I_type ||ins[6:0]==R_type||ins[6:0]==Load||ins[6:0]==U||ins[6:0]==auipc||ins[6:0]==jal||ins[6:0]==jalr) ?ins[11:7]:0;
 wrt_en =(ins[6:0]==I_type ||ins[6:0]==R_type||ins[6:0]==Load||ins[6:0]==U||ins[6:0]==auipc||ins[6:0]==jal||ins[6:0]==jalr)?1:0;
 
 branch_en=(ins[6:0]==SB)?1:0;
 branch_op=(ins[6:0]==SB)?ins[14:12]:0;
 jal_pc=(ins[6:0]==jal||ins[6:0]==jalr)?1:0;
 jal_rd=(ins[6:0]==jal||ins[6:0]==jalr)?1:0;
 //imm=(ins[6:0]==jalr||ins[6:0]==load||ins[6:0]==store||ins[6:0]==i_type)?{{20{imm_d[11]}}, imm_d}:(ins[6:0]==SB)?{{19{imm_sb[12]}}, imm_sb}:(ins[6:0]==U||ins[6:0]==auipc)?ins[31:12]<<12:(ins[6:0]==jal)?{{11{imm_jal[20]}}, imm_jal}:0;

//if(i_type||load||jalr)begin
//imm_d=ins[31:20];
//end

if(load||store)begin
if(ins[14:12]==2'b00)begin
mem_mask=2'b01; //for lb
end
else if(ins[14:12]==2'b01)begin
mem_mask=2'b10; //for lh
end
else if(ins[14:12]==2'b10)begin
mem_mask=2'b11;
end
end

// ===============immediate generation=============================================
 if(branch)begin
imm = {{19{imm_sb[12]}}, imm_sb};
end
else if(i_type||store||load||jalr)begin
    imm = (imm_d[11]) ? {{20{1'b1}}, imm_d} : {{20{1'b0}}, imm_d};
end

else if(u_type||auipc_sig)begin
imm =ins[31:12]<<12;
//imm= {ins[31:11],{11{1'b0}}};
end

else if(jal_sig)begin
imm=(ins[31])?{{11{1'b1}}, imm_jal}:{{11{1'b0}}, imm_jal};
end

else begin
imm=0;
end


end

endmodule