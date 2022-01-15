//module bottomFlag (input bt,
//                   input clk_d,
//                   input rst,
//                   output bt_flag);

//    reg    [7:0]     bt_reg;
//    always @(posedge clk_d or posedge rst)
//    begin
//        if (rst)
//        begin
//            bt_reg <= 8'b0000_0000;
//        end
//        else
//        begin
//            bt_reg <= {bt_reg[6:0],bt};
//        end
//    end
    
//    assign bt_flag = bt_reg[7]&~bt_reg[6];
    
//endmodule



module bottomFlag(
	input key,clk,clr,
	output key_changed2
    );
	wire key_changed1;
	reg [20:0] count;
	//reg [2:0] count; //for simulation
	reg sample1, sample_locked1, sample2, sample_locked2;
	
	always @(posedge clk or posedge clr)
		if(clr) sample1 <= 0;
		else sample1 <= key;
		
	always @(posedge clk or posedge clr)
		if(clr) sample_locked1 <= 0;
		else sample_locked1 <= sample1;	
	
	assign key_changed1 = ~sample_locked1 & sample1;
	
	always @(posedge clk or posedge clr)
		if(clr) count <= 0;
		else if(key_changed1) count <= 0;
		else count <= count + 1;
 
	always @(posedge clk or posedge clr)
		if(clr) sample2 <= 0;
		else if(count == 2000000)
		//else if(count == 2) // for simulation
			sample2 <= key;	
 
	always @(posedge clk or posedge clr)
		if(clr) sample_locked2 <= 0;
		else sample_locked2 <= sample2;	
 
	assign key_changed2 = ~sample_locked2 & sample2;
 
endmodule