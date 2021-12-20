module board (input[4:0] num,
              input random,
              input set,
              input clk_d,
              rst,
              input [1:0]game_status,
              output reg [11:0]out);
wire[11:0]rand_gen;
random_bd rd(clk_d,rst,rand_gen);

localparam CHOSE_BOARD  = 2'b00;
localparam GAMING       = 2'b01;
localparam GAME_INITIAL = 2'b10;
localparam WINNED       = 2'b11;

initial begin
    out        <= 12'b000_001_010_011;
end

always @(posedge clk_d,posedge rst) begin
    if (rst)begin
        out <= 12'b000_001_010_011;
    end
    else if (game_status == CHOSE_BOARD)begin
        if (set&~random)begin
            case(num)
                5'b00000:out <= 12'b000_001_011_010; //0132
                5'b00001:out <= 12'b000_010_011_001; //0231
                5'b00010:out <= 12'b001_000_011_010; //1032
                5'b00011:out <= 12'b001_010_011_000; //1230
                
                5'b00100:out <= 12'b010_000_011_001; //2031
                5'b00101:out <= 12'b010_001_011_000; //2130
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                5'b00110:out <= 12'b000_001_010_011; //0123
                5'b00111:out <= 12'b000_011_010_001; //0321
                
                5'b01000:out <= 12'b001_000_010_011; //1023
                5'b01001:out <= 12'b001_011_010_000; //1320
                5'b01010:out <= 12'b011_000_010_001; //3021
                5'b01011:out <= 12'b011_001_010_000; //3120
                
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                5'b01100:out <= 12'b000_010_001_011; //0213
                5'b01101:out <= 12'b000_011_001_010; //0312
                5'b01110:out <= 12'b010_000_001_011; //2013
                5'b01111:out <= 12'b010_011_001_000; //2310
                
                5'b10000:out <= 12'b011_000_001_010; //3012
                5'b10001:out <= 12'b011_010_001_000; //3210
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                5'b10010:out <= 12'b001_010_000_011; //1203
                5'b10011:out <= 12'b001_011_000_010; //1302
                
                5'b10100:out <= 12'b010_001_000_011; //2103
                5'b10101:out <= 12'b010_011_000_001; //2301
                5'b10110:out <= 12'b011_001_000_010; //3102
                5'b10111:out <= 12'b011_010_000_001; //3201
                
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                default:out <= out;
            endcase
        end
        else if (set&random)  begin
            out <= rand_gen;
        end
        else begin
            out <= out;
        end
    end
    else   begin//game_status! = CHOSE_BOARD
        out <= out;
    end
end

endmodule

module random_bd (
    input clk_d,rst,
    output reg[11:0]rand_out
    );
    
    reg[4:0] regi;
    
    always @(posedge clk_d,posedge rst) begin
        if (rst)
            regi <= 0;
        else if (regi>=5'b11000)
            regi <= 0;
        else
            regi <= regi+1'b1;
    end
    
    always @(posedge clk_d,posedge rst) begin
        if (rst)
            rand_out <= 12'b000_001_010_011;
        else begin
            case(regi)
                5'b00000:rand_out <= 12'b000_001_011_010; //0132
                5'b00001:rand_out <= 12'b000_010_011_001; //0231
                5'b00010:rand_out <= 12'b001_000_011_010; //1032
                5'b00011:rand_out <= 12'b001_010_011_000; //1230
                
                5'b00100:rand_out <= 12'b010_000_011_001; //2031
                5'b00101:rand_out <= 12'b010_001_011_000; //2130
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                5'b00110:rand_out <= 12'b000_001_010_011; //0123
                5'b00111:rand_out <= 12'b000_011_010_001; //0321
                
                5'b01000:rand_out <= 12'b001_000_010_011; //1023
                5'b01001:rand_out <= 12'b001_011_010_000; //1320
                5'b01010:rand_out <= 12'b011_000_010_001; //3021
                5'b01011:rand_out <= 12'b011_001_010_000; //3120
                
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                5'b01100:rand_out <= 12'b000_010_001_011; //0213
                5'b01101:rand_out <= 12'b000_011_001_010; //0312
                5'b01110:rand_out <= 12'b010_000_001_011; //2013
                5'b01111:rand_out <= 12'b010_011_001_000; //2310
                
                5'b10000:rand_out <= 12'b011_000_001_010; //3012
                5'b10001:rand_out <= 12'b011_010_001_000; //3210
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                5'b10010:rand_out <= 12'b001_010_000_011; //1203
                5'b10011:rand_out <= 12'b001_011_000_010; //1302
                
                5'b10100:rand_out <= 12'b010_001_000_011; //2103
                5'b10101:rand_out <= 12'b010_011_000_001; //2301
                5'b10110:rand_out <= 12'b011_001_000_010; //3102
                5'b10111:rand_out <= 12'b011_010_000_001; //3201
                
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                default:rand_out <= rand_out;
            endcase
        end
    end
endmodule
