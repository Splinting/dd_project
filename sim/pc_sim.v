`timescale 1ns/1ps
module top_module();
    localparam CHOSE_BOARD  = 2'b00;
    localparam GAMING       = 2'b01;
    localparam GAME_INITIAL = 2'b10;
    localparam WINNED       = 2'b11;
    
    reg [1:0]game_status;
    reg clk,reset,active;
    reg [3:0]act;
    reg [11:0]origin_bd;
    
    wire [11:0]out_pc;
    wire win_flag;
    
    always begin
        #5;
        clk = ~clk;
    end
    playController pc(game_status,clk,reset,act,origin_bd,out_pc,win_flag);
    initial begin
        clk         <= 1'b0;
        reset       <= 1'b0;
        active      <= 1'b0;
        act         <= 4'b0000;
        origin_bd   <= 12'b001_011_000_010;
        game_status <= CHOSE_BOARD;
        
        #20;
        active <= 1'b1;
        act[0] <= 1'b1;
        #5;
        active <= 1'b0;
        act[0] <= 1'b0;
        
        #20;
        game_status <= GAME_INITIAL;
        #10;
        active <= 1'b1;
        act[0] <= 1'b1;
        #5;
        active <= 1'b0;
        act[0] <= 1'b0;
        
        #20;
        game_status <= GAMING;
        #10;
        active <= 1'b1;
        act[0] <= 1'b1;
        #5;
        active <= 1'b0;
        act[0] <= 1'b0;
        
        #10;
        active <= 1'b1;
        act[1] <= 1'b1;
        #5;
        active <= 1'b0;
        act[1] <= 1'b0;
        
        #10;
        active <= 1'b1;
        act[2] <= 1'b1;
        #5;
        active <= 1'b0;
        act[2] <= 1'b0;
        
        #10;
        active <= 1'b1;
        act[3] <= 1'b1;
        #5;
        active <= 1'b0;
        act[3] <= 1'b0;
        
        #10;
        active <= 1'b1;
        act[2] <= 1'b1;
        #5;
        active <= 1'b0;
        act[2] <= 1'b0;
        
        #10;
        reset <= 1'b1;
        #5;
        reset <= 1'b0;
        
        #20;
        $finish();
        
        
    end
endmodule
