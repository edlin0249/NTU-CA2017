module ALU_Control(funct_i, ALUOp_i, ALUCtrl_o);
	input [5:0] funct_i;
	input [1:0] ALUOp_i;
	output [2:0] ALUCtrl_o;
	reg [2:0] ALUCtrl_o;
	

	always@(funct_i or ALUOp_i) 
	begin
		if(ALUOp_i == 2'b00)
			begin
				ALUCtrl_o = 3'b010;
			end
		else if(ALUOp_i == 2'b01)
			begin
				ALUCtrl_o = 3'b110;	
			end
		else if(ALUOp_i == 2'b10)
			begin
				case (funct_i)
					6'b100000: 
					begin					
						ALUCtrl_o = 3'b010;
					end
					6'b100010: 
					begin
						ALUCtrl_o = 3'b110;
					end
					6'b100100: 
					begin 
						ALUCtrl_o = 3'b000;
					end
					6'b100101: 
					begin
						ALUCtrl_o = 3'b001;
					end
					6'b011000: 
					begin
						ALUCtrl_o = 3'b011;
					end
				endcase
			end 
		else if(ALUOp_i == 2'b11)
			begin
				ALUCtrl_o = 3'b010;
			end
	end
endmodule


