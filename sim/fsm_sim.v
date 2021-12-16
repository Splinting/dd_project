`timescale 1ns/1ps

module top_module();
    reg clk;
    reg rst;
    reg st_sw,win_flag,active,reset;
    wire[1:0]game_s;
    wire[5:0]ste_num;
    
    always begin
        #5;
        clk <= ~clk;
    end
    fsm fsm(clk,rst,st_sw,win_flag,active,reset,game_s,ste_num);
    initial begin
        st_sw    = 1'b0;
        rst      = 1'b0;
        win_flag = 1'b0;
        active   = 1'b0;
        reset    = 1'b0;
        #10;
        st_sw = 1'b1;
        #10;
        active = 1'b1;
        #5;
        active = 1'b0;
        #10;
        active = 1'b1;
        #5;
        active = 1'b0;
        #10;
        reset = 1'b1;
        #5;
        reset = 1'b0;
        #10;
        win_flag = 1'b1;
        #10;
        $finish();
    end
    
endmodule
