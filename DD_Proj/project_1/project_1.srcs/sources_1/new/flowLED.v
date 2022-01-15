module flowLED (input clk,
                input rst,
                input en,
                output reg [5:0]led);
    wire clk_bps;
    clock_div_bps clkbps(clk,rst,clk_bps);
    reg[5:0]led_reg;
    always @(posedge clk_bps or posedge rst)begin
        if (rst)
            led_reg <= 6'b100_000;
        else begin
            if (led_reg != 6'b000_001)
                led_reg <= led_reg >> 1'b1;
            else
                led_reg <= 6'b100_000;
        end
    end
      always @(posedge clk or posedge rst)begin
          if(rst)
          led<=6'b000_000;
          else if(en)
          led<=led_reg;
          else
          led<=6'b000_000;
      end
endmodule
    
    
