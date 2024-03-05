`timescale 1ns/1ps

module ipm 
#(
	parameter WIDTH = 32, // larghezza del bundled data.
	parameter OUTPORTS =4,
	parameter LocationX=2,
	parameter LocationY=2
)
(
	input 							 reset,
	input 							 gen_enable,
	
	input								 req_up_i,
	input    [WIDTH-1:0] Data_up_i,
	output 							 ack_up_o,

	output   [OUTPORTS-1:0]	           req_dw_o,
	output   [OUTPORTS-1:0][WIDTH-1:0] Data_dw_o,
	input    [OUTPORTS-1:0]            ack_dw_i,
	input 	 [OUTPORTS-1:0]            Tailpassed_dw_i,
	output   [OUTPORTS-1:0]            PacketEnable_dw_o
	);
	genvar i;
	logic req,ack;
	logic[WIDTH-1:0] Data;
	logic[OUTPORTS-1:0] Rsel;
  assign ack = ack_dw_i[0]^ack_dw_i[1]^ack_dw_i[2]^ack_dw_i[3];

	(* DONT_TOUCH = "yes"*) mousetrap_ldce#(WIDTH) input_pipe(reset,gen_enable,req_up_i,Data_up_i,ack_up_o,req,Data,ack);	
	generate
	 for(i=0;i<OUTPORTS;i=i+1)
	   assign Data_dw_o[i] = Data;
	endgenerate
	 (* DONT_TOUCH = "yes"*) PacketRouteSelector#(WIDTH,OUTPORTS,LocationX,LocationY) PRC(req,Data,ack,Rsel);
	
	 (* DONT_TOUCH = "yes"*)
	generate
		for(i=0;i<OUTPORTS;i=i+1)
			 (* DONT_TOUCH = "yes"*) RequestGenerator#(i, OUTPORTS) ReqGen(reset,req,ack_dw_i,Rsel[i], Tailpassed_dw_i[i],req_dw_o[i], PacketEnable_dw_o[i]);
	endgenerate
endmodule



