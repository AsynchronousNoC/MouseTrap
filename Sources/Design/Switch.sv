`timescale 1ns / 1ps

module Switch
#(
	parameter WIDTH = 32, // larghezza del bundled data.=256
	parameter PORTS =4
)
(
	input 							 reset,
	input 							 gen_enable,
	
	input								 req_up_i,
	input    [WIDTH-1:0] Data_up_i,
	output 							 ack_up_o,

	output   [PORTS-1:0]	           req_dw_o,
	output   [PORTS-1:0][WIDTH-1:0] Data_dw_o,
	input    [PORTS-1:0]            ack_dw_i,
	input 	 [PORTS-1:0]            Tailpassed_dw_i
);
    logic [PORTS-1:0] req_outports, ack_outports, PacketEnable_outports,Tailpassed_outports;
    logic [PORTS-1:0][WIDTH-1:0] Data_outports, DataAusiliary;
    (* DONT_TOUCH = "yes"*) ipm#(WIDTH,PORTS,2,2) IPM_EAST(reset,gen_enable, req_up_i,Data_up_i,ack_up_o,req_outports,Data_outports,ack_outports,Tailpassed_outports,PacketEnable_outports);
    genvar i;
    generate
    for (i=0;i<PORTS;i++)
      (* DONT_TOUCH = "yes"*) opm#(WIDTH,PORTS) OPMS(reset,gen_enable,req_outports[i],Data_outports[i],ack_outports[i],req_dw_o[i],Data_dw_o[i],ack_dw_i[i],PacketEnable_outports[i],Tailpassed_outports[i],Tailpassed_dw_i[i]);
    endgenerate
endmodule


