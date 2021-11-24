/******************************************************************
// Modified by:     Gustavo Alejandro Solorio Ramos
// Date:            23 Noviembre 2021
// Name:            Register_File_TestBench.v
// Description:     Module to test register REG18.
******************************************************************
* Description
*	This is the verifaction envioroment ofr testeting the register file.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	12/06/2015
******************************************************************/
`timescale 10ns / 1ps

module Register_File_TestBench;
//======================================================= 
//Parameter declarations
//=======================================================
parameter DW=32;
//=======================================================
//  REG/WIRE declarations
//=======================================================
reg clk_tb = 0;
reg reset_tb;
reg Reg_Write_i_tb;
reg [4:0] Write_Register_tb;
reg [4:0] Read_Register_1_tb;
reg [4:0] Read_Register_2_tb;
reg [31:0] Write_Data_i_tb;
wire [31:0] Read_Data_1_tb;
wire [31:0] Read_Data_2_tb;
wire [31:0] REG14_tb;
Register_File #(.DW(DW))
DUT(.clk(clk_tb),.reset(reset_tb),.Reg_Write_i(Reg_Write_i_tb),.Write_Register_i(Write_Register_tb),
	.Read_Register_1_i(Read_Register_1_tb),.Read_Register_2_i(Read_Register_2_tb),.Write_Data_i(Write_Data_i_tb),
	.Read_Data_1_o(Read_Data_1_tb),.Read_Data_2_o(Read_Data_2_tb),.REG14(REG14_tb)
);
initial begin // Clock generator
    forever #10 clk_tb = !clk_tb;
  end
initial begin
	#0 reset_tb = 0; // set reset 1
	#5	Write_Register_tb = 14; //Select REG14
	#10 reset_tb = 1; // set reset 1
	#15	Read_Register_1_tb = 1;
	#20 Read_Register_2_tb = 1;
	#25 Reg_Write_i_tb = 0; // Set write enable
	#30 Write_Data_i_tb = 32'hFEDCAB98;
	#45 Reg_Write_i_tb = 1; // Set write enable
	#50 Read_Register_1_tb = 0;
	#55 Read_Register_2_tb = 0;
	#60 reset_tb = 0;
	#65 reset_tb = 1;
	#70 Reg_Write_i_tb = 1; // Set write enable
	#75 Read_Register_1_tb = 1;
	#80 Read_Register_2_tb = 1;
	#85 Write_Data_i_tb = 32'h89ABCDEF;
	#90 Reg_Write_i_tb = 1; // Set write enable
	#95 reset_tb = 0;
	#100 reset_tb = 1;
	$finish();
	end
endmodule