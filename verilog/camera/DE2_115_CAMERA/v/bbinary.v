module bbinary (
	input						CLOCK,
	input						RESET,
	input				[9:0]	thresh,
	input						iDval,
	input				[9:0]	input_data,
	output	reg			oDval,
	output	reg	[9:0]	output_data
);

always @ (posedge CLOCK, negedge RESET) begin
	if (!RESET) begin
		oDval <= 1'b0;
		output_data <= 10'h0000000000;
	end
	else begin
		oDval <= iDval;
		if (iDval)
			output_data <= (input_data > thresh)? 1023 : 0;
		else
			output_data <= 10'b0000000000;
	end
end

endmodule
