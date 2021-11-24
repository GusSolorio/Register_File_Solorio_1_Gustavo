// Coder:           Gustavo Alejandro Solorio Ramos
// Date:            23 Noviembre 2021
// Name:            Register_File.v

module Register_File #
//======================================================= 
//Parameter declarations
//=======================================================
(parameter DW = 32)
//=======================================================
//  INPUT/OUTPUT declarations
//=======================================================
(
input clk, reset,
input Reg_Write_i, //Write enable
input [4:0] Write_Register_i, //rd
input [4:0] Read_Register_1_i, //rs 
input [4:0] Read_Register_2_i, //rt
input [DW-1:0] Write_Data_i, //R[rd]
output [DW-1:0] Read_Data_1_o, //R[rs]
output [DW-1:0] Read_Data_2_o, //R[rt]
output [DW-1:0] REG0,REG1,REG2,REG3,REG4,REG5,REG6,REG7,REG8,REG9,REG10,REG11,REG12,REG13,REG14,REG15,REG16,REG17,REG18,REG19,REG20,REG21,REG22,REG23,REG24,REG25,REG26,REG27,REG28,REG29,REG30,REG31
);
//=======================================================
//  REG/WIRE declarations
//=======================================================
wire [DW-1:0] Priority;
//=======================================================
//  instantiate PriorityDecoder module
//=======================================================
onehot_decoder PriorityDecoder (.din(Write_Register_i),.dout(Priority));
//=======================================================
//  instantiate register modules
//=======================================================
asyn_rst_reg  #(.SIZE(DW)) zero (.clock(clk), .reset(reset), .reg_in(0), .reg_out(REG0), .clock_enable(Reg_Write_i)); //$Zero
asyn_rst_reg  #(.SIZE(DW)) at (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG1), .clock_enable(Reg_Write_i & Priority[1])); //$at
asyn_rst_reg  #(.SIZE(DW)) v0 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG2), .clock_enable(Reg_Write_i & Priority[2]));
asyn_rst_reg  #(.SIZE(DW)) v1 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG3), .clock_enable(Reg_Write_i & Priority[3]));
asyn_rst_reg  #(.SIZE(DW)) a0 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG4), .clock_enable(Reg_Write_i & Priority[4]));
asyn_rst_reg  #(.SIZE(DW)) a1 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG5), .clock_enable(Reg_Write_i & Priority[5]));
asyn_rst_reg  #(.SIZE(DW)) a2 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG6), .clock_enable(Reg_Write_i & Priority[6]));
asyn_rst_reg  #(.SIZE(DW)) a3 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG7), .clock_enable(Reg_Write_i & Priority[7]));
asyn_rst_reg  #(.SIZE(DW)) t0 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG8), .clock_enable(Reg_Write_i & Priority[8]));
asyn_rst_reg  #(.SIZE(DW)) t1 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG9), .clock_enable(Reg_Write_i & Priority[9]));
asyn_rst_reg  #(.SIZE(DW)) t2 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG10), .clock_enable(Reg_Write_i & Priority[10]));
asyn_rst_reg  #(.SIZE(DW)) t3 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG11), .clock_enable(Reg_Write_i & Priority[11]));
asyn_rst_reg  #(.SIZE(DW)) t4 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG12), .clock_enable(Reg_Write_i & Priority[12]));
asyn_rst_reg  #(.SIZE(DW)) t5 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG13), .clock_enable(Reg_Write_i & Priority[13]));
asyn_rst_reg  #(.SIZE(DW)) t6 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG14), .clock_enable(Reg_Write_i & Priority[14]));
asyn_rst_reg  #(.SIZE(DW)) t7 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG15), .clock_enable(Reg_Write_i & Priority[15]));
asyn_rst_reg  #(.SIZE(DW)) s0 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG16), .clock_enable(Reg_Write_i & Priority[16]));
asyn_rst_reg  #(.SIZE(DW)) s1 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG17), .clock_enable(Reg_Write_i & Priority[17]));
asyn_rst_reg  #(.SIZE(DW)) s2 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG18), .clock_enable(Reg_Write_i & Priority[18]));
asyn_rst_reg  #(.SIZE(DW)) s3 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG19), .clock_enable(Reg_Write_i & Priority[19]));
asyn_rst_reg  #(.SIZE(DW)) s4 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG20), .clock_enable(Reg_Write_i & Priority[20]));
asyn_rst_reg  #(.SIZE(DW)) s5 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG21), .clock_enable(Reg_Write_i & Priority[21]));
asyn_rst_reg  #(.SIZE(DW)) s6 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG22), .clock_enable(Reg_Write_i & Priority[22]));
asyn_rst_reg  #(.SIZE(DW)) s7 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG23), .clock_enable(Reg_Write_i & Priority[23]));
asyn_rst_reg  #(.SIZE(DW)) t8 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG24), .clock_enable(Reg_Write_i & Priority[24]));
asyn_rst_reg  #(.SIZE(DW)) t9 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG25), .clock_enable(Reg_Write_i & Priority[25]));
asyn_rst_reg  #(.SIZE(DW)) k0 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG26), .clock_enable(Reg_Write_i & Priority[26]));
asyn_rst_reg  #(.SIZE(DW)) k1 (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG27), .clock_enable(Reg_Write_i & Priority[27]));
asyn_rst_reg  #(.SIZE(DW)) gp (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG28), .clock_enable(Reg_Write_i & Priority[28]));
asyn_rst_reg  #(.SIZE(DW)) sp (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG29), .clock_enable(Reg_Write_i & Priority[29]));
asyn_rst_reg  #(.SIZE(DW)) fp (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG30), .clock_enable(Reg_Write_i & Priority[30]));
asyn_rst_reg  #(.SIZE(DW)) ra (.clock(clk), .reset(reset), .reg_in(Write_Data_i), .reg_out(REG31), .clock_enable(Reg_Write_i & Priority[31]));
//=======================================================
//  Instantiate Multiplexer output 1 & output 2 modules
//=======================================================
mux32_to_1 #(.DW(DW)) Rrs (.Sel(Read_Register_1_i), .Output(Read_Data_1_o), .Index0(REG0), .Index1(REG1), .Index2(REG2), .Index3(REG3),
.Index4(REG4), .Index5(REG5), .Index6(REG6), .Index7(REG7), .Index8(REG8), .Index9(REG9), .Index10(REG10), .Index11(REG11),.Index12(REG12), .Index13(REG13),
.Index14(REG14), .Index15(REG15), .Index16(REG16), .Index17(REG17), .Index18(REG18), .Index19(REG19), .Index20(REG20), .Index21(REG21), .Index22(REG22),
.Index23(REG23), .Index24(REG24), .Index25(REG25), .Index26(REG26), .Index27(REG27), .Index28(REG28), .Index29(REG29), .Index30(REG30), .Index31(REG31)); 
mux32_to_1 #(.DW(DW)) Rts (.Sel(Read_Register_2_i), .Output(Read_Data_2_o), .Index0(REG0), .Index1(REG1), .Index2(REG2), .Index3(REG3),
.Index4(REG4), .Index5(REG5), .Index6(REG6), .Index7(REG7), .Index8(REG8), .Index9(REG9), .Index10(REG10), .Index11(REG11),.Index12(REG12), .Index13(REG13),
.Index14(REG14), .Index15(REG15), .Index16(REG16), .Index17(REG17), .Index18(REG18), .Index19(REG19), .Index20(REG20), .Index21(REG21), .Index22(REG22),
.Index23(REG23), .Index24(REG24), .Index25(REG25), .Index26(REG26), .Index27(REG27), .Index28(REG28), .Index29(REG29), .Index30(REG30), .Index31(REG31)); 
endmodule 