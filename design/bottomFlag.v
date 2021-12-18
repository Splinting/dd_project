module bottomFlag (input bt,
                   input clk_d,
                   input rst,
                   output bt_flag);

    reg    [2:0]     bt_reg;
    always @(posedge clk_d or posedge rst)
    begin
        if (rst)
        begin
            bt_reg <= 3'b000;
        end
        else
        begin
            bt_reg <= {bt_reg[1:0],bt};
        end
    end
    
    assign bt_flag = bt_reg[2]&~bt_reg[1];
    
endmodule
