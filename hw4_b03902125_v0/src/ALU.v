module ALU(data1_i, data2_i, ALUCtrl_i, data_o, Zero_o);
	input [31:0]data1_i;
	input [31:0]data2_i;
	input [2:0]ALUCtrl_i;
	output [31:0]data_o;
	output Zero_o;
	reg [31:0] data;

	assign Zero_o = 1'b0;
	assign data_o = data;

	always@(ALUCtrl_i , data1_i , data2_i)
	begin
		case(ALUCtrl_i)
			3'b000:
			begin
				data = data1_i & data2_i;
			end
			3'b001:
			begin
				data = data1_i | data2_i;
			end
			3'b010:
			begin
				data = data1_i + data2_i;
			end
			3'b110:
			begin
				data = data1_i - data2_i;
			end
			3'b011:
			begin
				data = data1_i * data2_i;
			end
			default:
			begin
				data = 8'h0;
			end
		endcase
	end
endmodule

