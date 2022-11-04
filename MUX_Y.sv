module MUX_Y(
	input [3:0] ARd,
	input sel,
	output reg [3:0] Output
);

always_comb begin
	case(sel)
		0: 		Output = ARd;
		1: 		Output = 15;
		default: Output = 0;
	endcase
end

endmodule