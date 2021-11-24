// Coder:           Gustavo Alejandro Solorio Ramos
// Date:            23 Noviembre 2021
// Name:            mux32_to_1.v
module mux32_to_1#
//======================================================= 
//Parameter declarations
//=======================================================
(parameter DW=32)
//=======================================================
//  INPUT/OUTPUT declarations
//=======================================================
   (input [DW-1:0] Index0,Index1,Index2,Index3,Index4,Index5,Index6,Index7,Index8,Index9,Index10,Index11,Index12,Index13,Index14,Index15,Index16,Index17,Index18,Index19,Index20,Index21,Index22,Index23,Index24,
								Index25,Index26,Index27,Index28,Index29,Index30,Index31,
    input [4:0] Sel,
    output reg [DW-1:0] Output);
always @(Sel)
	begin 
		case(Sel)
			5'b00000: Output = Index0;
			5'b00001: Output = Index1;
			5'b00010: Output = Index2;
			5'b00011: Output = Index3;
			5'b00100: Output = Index4;
			5'b00101: Output = Index5;
			5'b00110: Output = Index6;
			5'b00111: Output = Index7;
			5'b01000: Output = Index8;
			5'b01001: Output = Index9;
			5'b01010: Output = Index10;
			5'b01011: Output = Index11;
			5'b01100: Output = Index12;
			5'b01101: Output = Index13;
			5'b01110: Output = Index14;
			5'b01111: Output = Index15;
			5'b10000: Output = Index16;
			5'b10001: Output = Index17;
			5'b10010: Output = Index18;
			5'b10011: Output = Index19;
			5'b10100: Output = Index20;
			5'b10101: Output = Index21;
			5'b10110: Output = Index22;
			5'b10111: Output = Index23;
			5'b11000: Output = Index24;
			5'b11001: Output = Index25;
			5'b11010: Output = Index26;
			5'b11011: Output = Index27;
			5'b11100: Output = Index28;
			5'b11101: Output = Index29;
			5'b11110: Output = Index30;
			5'b11111: Output = Index31;
		endcase 
	end 
endmodule 