module test_fsm (input sys_clk,
                 input rst_sw,
                 input stt_sw,
                 input win_sw,
                 input act_bt,
                 input reset_bt,
                 output [1:0]game_status_led,
                 output [5:0]step_number_led,
                 output rst_led,
                 stt_led,
                 win_led,
                 act_led,
                 reset_led);
    wire clk;
    wire reset_flag,act_flag;
    bottomFlag rstF(reset_bt,clk,rst_sw,reset_flag);
    bottomFlag actF(act_bt,clk,rst_sw,act_flag);
    clock_div cd(sys_clk,rst_sw,clk);
    
    fsm fsm(clk,rst_sw,stt_sw,win_sw,act_flag,reset_flag,game_status_led,step_number_led);
    
    assign rst_led   = rst_sw;
    assign stt_led   = stt_sw;
    assign win_led   = win_sw;
    assign act_led   = act_flag;
    assign reset_led = reset_flag;
    
endmodule
