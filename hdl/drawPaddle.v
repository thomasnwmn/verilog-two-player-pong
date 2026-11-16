module drawPaddle(
	input [9:0] col,
	input [8:0] row,
	input [9:0] x,
	input [8:0] y,
	input [5:0] height,
	input [5:0] width,
	output overlap
);

	assign overlap = (row >= y) && (row < y + height) && (col >= x) && (col < x + width);

endmodule