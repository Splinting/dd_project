module boardGenerator (input[4:0] num,
                       input random,
                       input clk_d,
                       rst,
                       input [1:0]game_status,
                       output reg [11:0]out);
reg [4:0]random_reg;
reg israndom;

localparam CHOSE_BOARD  = 2'b00;
localparam GAMING       = 2'b01;
localparam GAME_INITIAL = 2'b10;
localparam WINNED       = 2'b11;

initial begin
    out <= 12'b000_001_010_011;
end

always @(posedge clk_d,posedge rst) begin
    if (rst)begin
        out <= 12'b000_001_010_011;
    end
    else if (game_status == CHOSE_BOARD)begin
        if (~israndom)begin
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
            end
        end
        else    out <= random_reg;
    end
    else    out <= 12'b000_001_010_011;
end
always @(posedge clk_d,posedge rst) begin
    if (rst)
        random_reg <= 5'b00000;
    else if (~israndom)begin
        if (random_reg<5'b11000)
            random_reg <= random_reg+1'b1;
        else
            random_reg <= 5'b00000;
    end
    else
        random_reg <= random_reg;
end
always @(posedge clk_d,posedge rst) begin
    if (rst) israndom <= 1'b0;
    else if (random)
    israndom <= ~israndom;
    else
    israndom <= israndom;
end
endmodule
