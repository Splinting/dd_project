module fsm (input clk_d,
            input rst,
            input start_sw,
            input win_flag,
            input active,
            input reset_flag,
            output reg [1:0]game_status,
            output reg[5:0]step_number);
    
    localparam CHOSE_BOARD  = 2'b00;
    localparam GAMING       = 2'b01;
    localparam GAME_INITIAL = 2'b10;
    localparam WINNED       = 2'b11;
    
    initial begin
        game_status <= CHOSE_BOARD;
        step_number <= 6'b0;
    end
    
    always @(posedge clk_d,posedge rst) begin
        if (rst)
            step_number <= 6'b0;
        else if (start_sw)begin
            if (active)begin
                if (step_number < 6'b111_111)
                    step_number <= step_number+1'b1;
                else
                    step_number <= 6'b0;
            end
            else if (reset_flag)
                step_number <= 6'b0;
            else
                step_number <= step_number;
        end
        else
            step_number <= 6'b0;
    end
    
    always @(posedge clk_d,posedge rst) begin
        if (rst)
            game_status <= CHOSE_BOARD;
        else if (~start_sw)
            game_status <= CHOSE_BOARD;
        else if (start_sw&win_flag)
            game_status <= WINNED;
        else if (start_sw&step_number == 6'b0)
            game_status <= GAME_INITIAL;
        else
            game_status <= GAMING;
    end
endmodule