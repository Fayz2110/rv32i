module decode(

input  [31:0]ins,
output  wire[4:0] oprs1,oprs2,oprd,
output wire[3:0] aluop,
output  reg signed[31:0] imm,
output  wire wrt_en,
output wire alu_op2_sel,alu_op1_sel,
output wire mem_wrt_en,
output wire mem_rd_en,wrt_back_sel,
output reg [1:0] mem_mask,
output wire branch_en,
output wire [2:0] branch_op


);
localparam R_type=7'b0110011;
localparam I_type=7'b0010011;
localparam S_type=7'b0100011;
localparam Load=7'b0000011;
localparam SB=7'b1100011;


reg i_type,r_type,load,store,branch;

reg  signed[11:0] imm_d;
reg signed [12:0] imm_sb;
assign alu_op1_sel=(ins[6:0]==SB)?1:0;
assign alu_op2_sel=(ins[6:0]==I_type||ins[6:0]==Load||ins[6:0]==S_type||ins[6:0]==SB)?1:0;
assign mem_rd_en=(ins[6:0]==Load)?1:0;
assign mem_wrt_en=(ins[6:0]==S_type)?1:0;
assign wrt_back_sel=(ins[6:0]==I_type ||ins[6:0]==R_type)?0:(ins[6:0]==Load)?1:0;
assign aluop=(ins[6:0]==I_type ||ins[6:0]==R_type)?{ins[30],ins[14:12]}:0;
assign oprd =(ins[6:0]==I_type ||ins[6:0]==R_type||ins[6:0]==Load) ?ins[11:7]:0;
assign wrt_en =(ins[6:0]==I_type ||ins[6:0]==R_type||ins[6:0]==Load)?1:0;
assign oprs1=(ins[6:0]==I_type ||ins[6:0]==R_type||ins[6:0]==Load||ins[6:0]==store||ins[6:0]==SB)?ins[19:15]:0;
assign oprs2=(ins[6:0]==S_type||R_type||ins[6:0]==SB)?ins[24:20]:0;
assign branch_en=(ins[6:0]==SB)?1:0;
assign branch_op=(ins[6:0]==SB)?ins[14:12]:0;

always @(ins) begin
 
case(ins[6:0])
7'b0010011: begin i_type=1'b1; r_type=1'b0;load=0; store=0;branch=0;end
7'b0110011: begin r_type=1'b1; i_type=1'b0;load=0;store=0;branch=0; end
7'b0000011:begin  load=1'b1; r_type=0; i_type=0;store=0;branch=0; end
7'b0100011:begin store=1'b1; i_type=0; r_type=0; load=0;branch=0;imm_d={ins[31:25],ins[11:7]}; end
7'b1100011:begin branch=1'b1;store=1'b0;i_type=0; r_type=0; load=0;imm_sb={ins[31],ins[7],ins[30:25],ins[11:8],1'b0};end
endcase





if(i_type||load)begin
imm_d=ins[31:20];
end

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
if(i_type||store||load)begin
    imm = (imm_d[11]) ? {{20{1'b1}}, imm_d} : {{20{1'b0}}, imm_d};
end
else if(branch)begin
imm = (imm_sb[12]) ? {{19{1'b1}}, imm_sb} : {{20{1'b0}}, imm_sb};
end


end

endmodule

