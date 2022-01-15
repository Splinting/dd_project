module gameControl (input sys_clk, clk_d,
                    input rst,
                    input [4:0] board_num_sw,
                    input start_sw,
                    input set_bt,
                    input [3:0] act_bt,
                    input random_sw,
                    output possi_led,
                    output [7:0]DIG,
                    output [7:0]Y,
                    output [5:0]flow_led,
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
    
    wire [1:0] game_status;
    wire win_flag;
    wire [13:0]step_number;
    wire timer_en;
    wire ini_flag;
    fsm fsm(clk_d,rst,start_sw,win_flag,active,ini_flag,game_status,step_number,timer_en);
    play pC(game_status,clk_d,rst,act_flag,random_sw,set_flag,board_num_sw,ini_flag,possi_led,out,win_flag);
    
    
    flowLED fled(clk_d,rst,win_flag,flow_led);
    seg_functions sf(sys_clk, rst,timer_en, step_number,game_status, Y, DIG);
endmodule
