module reg_testbench;
reg [31:0]write_data;
reg clk, rst, wrt_en;
reg [4:0]oprs1,oprs2,oprd;
wire [31:0] rs1, rs2;
// wire [3:0]aluop;

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
    wrt_en=1'b1;
    rst=1'b0;
    oprs1=4;
    oprs2=5;
    oprd=6;
    write_data=9;

    #20
    wrt_en=1'b1;
    rst=1'b0;
    oprs1=4;
    oprs2=5;
    oprd=8;
    write_data=7;
    #20
     wrt_en=1'b1;
    rst=1'b0;
    oprs1=6;
    oprs2=8;
    oprd=5;
    write_data=11;

    #80 
     
    $display("Register file contents at the end of the simulation:");
    for (integer i=0; i<32; i=i+1) begin
        $display("Register %0d: %0d", i, reg_dut_inst.register[i]);
    end
    $finish;
end

initial begin
$dumpfile("reg.vcd");
$dumpvars(0, reg_testbench);
for (integer i = 0; i < 32; i = i + 1) begin
        $dumpvars(0, reg_dut_inst.register[i]);
    end
end
endmodule