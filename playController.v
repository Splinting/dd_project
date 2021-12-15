module playController (input start,
                    clk_d,
                    reset,
                    input[3:0]act,
                    output reg [11:0]out);
    reg [1:0]counter;
    reg [1:0]move;
    always @(posedge clk_d) begin
        if (start)begin
            if (reset)begin
                counter <= 2'b10;
            end
            else
                case(counter)
                    2'b00:
                    if (act[1])begin
                        move    <= 2'b00;
                        counter <= 2'b01;
                    end
                    else if (act[2])begin
                        move    <= 2'b11;
                        counter <= 2'b10;
                    end
                    else begin
                        move    <= move;
                        counter <= counter;
                    end
                    2'b01:
                    if (act[3])begin
                        move    <= 2'b00;
                        counter <= 2'b00;
                    end
                    else if (act[2])begin
                        move    <= 2'b01;
                        counter <= 2'b11;
                    end
                    else begin
                        move    <= move;
                        counter <= counter;
                    end
                    2'b10:
                    if (act[0])begin
                        move    <= 2'b11;
                        counter <= 2'b00;
                    end
                    else if (act[1]) begin
                        move    <= 2'b10;
                        counter <= 2'b11;
                    end
                    else begin
                        move    <= move;
                        counter <= counter;
                    end
                    2'b11:
                    if (act[0])begin
                        move    <= 2'b01;
                        counter <= 2'b01;
                    end
                    else if (act[3])begin
                        move    <= 2'b10;
                        counter <= 2'b10;
                    end
                    else begin
                        move    <= move;
                        counter <= counter;
                    end
                    default:begin
                        move    <= move;
                        counter <= counter;
                    end
                end
            end
        end
    end
    
    always @(posedge clk_d) begin
        case(move)
            2'b00:out   <= {out[8:6],out[11:9],out[5:0]};
            2'b01:out   <= {out[11:9],out[2:0],out[5:3],out[8:6]};
            2'b10:out   <= {out[11:6],out[2:0],out[5:3]};
            2'b11:out   <= {out[5:3],out[8:6],out[11:9],out[2:0]};
            default:out <= out;
        end
    end
    
    endmodule
