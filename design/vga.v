`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/13 13:44:14
// Design Name: 
// Module Name: vga
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


module vga
(
    input sys_clk, rst,
    //input [11:0] img_nums,
    output reg [3:0] red,
    output reg [3:0] green,
    output reg [3:0] blue,
    output hsync, vsync
);

wire [11:0] h_cnt;
wire [11:0] v_cnt;
wire clk;

wire active_flag;
wire is_hide;
wire [11:0] data;
reg [17:0] addr;
reg [11:0] img_nums = 12'b100_011_010_001;

//get 25MHz clk
clock_div cd(sys_clk, rst, clk);

//sync
vga_sync sync(clk, rst, h_cnt, v_cnt, hsync, vsync, active_flag);

//img
image_0 im_0(.addra(addr),.clka(clk), .douta(data));

always @(posedge clk or posedge rst)
begin
    if (rst) begin
        red <= 4'b0000;
        green <= 4'b0000;
        blue <= 4'b0000;
    end
    else if (active_flag && h_cnt - 144 <= 480) begin
                    // a, c
                    if (h_cnt - 144 <= 240) begin
                        // a
                        if (v_cnt - 35 <= 240) begin
                            case(img_nums[11:9])
                                3'b000: addr <= (v_cnt - 35) * 480 + (h_cnt - 144);
                                3'b001: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) + 240;
                                3'b010: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) + 115200;
                                3'b011: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) + 115440;
                                default: addr <= 230400;
                            endcase
                        end
                        // c
                        else begin
                            case(img_nums[5:3])
                                3'b000: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) - 115200;
                                3'b001: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) - 114960;
                                3'b010: addr <= (v_cnt - 35) * 480 + (h_cnt - 144);
                                3'b011: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) + 240;
                                default: addr <= 230400;
                            endcase
                        end
                    end
                    // b, d
                    else begin
                        // b
                        if (v_cnt - 35 <= 240) begin
                            case(img_nums[8:6])
                                3'b000: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) - 240;
                                3'b001: addr <= (v_cnt - 35) * 480 + (h_cnt - 144);
                                3'b010: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) + 114960;
                                3'b011: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) + 115200;
                                default: addr <= 230400;
                            endcase
                        end
                        // d
                        else begin
                            case(img_nums[2:0])
                                3'b000: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) - 115440;
                                3'b001: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) - 115200;
                                3'b010: addr <= (v_cnt - 35) * 480 + (h_cnt - 144) - 240;
                                3'b011: addr <= (v_cnt - 35) * 480 + (h_cnt - 144);
                                default: addr <= 230400;
                            endcase
                        end
                    end
            red <= data[11:8];
            green <= data[7:4];
            blue <= data[3:0];
    end
    else begin
        red <= 4'b0000;
        green <= 4'b0000   ;
        blue <= 4'b0000    ; 
    end  
end

endmodule
