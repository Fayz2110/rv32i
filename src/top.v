//`include "decode.v"
//`include "register.v"

module top(
input rst,
input clk

);



wire [4:0]oprs1,oprs2,oprd;
wire signed [31:0]imm;
wire [3:0]aluop;
wire[1:0] mem_mask;


wire wrt_en,alu_sel1,alu_sel2,mem_wrt_en,mem_rd_en,wrt_back_sel,branch_en,branch_sel;

wire [31:0] rs1,rs2;

wire [31:0] pc_out,mem_dout,alu_out,dmem_dout,branch_pc,pc_in;
wire[2:0] branch_op;

assign branch_pc=alu_out;
assign pc_in=(branch_en)?branch_pc:(rst)?0:pc_out;
decode dec_inst(
    .ins(mem_dout),
    .oprs1(oprs1),
    .oprs2(oprs2),
    .oprd(oprd),
    .aluop(aluop),
    .imm(imm),
    .wrt_en(wrt_en),
    .alu_op1_sel(alu_sel1),
    .alu_op2_sel(alu_sel2),
    .mem_mask(mem_mask),
    .mem_wrt_en(mem_wrt_en),
    .mem_rd_en(mem_rd_en),
    .wrt_back_sel(wrt_back_sel),
    .branch_en(branch_en),
    .branch_op(branch_op)
);

register reg_inst(
    .clk(clk),
    .wrt_en(wrt_en),
    .rst(rst),
    .oprs1(oprs1),
    .oprs2(oprs2),
    .oprd(oprd),
    .wrt_data((wrt_back_sel==1)?dmem_dout:alu_out),
    .rs1(rs1),
    .rs2(rs2)
);

pc pc_inst(
.clk(clk),
.pc_in(pc_in),
.pc_out(pc_out),
.rst(rst),
.branch_en(branch_en)
);

Imem imem_inst(
.clk(clk),
.rst(rst),
.pc_in(pc_out),
.data_out(mem_dout)

);

alu alu_inst(
.in1((alu_sel1)?pc_out:rs1),
.in2((alu_sel2)?imm:rs2),
.alu_out(alu_out),
.aluop(aluop)

);
data_mem d_mem_inst(
.address(alu_out),
.clk(clk),
.rst(rst),
.data(rs2),
.mask(mem_mask),
.wrt_en(mem_wrt_en),
.rd_en(mem_rd_en),
.data_out(dmem_dout)
);

branch branch_dut(
.OPA(rs1),
.OPB(rs2),
.branch_en(branch_en),
.func3(branch_op),
.branch_sel(branch_sel)

);

endmodule