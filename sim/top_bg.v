module top_bg (input sys_clk,
               input stt_sw,
               input[1:0]game_s,
               input[4:0]num,
               input rd_bt,
               rst_bt,
               output stt_led,
               rd_led,
               output [1:0]gs_led,
               output [4:0]num_led,
               output[11:0]out);
    
    wire clk;
    wire rd_flag;
    wire rst_flag;
    bottomFlag rdF(rd_bt,clk,rst_sw,rd_flag);
    bottomFlag rstF(rst_bt,clk,rst_sw,rst_flag);
    clock_div cd(sys_clk,rst_sw,clk);
    
    board bg(num,rd_flag,clk,rst_flag,game_s,out);
    
    assign gs_led  = game_s;
    assign num_led = num;
    
    reg israndom;
    always @(posedge clk,posedge rst_flag) begin
        if(rst_flag)
        israndom <= 1'b0;
        else if (rd_flag)
        israndom <= ~israndom;
        else
        israndom <= israndom;
    end
    assign rd_led = israndom;
    
    assign stt_led = stt_sw;
    
endmodule
