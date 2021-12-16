`timescale 1ns/1ps
module top_module();
    
    localparam CHOSE_BOARD  = 2'b00;
    localparam GAMING       = 2'b01;
    localparam GAME_INITIAL = 2'b10;
    localparam WINNED       = 2'b11;
    
    
    reg [4:0]num;
    reg random,clk,rst;
    reg[1:0]game_status;
    
    wire[11:0]out;
    
    always begin
        #5;
        clk <= ~clk;
    end
    boardGenerator bg(num,random,clk,rst,game_status,out);
    initial begin
        num         <= 5'b00000;
        clk         <= 1'b0;
        random      <= 1'b0;
        rst         <= 1'b0;
        game_status <= CHOSE_BOARD;
        
        #20;
        num <= 5'b00011;
        #20;
        num <= 5'b10001;
        #20;
        num <= 5'b11100;
        
        #10;
        random <= 1'b1;
        #5;
        random <= 1'b0;
        
        #20;
        num <= 5'b10010;
        
        #10;
        random <= 1'b1;
        #5;
        random <= 1'b0;
        
        #10;
        random <= 1'b1;
        #5;
        random <= 1'b0;
        
        #20;
        game_status <= GAMING;
        #20;
        num <= 5'b00011;
        #20;
        num <= 5'b10001;
        #20;
        num <= 5'b11100;
        #10;
        random <= 1'b1;
        #5;
        random <= 1'b0;
        
        #20;
        $finish();
        
    end
endmodule
