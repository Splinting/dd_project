module fsm (input clk_d,
            input rst,
            input start_sw,
            input win_flag,
            input active,
            output reg [1:0]game_status,
            output reg[7:0]step_number,
            output reg[7:0]game_time);
    
    localparam CHOSE_BOARD  = 2'b00;
    localparam GAMING       = 2'b01;
    localparam GAME_INITIAL = 2'b10;
    localparam WINNED       = 2'b11;
    
    initial begin
        game_status <= CHOSE_BOARD;
        step_number <= 8'b0;
    end
    //step counter
    always @(posedge clk_d,posedge rst) begin
        if (rst)
            step_number <= 8'b0;
        else if (game_status == GAMING|game_status == GAME_INITIAL)begin
            if (active)begin
                if (step_number < 8'b1111_1111)
                    step_number <= step_number+1'b1;
                else
                    step_number <= 8'b0;
            end
            else
                step_number <= step_number;
        end
        else
            step_number <= 8'b0;
    end
    //game status update
    always @(posedge clk_d,posedge rst) begin
        if (rst)
            game_status <= CHOSE_BOARD;
        else if (~start_sw)
            game_status <= CHOSE_BOARD;
        else if (start_sw&win_flag)
            game_status <= WINNED;
        else if (start_sw&step_number == 8'b0)
            game_status <= GAME_INITIAL;
        else
            game_status <= GAMING;
    end
    //game timer
    wire clk_bps;
    clock_div_bps clk_pbs(clk_d,rst,clk_bps);
    always @(posedge clk_d,posedge rst) begin
        if (rst)
            game_time <= 8'b0;
        else if (clk_bps&(game_status == GAME_INITIAL|game_status == GAMING))begin
            if (game_time == 8'b1111_1111)
                game_time <= 8'b0;
            else
                game_time <= game_time+1'b1;
        end
        else
            game_time <= 8'b0;
        
    end
endmodule
