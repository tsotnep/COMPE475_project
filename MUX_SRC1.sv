module MUX_SRC1(
	input [31:0] Rn, Rs, PC_out,
	input [1:0] sel,
	output reg [31:0] Output // i would have given a better name here
);

always_comb begin
	case(sel)
		0: 		Output = Rn;
		1: 		Output = Rs;
		2: 		Output = PC_out;
		default: Output = 0;
	endcase
end	

endmodule
