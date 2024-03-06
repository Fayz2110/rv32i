module register(oprs1,oprs2,oprd,wrt_en,rst,clk,rs1,rs2,wrt_data);
input [31:0]wrt_data;
input [4:0]oprs1,oprs2,oprd;
input clk;
input wrt_en,rst;
output reg [31:0] rs1,rs2;

reg [31:0] register [0:31];

always @(oprs1 )begin
    rs1=register[oprs1];
end

always @(oprs2 )begin
    rs2=register[oprs2];
end
always @(posedge clk)begin
    if(wrt_en & !rst)begin
        register[oprd]<=wrt_data;
    end
end

endmodule