module register(oprs1,oprs2,oprd,wrt_en,rst,clk,rs1,rs2,wrt_data);
input wire clk;
input [31:0]wrt_data;
input [4:0]oprs1,oprs2,oprd;
input wrt_en,rst;
output reg [31:0] rs1,rs2;

reg [31:0] register [31:0];

integer i;

always @(oprs1 )begin
    // rs1[0] = 0;
    register[0] = 0;
    register[oprs1] = rs1;
end

always @(oprs2 )begin
    // rs2[0] = 0;
    register[0] = 0;
    register[oprs2] = rs2;
end
always @(posedge clk)begin
    if(rst)begin
        for (i = 0; i <= 31; i++) begin
            register[i] = 0;
        end
    end else begin
        register[oprd] = wrt_data;
        end
end
    // assign rs1 = (oprs1 != 0) ? register[oprs1] : 0;    // if reg[0] = 0
    // assign rs2 = (oprs2 != 0) ? register[oprs2] : 0;    // if reg[0] = 0
// always @(posedge clk)begin
//     if(wrt_en & !rst)begin
//         register[oprd]<=wrt_data;
//     end
// end

endmodule