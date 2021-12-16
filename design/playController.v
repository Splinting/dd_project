module playController (input [1:0]game_status,
                       input clk_d,
                       reset,
                       input[3:0]act,
                       input [11:0]origin_board,
                       output reg [11:0]out,
                       output reg win_flag);

localparam CHOSE_BOARD  = 2'b00;
localparam GAMING       = 2'b01;
localparam GAME_INITIAL = 2'b10;
localparam WINNED       = 2'b11;

//black_position
localparam LEFT_UP    = 2'b00;
localparam LEFT_DOWN  = 2'b10;
localparam RIGHT_UP   = 2'b01;
localparam RIGHT_DOWN = 2'b11;


reg [1:0]black_pos;
reg[11:0]origin_bd;

initial begin
    black_pos <= LEFT_DOWN;
    origin_bd <= 12'b000_001_010_011;
    out       <= 12'b100_100_100_100;
    win_flag  <= 1'b0;
end

always @(posedge clk_d) begin
    case(game_status)
        CHOSE_BOARD:begin
            origin_bd <= origin_board;
            black_pos <= black_pos;
            out       <= out;
        end
        GAME_INITIAL:begin
            out       <= {out[11:6],3'b100,out[2:0]};
            black_pos <= black_pos;
            origin_bd <= origin_bd;
        end
        GAMING:begin
            if (reset)begin
                origin_bd <= 12'b000_001_010_011;
                black_pos <= LEFT_DOWN;
                out       <= origin_bd;
            end
            else begin
                case(black_pos)
                    LEFT_UP:begin
                        if (act[1])begin
                            out       <= {out[8:6],out[11:9],out[5:0]};
                            black_pos <= RIGHT_UP;
                        end
                        else if (act[2])begin
                            out       <= {out[5:3],out[8:6],out[11:9],out[2:0]};
                            black_pos <= LEFT_DOWN;
                        end
                        else begin
                            out       <= out;
                            black_pos <= black_pos;
                        end
                    end
                    
                    RIGHT_UP:begin
                        if (act[3])begin
                            out       <= {out[8:6],out[11:9],out[5:0]};
                            black_pos <= LEFT_UP;
                        end
                        else if (act[2])begin
                            out       <= {out[11:9],out[2:0],out[5:3],out[8:6]};
                            black_pos <= RIGHT_DOWN;
                        end
                        else begin
                            out       <= out;
                            black_pos <= black_pos;
                        end
                    end
                    
                    LEFT_DOWN:begin
                        if (act[0])begin
                            out       <= {out[5:3],out[8:6],out[11:9],out[2:0]};
                            black_pos <= LEFT_UP;
                        end
                        else if (act[1]) begin
                            out       <= {out[11:6],out[2:0],out[5:3]};
                            black_pos <= RIGHT_DOWN;
                        end
                        else begin
                            out       <= out;
                            black_pos <= black_pos;
                        end
                    end
                    
                    RIGHT_DOWN:begin
                        if (act[0])begin
                            out       <= {out[11:9],out[2:0],out[5:3],out[8:6]};
                            black_pos <= RIGHT_UP;
                        end
                        else if (act[3])begin
                            out       <= {out[11:6],out[2:0],out[5:3]};
                            black_pos <= LEFT_DOWN;
                        end
                        else begin
                            out       <= out;
                            black_pos <= black_pos;
                        end
                    end
                    
                    default:begin
                        out       <= out;
                        black_pos <= black_pos;
                    end
                endcase
                origin_bd <= origin_bd;
            end
        end
        WINNED:begin
            origin_bd <= 12'b000_001_010_011;
            black_pos <= LEFT_DOWN;
            out       <= out;
        end
        default:begin
            black_pos <= black_pos;
            origin_bd <= origin_bd;
            out       <= out;
        end
    endcase
end
always @(posedge clk_d) begin
    case(out)
        12'b100_001_010_011:win_flag <= 1'b1;
        12'b000_100_010_011:win_flag <= 1'b1;
        12'b000_001_100_011:win_flag <= 1'b1;
        12'b000_001_010_100:win_flag <= 1'b1;
        default:            win_flag <= 1'b0;
    endcase
end

endmodule
