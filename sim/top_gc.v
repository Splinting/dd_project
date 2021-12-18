module top_gc (input sys_clk,
               input rst_sw,
               input stt_sw,
               input [3:0]act_bt,
               input reset_bt,
               input [11:0]ori_bd,
               input [1:0]game_status,
               input ji_bt,
               output reg[11:0]out,
               output rst_led,
               stt_led,
               win_led,
               ji_led,
               output [1:0]gs_led);
    wire clk;
    clock_div cd(sys_clk,rst_sw,clk);
    
    wire [3:0]act_flag;
    bottomFlag actF0(act_bt[0],clk,rst_sw,act_flag[0]);
    bottomFlag actF1(act_bt[1],clk,rst_sw,act_flag[1]);
    bottomFlag actF2(act_bt[2],clk,rst_sw,act_flag[2]);
    bottomFlag actF3(act_bt[3],clk,rst_sw,act_flag[3]);
    
    wire reset_flag;
    bottomFlag rstF(reset_bt,clk,rst_sw,reset_flag);
    
    wire ji_flag;
    bottomFlag jF(ji_bt,clk,rst_sw,ji_flag);
    
    wire [11:0] reg_output;
    reg ifji;
    always@(posedge clk,posedge rst_sw) begin
    if(rst_sw)
        ifji<=1'b0;
        else if(ji_flag)
        ifji<=~ifji;
        else 
        ifji<=ifji;
    end
    
    always@(posedge clk) begin
    if(ifji)
    out<=ori_bd;
    else
    out<=reg_output;
    end
    
    playController pc(game_status,clk,reset_flag,act_flag,ori_bd,reg_output,win_led);
    
    assign rst_led = rst_sw;
    assign stt_led = stt_sw;
    assign gs_led=game_status;
    assign ji_led=ifji;
    
endmodule
