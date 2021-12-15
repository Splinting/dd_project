module bottomFlag (input bt,
                   input clk_d,
                   input rst,
                   output reg bt_flag);
    reg [5:0] cnt;
    reg cntfull;
    always @(posedge clk_d,posedge rst) begin//所有的rst都是正逻辑
        if (rst)        cnt <= 0;
        else if (bt)    cnt <= cnt+1'b1;
        else            cnt <= 0;
    end
    
    always @(posedge clk_d,posedge rst) begin
        if (rst)
            cntfull <= 0;
        else if (cnt == 6'b111_111)
            cntfull <= 1'b1;
        else if (~bt)
            cntfull <= 0;
        else
            cntfull <= cntfull;
    end
    
    always @(posedge clk_d,posedge rst) begin
        if (rst)
            bt_flag <= 1'b0;
        else if (cnt == 6'b111_111&~cntfull)
            bt_flag< = 1'b1;
        else
            bt_flag <= 1'b0;
    end
    
endmodule
