module seg_7 (input clk,
              rst,
              input [7:0]num_left,
              input [7:0]num_right,
              output reg [7:0]DIG,
              output reg [7:0]Y);
    
    wire[7:0] Y_left;
    wire[7:0] Y_right;
    wire [3:0]DIG_l;
    wire [3:0]DIG_r;
    
    seg seg_left(clk,rst,num_left,DIG_l,Y_left);
    seg seg_right(clk,rst,num_right,DIG_r,Y_right);
    
    reg [2:0]cnt;
    always@(posedge clk,posedge rst)begin
        if (rst)
            cnt <= 3'b000;
        else if (cnt == 3'b111)
            cnt <= 3'b000;
        else
            cnt <= cnt+1'b1;
    end

    always @(posedge clk,posedge rst) begin
        if (rst)begin
            Y   <= 8'b1100_0000;
            DIG <= 8'b0000_0000;
        end
        else if (cnt<3'b100)begin
            Y   <= Y_left;
            DIG[7:4]<=DIG_l;
            DIG[3:0]<=4'b0000;
//            DIG <= {DIG_l,4'b0000};
        end
        else begin
            Y   <= Y_right;
            DIG[7:4]<=4'b0000;
            DIG[3:0]<=DIG_r;
//            DIG <= {4'b0000,DIG_r};
        end
        
    end
endmodule
    
    
    module seg (input clk,
        rst,
        input [7:0]num,
        output reg[3:0]DIG,
        output reg[7:0]Y);
        
        wire one,ten,hun;
        bin_dec bd(clk,num,rst,one,ten,hun);
        reg [3:0]bcd_reg;
        reg [1:0]cnt;
        always@(posedge clk,posedge rst)begin
            if (rst)
                cnt <= 2'b00;
            else if (cnt == 2'b11)
                cnt <= 2'b00;
            else
                cnt <= cnt+1'b1;
        end
        
        always@(posedge clk,posedge rst)begin
            if (rst)begin
                bcd_reg <= 4'b0000;
            end
            else begin
                case(cnt)
                    2'b00:begin
                        bcd_reg <= one;
                        DIG     <= 4'b1110;
                    end
                    2'b01:begin
                        bcd_reg <= ten;
                        DIG     <= 4'b1101;
                    end
                    2'b10:begin
                        bcd_reg <= hun;
                        DIG     <= 4'b1011;
                    end
                    2'b11:begin
                        bcd_reg <= 4'b0000;
                        DIG     <= 4'b0111;
                    end
                    default:begin
                        bcd_reg <= 4'b0000;
                        DIG     <= 4'b0111;
                    end
                endcase
            end
        end
        
        always@(posedge clk,posedge rst)begin
            if (rst)
                Y <= 8'b1100_0000;
            else begin
                case(bcd_reg)
                    4'b0000:Y <= 8'b1100_0000;  // 0
                    4'b0001:Y <= 8'b1111_1001;  // 1
                    4'b0010:Y <= 8'b1010_0100;  // 2
                    4'b0011:Y <= 8'b1011_0000;  // 3
                    4'b0100:Y <= 8'b1001_1001;  // 4
                    4'b0101:Y <= 8'b1001_0010;  // 5
                    4'b0110:Y <= 8'b1000_0010;  // 6
                    4'b0111:Y <= 8'b1111_1000;  // 7
                    4'b1000:Y <= 8'b1000_0000;  // 8
                    4'b1001:Y <= 8'b1001_0000;  // 9
                    default:Y <= 8'b1100_0000;  // 0
                endcase
            end
        end
    endmodule
        
        
        
        module bin_dec(clk,bin,rst,one,ten,hun);
            input  [7:0] bin;
            input        clk,rst;
            output [3:0] one,ten;
            output [1:0] hun;
            reg    [3:0] one,ten;
            reg    [1:0] hun;
            reg    [3:0] count;
            reg    [17:0]shift_reg = 18'b000000000000000000;
            
            always @ (posedge clk or posedge rst)
            begin
                if (rst)
                    count <= 0;
                else if (count == 9)
                    count <= 0;
                else
                    count <= count+1;
            end
            
            always @ (posedge clk or posedge rst)
            begin
                if (rst)
                    shift_reg = 0;
                else if (count == 0)
                    shift_reg = {10'b0000000000,bin};
                else if (count <= 8)               
                begin
                    if (shift_reg[11:8] >= 5)         
                    begin
                        if (shift_reg[15:12] >= 5) 
                        begin
                            shift_reg[15:12] = shift_reg[15:12]+2'b11;
                            shift_reg[11:8]  = shift_reg[11:8]+2'b11;
                            shift_reg        = shift_reg<<1;  
                        end
                        else
                        begin
                            shift_reg[15:12] = shift_reg[15:12];
                            shift_reg[11:8]  = shift_reg[11:8]+2'b11;
                            shift_reg        = shift_reg<<1;
                        end
                    end
                    else
                    begin
                        if (shift_reg[15:12] >= 5)
                        begin
                            shift_reg[15:12] = shift_reg[15:12]+2'b11;
                            shift_reg[11:8]  = shift_reg[11:8];
                            shift_reg        = shift_reg<<1;
                        end
                        else
                        begin
                            shift_reg[15:12] = shift_reg[15:12];
                            shift_reg[11:8]  = shift_reg[11:8];
                            shift_reg        = shift_reg<<1;
                        end
                    end
                end
                else begin
                    shift_reg = shift_reg;
                end
            end
            
            
            always @ (posedge clk or posedge rst)
            begin
                if (rst)
                begin
                    one <= 0;
                    ten <= 0;
                    hun <= 0;
                end
                else if (count == 9)  
                begin
                    one <= shift_reg[11:8];
                    ten <= shift_reg[15:12];
                    hun <= shift_reg[17:16];
                end
                else begin
                    one <= one;
                    ten <= ten;
                    hun <= hun;
                end
            end
        endmodule
            
            
