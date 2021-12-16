`timescale 1ns/1ps

module top_sim ();
    reg clk;
    reg rst;
    reg[4:0]bd_num_sw;
    reg st_sw,rst_bt,rand_bt;
    reg[3:0]act_bt;
    
    wire [11:0]out;
    wire[7:0]flow_led;
    wire[4:0]bd_num_led;
    wire st_led,rst_led;

    topControl tp(clk,rst,bd_num_sw,st_sw,rst_bt,act_bt,rand_bt,out,flow_led,bd_num_led,st_led,rst_led);

    always  begin
        #5;
        clk=~clk;
    end

    initial begin
        
    end
    
endmodule
