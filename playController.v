module playController (input [1:0]game_status,
                       clk_d,
                       reset,
                       input[3:0]act,
                       input active,
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

//move
localparam UP_SWAP    = 2'b00;
localparam LEFT_SWAP  = 2'b11;
localparam RIGHT_SWAP = 2'b01;
localparam DOWN_SWAP  = 2'b10;


reg [1:0]black_pos;
reg [1:0]move;
reg[11:0]origin_bd;

initial begin
    black_pos <= LEFT_DOWN;
    move      <= UP_SWAP;
    out       <= 12'b100_100_100_100;
    win_flag  <= 1'b0;
end

always @(posedge clk_d) begin
    if (game_status == CHOSE_BOARD)
        origin_bd <= origin_board;
        out       <= out;
    else if (game_status == GAME_INITIAL)
        out <= {out[11:6],3'b100,out[2:0]};
    else if (game_status == GAMING)begin
        if (reset)begin
            black_pos <= LEFT_DOWN;
            move      <= move;
            out       <= origin_bd;
        end
        else if (active)
            case(black_pos)
                LEFT_UP:
                if (act[1])begin
                    move      <= UP_SWAP;
                    black_pos <= RIGHT_UP;
                end
                else if (act[2])begin
                    move      <= LEFT_SWAP;
                    black_pos <= LEFT_DOWN;
                end
                else begin
                    move      <= move;
                    black_pos <= black_pos;
                end
                RIGHT_UP:
                if (act[3])begin
                    move      <= UP_SWAP;
                    black_pos <= LEFT_UP;
                end
                else if (act[2])begin
                    move      <= RIGHT_SWAP;
                    black_pos <= RIGHT_DOWN;
                end
                else begin
                    move      <= move;
                    black_pos <= black_pos;
                end
                LEFT_DOWN:
                if (act[0])begin
                    move      <= LEFT_SWAP;
                    black_pos <= LEFT_UP;
                end
                else if (act[1]) begin
                    move      <= DONW_SWAP;
                    black_pos <= RIGHT_DOWN;
                end
                else begin
                    move      <= move;
                    black_pos <= black_pos;
                end
                RIGHT_DOWN:
                if (act[0])begin
                    move      <= RIGHT_SWAP;
                    black_pos <= RIGHT_UP;
                end
                else if (act[3])begin
                    move      <= DOWN_SWAP;
                    black_pos <= LEFT_DOWN;
                end
                else begin
                    move      <= move;
                    black_pos <= black_pos;
                end
                default:begin
                    move      <= move;
                    black_pos <= black_pos;
                end
            end
            case(move)
                UP_SWAP:out    <= {out[8:6],out[11:9],out[5:0]};
                RIGHT_SWAP:out <= {out[11:9],out[2:0],out[5:3],out[8:6]};
                DOWN_SWAP:out  <= {out[11:6],out[2:0],out[5:3]};
                LEFT_SWAP:out  <= {out[5:3],out[8:6],out[11:9],out[2:0]};
                default:out    <= out;
            end
        end
        else begin
            move      <= move;
            black_pos <= black_pos;
            out       <= out;
        end
    end
    else if (game_status == WINNED) begin
        black_pos <= LEFT_DOWN;
        move      <= move;
        out       <= out;
    end
    else begin
        move      <= move;
        black_pos <= black_pos;
        out       <= out;
    end
end

always @(posedge clk_d) begin
    case(out)
        12'b100_001_010_011:win_flag <= 1'b1;
        12'b000_100_010_011:win_flag <= 1'b1;
        12'b000_001_100_011:win_flag <= 1'b1;
        12'b000_001_010_100:win_flag <= 1'b1;
        default:            win_flag <= 1'b0;
    end
end

endmodule
