`include "decode.v"
`include "register.v"
module top(rst);
reg [31:0]ins;
reg clk;
wire [4:0]oprs1,oprs2,oprd;
wire signed [31:0]imm;
wire [3:0]aluop;

reg[31:0] write_data;
wire wrt_en;
input rst;

wire [31:0] rs1,rs2;


decode dut_dec(
    .ins(ins),
    .oprs1(oprs1),
    .oprs2(oprs2),
    .oprd(oprd),
    .aluop(aluop),
    .imm(imm),
    .wrt_en(wrt_en),  
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

always #10 clk = ~clk;

initial begin
    clk=0;
    ins=32'hff700293;
    #20
    ins=32'h00700313;
    #20
    ins=32'h40628233;

    #80 $finish;
end

initial begin
$dumpfile("top.vcd");
$dumpvars(0, top);
end
endmodule