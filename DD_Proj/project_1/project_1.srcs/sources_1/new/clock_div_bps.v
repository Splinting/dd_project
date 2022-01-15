module clock_div_bps(input clk,
                     input rst,
                     output clk_bps);
    reg [13:0]cnt_first,cnt_second;
    always @(posedge clk or posedge rst)begin
        if (rst)
            cnt_first <= 14'd0;
        else if (cnt_first == 14'd10000)
            cnt_first <= 14'd0;
        else
            cnt_first <= cnt_first + 1'b1;
    end
    always @(posedge clk or posedge rst)begin
        if (rst)
            cnt_second <= 14'd0;
        else if (cnt_second == 14'd2500)
            cnt_second <= 14'd0;
        else if (cnt_first == 14'd10000)
            cnt_second <= cnt_second + 1'b1;
        else
            cnt_second <= cnt_second;
    end
    assign clk_bps = cnt_second == 14'd2500 ? 1'b1 : 1'b0;
endmodule
