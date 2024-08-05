//`include "decode.v"
//`include "register.v"

module top(
input rst,
input clk,
input [31:0] ins
);



wire [4:0]oprs1,oprs2,oprd;
wire signed [31:0]imm;
wire [3:0]aluop;

reg[31:0] write_data;
wire wrt_en;


wire [31:0] rs1,rs2;

decode dut_dec(
    .ins(ins),
    .oprs1(oprs1),
    .oprs2(oprs2),
    .oprd(oprd),
    .aluop(aluop),
    .imm(imm),
    .wrt_en(wrt_en)
);

register reg_dut_inst(
    .clk(clk),
    .wrt_en(wrt_en),
    .rst(rst),
    .oprs1(oprs1),
    .oprs2(oprs2),
    .oprd(oprd),
    .wrt_data(write_data),
    .rs1(rs1),
    .rs2(rs2)
);

endmodule