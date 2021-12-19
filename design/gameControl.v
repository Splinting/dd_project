module gameControl (input clk_d,
                    input rst,
                    input [4:0] board_num_sw,
                    input start_sw,
                    input set_bt,
                    input [3:0] act_bt,
                    input random_sw,
                     output [11:0]out);
    
    localparam CHOSE_BOARD  = 2'b00;
    localparam GAMING       = 2'b01;
    localparam GAME_INITIAL = 2'b10;
    localparam WINNED       = 2'b11;
    
    
    wire set_flag;
    wire[3:0] act_flag;
    bottomFlag stF(set_bt,clk_d,rst,set_flag);
    bottomFlag actF0(act_bt[0],clk_d,rst,act_flag[0]);
    bottomFlag actF1(act_bt[1],clk_d,rst,act_flag[1]);
    bottomFlag actF2(act_bt[2],clk_d,rst,act_flag[2]);
    bottomFlag actF3(act_bt[3],clk_d,rst,act_flag[3]);
    
    wire active;
    assign active = act_flag[0]|act_flag[1]|act_flag[2]|act_flag[3];
    
    wire [11:0]out_mode_chose;
    wire [11:0]out_mode_game;
    wire [1:0] game_status;
    wire win_flag;
    wire [7:0]step_number;
    fsm fsm(clk_d,rst,start_sw,win_flag,active,game_status,step_number);
    play pC(game_status,clk_d,rst,act_flag,out_mode_chose,out_mode_game,win_flag);
    board bG(board_num_sw,random_sw,set_flag,clk_d,rst,game_status,out_mode_chose);
    
    reg [11:0]out_reg;
    always @(posedge clk_d) begin
        if (game_status == CHOSE_BOARD)
            out_reg <= out_mode_chose;
        else
            out_reg <= out_mode_game;
    end
    assign out = out_reg;

   // flowLED fled();
   // seg seg_step();
   // seg seg_time();
endmodule
