module seg (input clk,
            rst,
            input [7:0]num,
            output [3:0]DIG,
            output [7:0]Y);

wire one,te,hun;
bin_dec bd(clk,num,rst,one,ten,hun);
reg [3:0]bcd_reg;
reg [1:0]cnt;
always@(posedge clk,negedge rst)begin
if(rst)	cnt<=2'b00;
else if(cnt==2'b11)	cnt<=2'b00;
else cnt<=cnt+1'b1;
end

always@(posedge clk,negedge rst)begin
if(rst)bcd_reg<=4'b0000;
else begin
case(cnt)
2'b00:begin
bcd_reg<=one;
DIG<=4'b1110;
end
2'b01:begin
bcd_reg<=ten;
DIG<=4'b1101;
end
2'b10:begin
bcd_reg<=hun;
DIG<=4'b1011;
end
2'b11:begin
bcd_reg<=4'b0000;
DIG<=4'b0111;
end
default:begin
bcd_reg<=4'b0000;
DIG<=4'b0111;
end
end
end

always@(posedge clk,negedge rst)begin
if(rst)Y<=8'b1100_0000;
else begin
case(bcd_reg)
4'b0000:Y<=8'b1100_0000;  // 0
4'b0001:Y<=8'b1111_1001;  // 1
4'b0010:Y<=8'b1010_0100;  // 2
4'b0011:Y<=8'b1011_0000;  // 3
4'b0100:Y<=8'b1001_1001;  // 4
4'b0101:Y<=8'b1001_0010;  // 5
4'b0110:Y<=8'b1000_0010;  // 6
4'b0111:Y<=8'b1111_1000;  // 7
4'b1000:Y<=8'b1000_0000;  // 8
4'b1001:Y<=8'b1001_0000;  // 9
default:Y<=8'b1100_0000;  // 0
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
reg    [17:0]shift_reg=18'b000000000000000000;
// 计数部分
always @ ( posedge clk or posedge rst )
begin
 if( rst )
   count<=0;
 else if (count==9)
   count<=0;
 else
   count<=count+1;
end

// 二进制转换为十进制 /
always @ (posedge clk or posedge rst )
begin
  if (rst)
       shift_reg=0;
  else if (count==0)
       shift_reg={10'b0000000000,bin};
  else if ( count<=8)                //实现8次移位操作
   begin
      if(shift_reg[11:8]>=5)         //判断个位是否>5，如果是则+3  
          begin
             if(shift_reg[15:12]>=5) //判断十位是否>5，如果是则+3  
                 begin
   shift_reg[15:12]=shift_reg[15:12]+2'b11;   
   shift_reg[11:8]=shift_reg[11:8]+2'b11;
shift_reg=shift_reg<<1;  //对个位和十位操作结束后，整体左移
 end
             else
       begin
                   shift_reg[15:12]=shift_reg[15:12];
shift_reg[11:8]=shift_reg[11:8]+2'b11;
shift_reg=shift_reg<<1;
 end
          end              
      else
          begin
             if(shift_reg[15:12]>=5)
                 begin
   shift_reg[15:12]=shift_reg[15:12]+2'b11;
   shift_reg[11:8]=shift_reg[11:8];
shift_reg=shift_reg<<1;
 end
             else
       begin
                   shift_reg[15:12]=shift_reg[15:12];
shift_reg[11:8]=shift_reg[11:8];
shift_reg=shift_reg<<1;
 end
          end        
  end
  end

/输出赋值//
always @ ( posedge clk or posedge rst )
begin
 if ( rst )
  begin
    one<=0;
    ten<=0;
    hun<=0; 
  end
 else if (count==9)  //此时8次移位全部完成，将对应的值分别赋给个,十,百位
  begin
    one<=shift_reg[11:8];
ten<=shift_reg[15:12];
hun<=shift_reg[17:16]; 
  end
end
endmodule
