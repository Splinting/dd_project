`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/13 13:44:14
// Design Name: 
// Module Name: vga_sync
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


module vga_sync
(
    input clk, rst,
    output reg [11:0] h_cnt,
    output reg [11:0] v_cnt,
    output hsync, vsync, active_flag
);

//hsync
always @(posedge clk or posedge rst)
begin
    if(rst)
        h_cnt <= 12'd0;
    else if(h_cnt == 799)
        h_cnt <= 12'd0;
    else
        h_cnt <= h_cnt + 1;
end
assign hsync = (h_cnt < 96) ? 0 : 1;

//vsync
always @(posedge clk or posedge rst)
begin
    if(rst)
        v_cnt <= 12'd0;
    else if(v_cnt == 524)
        v_cnt <= 12'd0;
    else if(h_cnt == 799)
        v_cnt <= v_cnt + 1;
    else
        v_cnt <= v_cnt;
end
assign vsync = (v_cnt < 2) ? 1'b0 : 1'b1;

assign active_flag = (h_cnt >= 144) && (h_cnt <= 624) && (v_cnt >= 35) && (v_cnt <= 515);
endmodule
