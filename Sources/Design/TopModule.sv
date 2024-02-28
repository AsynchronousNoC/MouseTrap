`timescale 1ns / 1ps

module TopModule
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

	output		           req_dw_o[OUTPORTS-1:0],
	output   [WIDTH-1:0] Data_dw_o[OUTPORTS-1:0],
	input			           ack_dw_i[OUTPORTS-1:0],
	input 		           Tailpassed_dw_i[OUTPORTS-1:0],
	output               PacketEnable_dw_o[OUTPORTS-1:0]
);
    
    ipm#(WIDTH,OUTPORTS,2,2) IPM_EAST(reset,gen_enable, req_up_i,Data_up_i,ack_up_o,req_dw_o,Data_dw_o,ack_dw_i,Tailpassed_dw_i,PacketEnable_dw_o);
endmodule
































