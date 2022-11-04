module MUX_X(
	input [31:0] ALU_Output, memory_data,
	input sel,
	output reg [31:0] Output
);

always_comb begin
	case(sel)
		0: 		out = ALU_Output;
		1: 		out = memory_data;
		default: Output = 0;
	endcase
end

endmodule