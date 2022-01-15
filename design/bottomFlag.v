module bottomFlag(input key,
                  clk,
                  clr,
                  output key_changed2);
    wire key_changed1;
    reg [20:0] count;
    reg sample1, sample_locked1, sample2, sample_locked2;
    
    always @(posedge clk or posedge clr)
        if (clr) sample1 <= 0;
        else sample1     <= key;
    
    always @(posedge clk or posedge clr)
        if (clr) sample_locked1 <= 0;
        else sample_locked1     <= sample1;
    
    assign key_changed1 = ~sample_locked1 & sample1; //key pressed
    
    always @(posedge clk or posedge clr)
        if (clr) count               <= 0;
        else if (key_changed1) count <= 0;
        else count                   <= count + 1;
    
    always @(posedge clk or posedge clr)
        if (clr) sample2 <= 0;
        else if (count == 2000000)
        sample2 <= key;
    
    always @(posedge clk or posedge clr)
        if (clr) sample_locked2 <= 0;
        else sample_locked2     <= sample2;
    
    assign key_changed2 = ~sample_locked2 & sample2; //key pressed for 2000000 clk
    
endmodule
