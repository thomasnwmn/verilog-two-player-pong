module seven_seg(input [3:0] digit, output reg [7:0] segments);

	always @(*) begin // whenever digits change, update
		case (digit)
			4'd0: segments = 8'b11000000;
			4'd1: segments = 8'b11111001;
			4'd2: segments = 8'b10100100;
			4'd3: segments = 8'b10110000;
			4'd4: segments = 8'b10011001;
			4'd5: segments = 8'b10010010;
			4'd6: segments = 8'b10000010;
			4'd7: segments = 8'b11111000;
			4'd8: segments = 8'b10000000;
			4'd9: segments = 8'b10010000;
			default: segments = 8'b11111111;
		endcase
	end

endmodule
