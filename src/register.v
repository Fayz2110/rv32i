module register(
input wire clk,
input wire[31:0]wrt_data,
input [4:0]oprs1,oprs2,oprd,
input wrt_en,rst,rd_en,
output wire [31:0] rs1,rs2
);

reg [31:0] register [31:0];

reg [4:0] i;




always @(posedge clk)begin
  //  if(rst)begin
     //   for (i = 0; i <= 31; i=i+1) begin
    //        register[i] = 0;
    //    end
  //  end 
    if(wrt_en)begin
    register[oprd]<=wrt_data;
    register[0]=0;
    end
end


     assign rs1 = (oprs1 != 0) ? register[oprs1] : 0;    // if reg[0] = 0
     assign rs2 = (oprs2 != 0) ? register[oprs2] : 0;    // if reg[0] = 0
// always @(posedge clk)begin
//     if(wrt_en & !rst)begin
//         register[oprd]<=wrt_data;
//     end
// end

endmodule