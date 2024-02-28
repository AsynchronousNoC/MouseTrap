`timescale 1ns / 1ps

module TopModule_Switch
#(
	parameter WIDTH = 32, // larghezza del bundled data.=256
	parameter OUTPORTS =4
)
(
	input 							 reset,
	input 							 gen_enable,
	
	input								 req_up_i,
	input    [WIDTH-1:0] Data_up_i,
	output 							 ack_up_o,

	output   [OUTPORTS-1:0]	           req_dw_o,
	output   [WIDTH-1:0] Data_dw0_o,
	output   [WIDTH-1:0] Data_dw1_o,
	output   [WIDTH-1:0] Data_dw2_o,
	output   [WIDTH-1:0] Data_dw3_o,
	input    [OUTPORTS-1:0]            ack_dw_i,
	input 	 [OUTPORTS-1:0]            Tailpassed_dw_i,
	output   [OUTPORTS-1:0]            PacketEnable_dw_o
);
    
    ipm#(WIDTH,OUTPORTS,2,2) IPM_EAST(reset,gen_enable, req_up_i,Data_up_i,ack_up_o,req_dw_o,{Data_dw0_o,Data_dw1_o,Data_dw2_o,Data_dw3_o},ack_dw_i,Tailpassed_dw_i,PacketEnable_dw_o);
endmodule
































