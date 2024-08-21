`timescale 1ns/1ns

module top_tb;
reg clk;
reg rst;



top dut (
    .rst(rst),
    .clk(clk)
   
);


always begin
        #5 clk = ~clk;
    end
    initial begin
       clk=0;
        rst = 1;
        #10 rst=0;
        #30 rst=1;
        #20 rst=0;
       
        
        

        // Stop the simulation
        #1000 $stop;
    end
   
endmodule