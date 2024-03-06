`timescale 1ns/1ns

module top_tb;
reg clk;
reg rst;
reg [31:0]ins;
reg [31:0]write_data;

wire [4:0]oprs1;
wire [4:0]oprs2;
wire [4:0]oprd;

wire [31:0]imm;
wire [3:0]aluop;
wire wrt_en;

reg [31:0]rs1;
reg [31:0]rs2;

top dut (
    .rst(rst)
);

decode dut_decode(
    .ins(ins),
    .oprs1(oprs1),
    .oprs2(oprs2),
    .oprd(oprd),
    .aluop(aluop),
    .imm(imm)
);

register dut_reg_file (
    .clk(clk),
    .wrt_en(wrt_en),
    .rst(rst),
    .oprs1(oprs1),
    .oprs2(oprs2),
    .oprd(oprd),
    .wrt_data(write_data)
    // .rs1(rs1),
    // .rs2(rs2)
);

always begin
        #5 clk = ~clk;
    end
    initial begin
        clk = 0;
        rst = 0;
        ins = 0;
        write_data = 0;
        
        #10 clk = 1;
        ins = 32'h00700093;

        #10 clk = 1;
        ins = 32'h00C00113;

        #10 clk = 1;
        ins = 32'h002081B3;

        #10 clk = 1;
        rst = 1;
        // Stop the simulation
        #20 $stop;
    end
    initial begin
       $dumpfile("top.vcd");
       $dumpvars(0,top_tb);
    end
endmodule