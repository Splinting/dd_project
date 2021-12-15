module gameController (input clk_d,
                       input rst,
                       input [4:0] board_num_sw,
                       input start_sw,
                       input [3:0] act_bt,
                       input random_bt,
                       output [11:0]out,
                       output [7:0]flow_led,
                       output [4:0] board_num_led,
                       output start_led,
                       rst_led);
    wire random_flag;
    wire[3:0] act_flag;
    bottomFlag rdF(random_bt,clk_d,rst,random_flag);
    bottomFlag actF0(act_bt[0],clk_d,rst,act_flag[0]);
    bottomFlag actF0(act_bt[1],clk_d,rst,act_flag[1]);
    bottomFlag actF0(act_bt[2],clk_d,rst,act_flag[2]);
    bottomFlag actF0(act_bt[3],clk_d,rst,act_flag[3]);
    
    reg [11:0]out_mode_chose;
    reg [11:0]out_mode_game;
    playController pC(start_sw,clk_d,reset_flag,act[flag],out_mode_game);
    boardGenerator bG(board_num_sw,random_flag,start_sw,clk_d,rst,out_mode_chose);
    always @(posedge clk_d) begin
        if (start_sw)
            out = out_mode_game;
        else
            out = out_mode_chose;
    end
    assign board_num_led = board_num_sw;
    assign start_led     = start_sw;
endmodule
