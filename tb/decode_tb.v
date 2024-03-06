module testbench;
reg [31:0]ins;

wire [4:0]rs1,rs2,rd;
wire signed [31:0]imm;
wire [3:0]aluop;

decode dut_dec(
    .ins(ins),
    .oprs1(rs1),
    .oprs2(rs2),
    .oprd(rd),
    .aluop(aluop),
    .imm(imm)
);


initial begin
    
    ins=32'hff700293;
    #20
    ins=32'h00700313;
    #20
    ins=32'h40628233;

    #80 $finish;
end

initial begin
$dumpfile("decode.vcd");
$dumpvars(0, testbench);
end
endmodule