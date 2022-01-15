`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/13 15:45:48
// Design Name: 
// Module Name: sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim(

    );
    parameter clk_period = 100;  
    reg clk;
    reg rst;  
    wire [3:0] red;
    wire [3:0] green;
    wire [3:0] blue;
    wire hs, vs, led;
    vga v(clk, rst, red, green, blue, hs, vs, led);
    initial begin  
        clk = 0;  
        rst = 1;
        forever  
            #(clk_period/2) clk = ~clk;  
    end  
endmodule
