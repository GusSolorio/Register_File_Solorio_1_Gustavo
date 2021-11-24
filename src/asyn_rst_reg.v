// Coder:           Gustavo Alejandro Solorio Ramos
// Date:            23 Noviembre 2021
// Name:            asyn_rst_reg.v
// Description:     Register with active-high clock & asynchronous reset & synchronous clock enable .
module asyn_rst_reg #(parameter SIZE = 32)(clock,reset,reg_in,clock_enable,reg_out);
input clock,reset,clock_enable;
input [SIZE -1 :0] reg_in;
output [SIZE -1 :0] reg_out;
reg [SIZE -1 :0] reg_out;
always @ (negedge reset or posedge clock)
	begin
		if (!reset)
			begin
			reg_out <= 0;
			end
		else
			begin
			if (clock_enable)
				begin
					reg_out <= reg_in;
			end
		end
	end
endmodule 
