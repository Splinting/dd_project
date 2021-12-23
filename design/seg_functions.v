`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/21 11:49:25
// Design Name: 
// Module Name: seg_functions
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


module seg_functions(
    input sys_clk, rst, timer_en,
    input [13:0] steps,
    input [1:0]  game_status,
    output [7:0] seg_out,
    output [7:0] seg_en
);

reg [5:0] min = 0;
reg [5:0] sec = 0;
reg [31:0] nums = 0;

wire clk_a, clk_b, clk;

clock_div #(.period(1000), .width(10)) cda(sys_clk, rst, clk_a);
clock_div #(.period(1000), .width(10)) cdb(clk_a, rst, clk_b);
clock_div #(.period(100), .width(7)) cd(clk_b, rst, clk);
always @(posedge sys_clk or posedge rst)
begin
    if(rst)
    nums<=0;
    else begin
    nums[3:0] <= sec % 10;
    nums[7:4] <= sec / 10;
    nums[11:8] <= min % 10;
    nums[15:12] <= min / 10;
    nums[19:16] <= steps % 10;
    nums[23:20] <= (steps / 10) % 10;
    nums[27:24] <= (steps / 100) % 10;
    nums[31:28] <= steps / 1000;
    end
end

always @(posedge clk or posedge rst)
begin
    if (rst) begin
        min <= 0;
        sec <= 0;
    end
    else if(game_status==2'b00)begin
         min <= 0;
         sec <= 0;
    end
    else begin
        if (timer_en) begin
           if (sec == 59) begin
                min <= min + 1;
                sec <= 0;
           end 
           else sec <= sec + 1;
       end
    end
    
end


seg_tube st(nums, sys_clk, rst, seg_out, seg_en);

endmodule
