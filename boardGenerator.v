module boardGenerator (input[4:0] num,
                       input random,
                       start,
                       input clk_d,
                       rst,
                       output reg [11:0]out);
reg [4:0]random_reg;
reg israndom;
always @(posedge clk_d,posedge rst) begin
    if (rst)begin
        out <= 12'b100_100_100_100;
    end
    else if (~start)begin
        if (~israndom)begin
            case(num)
                5'b00000:out <= 12'b000_001_100_010;
                5'b00001:out <= 12'b000_010_100_001;
                5'b00010:out <= 12'b001_000_100_010;
                5'b00011:out <= 12'b001_010_100_000;
                
                5'b00100:out <= 12'b010_000_100_001;
                5'b00101:out <= 12'b010_001_100_000;
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                5'b00110:out <= 12'b000_001_100_011;
                5'b00111:out <= 12'b000_011_100_001;
                
                5'b01000:out <= 12'b001_000_100_011;
                5'b01001:out <= 12'b001_011_100_000;
                5'b01010:out <= 12'b011_000_100_001;
                5'b01011:out <= 12'b011_001_100_000;
                
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                5'b01100:out <= 12'b000_010_100_011;
                5'b01101:out <= 12'b000_011_100_010;
                5'b01110:out <= 12'b010_000_100_011;
                5'b01111:out <= 12'b010_011_100_000;
                
                5'b10000:out <= 12'b011_000_100_010;
                5'b10001:out <= 12'b011_010_100_000;
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                5'b10010:out <= 12'b001_010_100_011;
                5'b10011:out <= 12'b001_011_100_010;
                
                5'b10100:out <= 12'b010_001_100_011;
                5'b10101:out <= 12'b010_011_100_001;
                5'b10110:out <= 12'b011_001_100_010;
                5'b10111:out <= 12'b011_010_100_001;
                
                // ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  ==  = 
                default:out <= out;
            end
        end
        else    out <= random_reg;
    end
    else    out <= out;
end
always @(posedge clk_d,posedge rst) begin
    if (rst)
        random_reg <= 5'b00000;
    else if (random_reg<5'b11000)
        random_reg <= random_reg+1'b1;
    else
        random_reg <= 5'b00000;
end
always @(posedge clk_d,posedge rst) begin
    if (rst) israndom <= 1'b0;
    else if (random)
    israndom <= ~israndom;
    else
    israndom <= israndom;
end
endmodule
