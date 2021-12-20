module top (input sys_clk,
            input rst,
            input [4:0]bottom,
            input [5:0]key,
            input random_key,
            output [7:0]DIG,
            output [7:0]Y,
            output [5:0]flow_led,
            output [3:0] red,
            output [3:0] green,
            output [3:0] blue,
            output hsync,
            vsync,
            output [5:0]key_led,
            output rd_led,
            output [11:0]outled);
    wire clk;
    wire [11:0] img_nums;
    clock_div clk_d(sys_clk,rst,clk);
    
//    vga vga(clk,rst,img_nums,red,green,blue,hsync,vsync);
    gameControl gc(clk,rst,key[4:0],key[5],bottom[0],bottom[4:1],random_key,DIG,Y,flow_led,img_nums);
    assign key_led = key;
    assign rd_led  = random_key;
    assign outled  = img_nums;
    
endmodule
