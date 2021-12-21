module bottomFlag (input bt,
                   input clk_d,
                   input rst,
                   output bt_flag);

    reg    [7:0]     bt_reg;
    always @(posedge clk_d or posedge rst)
    begin
        if (rst)
        begin
            bt_reg <= 8'b0000_0000;
        end
        else
        begin
            bt_reg <= {bt_reg[6:0],bt};
        end
    end
    
    assign bt_flag = bt_reg[7]&~bt_reg[6];
    
endmodule
