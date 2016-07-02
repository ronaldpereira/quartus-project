module extensor(iin, out);

	input [15:0] iin;
	output reg [15:0] out;
	reg [2:0] OpSelect;
	reg [9:0] imediate;

	always @ (iin)
	begin
		OpSelect = {iin[15], iin[14], iin[13]};
		imediate = {iin[9], iin[8], iin[7], iin[6], iin[5], iin[4], iin[3], iin[2], iin[1], iin[0]};

		out <= {6'b000000, imediate};
	end


endmodule
