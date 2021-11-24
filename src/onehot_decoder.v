// Coder:           Gustavo Alejandro Solorio Ramos
// Date:            23 Noviembre 2021
// Name:            onehot_decoder.v

module onehot_decoder#
//======================================================= 
//Parameter declarations
//=======================================================
(parameter ONE = 1'b1)
//=======================================================
//  INPUT/OUTPUT declarations
//=======================================================
(
	input [4:0] din,
	output reg [31:0] dout
);
	always @(din) 
		begin 
			case(din)
				5'b00000: dout[0] <=ONE;
				5'b00001: dout[1] <=ONE;
				5'b00010: dout[2] <=ONE;
				5'b00011: dout[3] <=ONE;
				5'b00100: dout[4] <=ONE;
				5'b00101: dout[5] <=ONE;
				5'b00110: dout[6] <=ONE;
				5'b00111: dout[7] <=ONE;
				5'b01000: dout[8] <=ONE;
				5'b01001: dout[9] <=ONE;
				5'b01010: dout[10] <=ONE;
				5'b01011: dout[11] <=ONE;
				5'b01100: dout[12] <=ONE;
				5'b01101: dout[13] <=ONE;
				5'b01110: dout[14] <=ONE;
				5'b01111: dout[15] <=ONE;
				5'b10000: dout[16] <=ONE;
				5'b10001: dout[17] <=ONE;
				5'b10010: dout[18] <=ONE;
				5'b10011: dout[19] <=ONE;
				5'b10100: dout[20] <=ONE;
				5'b10101: dout[21] <=ONE;
				5'b10110: dout[22] <=ONE;
				5'b10111: dout[23] <=ONE;
				5'b11000: dout[24] <=ONE;
				5'b11001: dout[25] <=ONE;
				5'b11010: dout[26] <=ONE;
				5'b11011: dout[27] <=ONE;
				5'b11100: dout[28] <=ONE;
				5'b11101: dout[29] <=ONE;
				5'b11110: dout[30] <=ONE;
				5'b11111: dout[31] <=ONE;
			endcase 
		end 
endmodule