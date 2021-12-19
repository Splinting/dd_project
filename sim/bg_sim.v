`timescale 1ns/1ps
module bg_sim();
    
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
    board bg(num,random,clk,rst,game_status,out);
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
        
        #15;
        random <= 1'b1;
        #5;
        random <= 1'b0;
        
        #20;
        num <= 5'b10010;
        
        #5;
        random <= 1'b1;
        #5;
        random <= 1'b0;
        
        #25;
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
        #5;
        random <= 1'b1;
        #5;
        random <= 1'b0;
        
        #20;
        $finish();
        
    end
endmodule
