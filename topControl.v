module topControl (input clk_d,
                   input rst,
                   input [4:0] board_num_sw,
                   input start_sw,
                   input reset_bt,
                   input [3:0] act_bt,
                   input random_bt,
                   output [11:0]out,
                   output [7:0]flow_led,//===========
                   output [4:0] board_num_led,
                   output start_led,
                   rst_led);
    
    localparam CHOSE_BOARD  = 2'b00;
    localparam GAMING       = 2'b01;
    localparam GAME_INITIAL = 2'b10;
    localparam WINNED       = 2'b11;
    
    wire random_flag;
    wire reset_flag;
    wire[3:0] act_flag;
    bottomFlag rdF(random_bt,clk_d,rst,random_flag);
    bottomFlag rstF(reset_flag,clk_d,rst,reset_flag);
    bottomFlag actF0(act_bt[0],clk_d,rst,act_flag[0]);
    bottomFlag actF0(act_bt[1],clk_d,rst,act_flag[1]);
    bottomFlag actF0(act_bt[2],clk_d,rst,act_flag[2]);
    bottomFlag actF0(act_bt[3],clk_d,rst,act_flag[3]);
    
    wire active;
    assign active = act_flag[0]|act_flag[1]|act_flag[2]|act_flag[3];
    
    wire [11:0]out_mode_chose;
    wire [11:0]out_mode_game;
    wire [1:0] game_status;
    wire [5:0] step_number;//===============
    wire win_flag;
    fsm fsm(clk_d,start_sw,win_flag,active,reset_flag,game_status,step_number);
    playController pC(game_status,clk_d,reset_flag,act_flag,active,out_mode_chose,out_mode_game,win_flag);
    boardGenerator bG(board_num_sw,random_flag,clk_d,rst,game_status,out_mode_chose);
    
    always @(posedge clk_d) begin
        if (game_status == CHOSE_BOARD)
            out = out_mode_chose;
        else
            out = out_mode_game;
    end
    
    assign board_num_led = board_num_sw;
    assign start_led     = start_sw;
endmodule
