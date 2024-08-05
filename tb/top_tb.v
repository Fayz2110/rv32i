`timescale 1ns/1ns

module top_tb;
reg clk;
reg rst;
reg [31:0]ins;


top dut (
    .rst(rst),
    .clk(clk),
    .ins(ins)
);


always begin
        #5 clk = ~clk;
    end
    initial begin
        clk = 0;
        rst = 0;
        ins = 0;
        
        
        #10 
        ins = 32'h00700093;

        #10 
        ins = 32'h00C00113;

        #10 
        ins = 32'h002081B3;

        #10 
        rst = 1;
        // Stop the simulation
        #100 $stop;
    end
   
endmodule