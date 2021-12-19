module seg (input clk,
            rst,
            input[5:0]num,
            output [3:0]DIG,
            output[7:0]Y);

    
endmodule



module counter10(rst_n,clkin,t,up_down,D,c); 
 
input rst_n,clkin,t,up_down;
output [3:0]D;//输出的bcd码的计数，只有个位
output c; //进位或借位
 
reg [3:0]D;  //D为四位二进制输出
reg c;
 
 
always@(posedge clkin or negedge rst_n)
  begin
   if(~rst_n) begin D<=0;end
	else if(t==1)
      begin
	     if(up_down==1) 
		    begin
			   if(D==4'd8) begin D<=4'd9;c<=1; end
			   else if(D>=4'd9) begin D<=4'd0;c<=0; end
				else begin D<=D+1;c<=0; end
			 end
			 
		  if(up_down==0) 
		    begin
			   if(D==4'd1) begin D<=4'd0;c<=1; end
			   else if(D==4'd0) begin D<=4'd9;c<=0; end
				else begin D<=D-1;c<=0; end
			 end
	   end	
	
  end
  
 
 
 endmodule




module counter100(rst_n,clk,clkin,t,up_down,seg,sel,c); 
 
input rst_n,clk,clkin,t,up_down;
output [7:0]seg;  //段选的送显数值的显示码（带小数点8位）低有效
output [5:0]sel;  //位选信号（6个数码管）低有效
output c;
 
reg [7:0]seg;
reg [5:0]sel;
wire c;        //计满输出或者回零输出
 
wire [3:0]D0;  //D0为四位二进制bcd码输出，个位  //用函数的时候函数的输出变量必须是wire形式的
wire [3:0]D1;  //D1为四位二进制bcd码输出，十位
wire c1;       //个位的进位
wire c2;       //十位的进位
 
reg [15:0]count; //降频计时,数50000个clk 之后count就回到0,过了1ms
reg [3:0]status; //步骤生成器（6步）
reg [3:0]seg_data;//段选的送显数值
wire clkin_ok;
 
anti_shake  anti_shake1(.clk(clk),.clkin(clkin),.clkin_ok(clkin_ok));//防抖
 
counter10 counter10_0(.rst_n(rst_n),.clkin(clkin_ok),.t(t),.up_down(up_down),.D(D0),.c(c1)); //个位计数
counter10 counter10_1(.rst_n(rst_n),.clkin(clkin_ok),.t(c1),.up_down(up_down),.D(D1),.c(c2)); //十位计数
assign c=c1&c2;
/*当个位和十位都为9，都产生进位时，百位才产生进位！但这里的设计不好，应该说c2
本身就应该含有t2（c1），但那样做不出来。使能t的判断有问题？下一个沿来的时候，低位的数字变了，t也要变，但我们还是用t变之前的t来判断是否进位。*/
 
 
always@(posedge clk) //步骤发生器，1ms 为一步
/*count为模50000计数器，count 每到50000就过了1ms，这时status 加1，status是模6计数器。每数50000个上升沿status 就增1；*/
  begin 
    if(~rst_n) begin count<=0;status<=0;end
    else 
	  begin
	   if(count==16'd50000) 
	    begin 
		  count<=0;
		  if(status==4'd5) status<=0;
		  else status<=status+1;
		 end
	   else count<=count+1;
	  end
  end 
 
always@(posedge clk) //每一个步骤的段选和位选（动态扫描），位选低有效
  begin
    case(status)
	   4'd0: begin seg_data<=D0; sel<=6'b111110;end //第1个数码管的数值
		4'd1: begin seg_data<=D1; sel<=6'b111101;end //第2个数码管的数值
		4'd2: begin seg_data<=0; sel<=6'b111011;end //第3个数码管的数值
		4'd3: begin seg_data<=0; sel<=6'b110111;end //第4个数码管的数值
		4'd4: begin seg_data<=0; sel<=6'b101111;end //第5个数码管的数值
		4'd5: begin seg_data<=0; sel<=6'b011111;end //第6个数码管的数值
	   default: begin seg_data<=11; sel<=6'b000000;end //每个数码管的g段都亮
    endcase
  end
 
  
always@(posedge clk)  //bcd数码管译码器,每段低有效
  begin
    case(seg_data)
	   4'd0: seg<=8'hc0 ;
	   4'd1: seg<=8'hf9 ;
	   4'd2: seg<=8'ha4 ;
      4'd3: seg<=8'hb0 ;
      4'd4: seg<=8'h99 ;
      4'd5: seg<=8'h92 ;
      4'd6: seg<=8'h82 ;
      4'd7: seg<=8'hf8 ;
      4'd8: seg<=8'h80 ;
		4'd9: seg<=8'h90 ;
	   default:seg<=8'hbf; //每个数码管的g段都亮
	 endcase
  end  
 
 
endmodule