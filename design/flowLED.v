module flowLED (input clk,
                input rst,
                input en,
                output reg[5:0]led);
    wire clk_bps;
    clock_div_bps clk_bps(clk,rst,clk_bps);
    always @(posedge clk_bps or posedge rst)
        if (rst)
            led <= 6'b000_000;
        else if (en) begin
            if (led ! = 6'b000_001)
                led <= led >> 1'b1;
            else
                led <= 6'b100_000;
        end
        else
            led <= 6'b000_000;
    end
endmodule
    
    
