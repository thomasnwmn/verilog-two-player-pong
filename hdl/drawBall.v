module drawBall(
	input [9:0] col,
	input [8:0] row,
	input [9:0] x,
	input [8:0] y,
	input [9:0] radius,
	output overlap
);
	wire [19:0] radius_squared, x_portion, y_portion;
	
	assign radius_squared = radius * radius;
	
	assign x_portion = (col - x) * (col - x);
	assign y_portion = (row - y) * (row - y);
	
	assign overlap = (x_portion + y_portion) <= radius_squared;

endmodule