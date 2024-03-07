`timescale 1ns / 1ps

module TopModule_Switch
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
	output   [WIDTH-1:0] Data_dw0_o,
	output   [WIDTH-1:0] Data_dw1_o,
	output   [WIDTH-1:0] Data_dw2_o,
	output   [WIDTH-1:0] Data_dw3_o,
	input    [PORTS-1:0]            ack_dw_i,
	input 	 [PORTS-1:0]            Tailpassed_dw_i
);
    (* DONT_TOUCH = "yes"*) logic ack_delay_1,ack_delay_2,ack_delay_3;
    (* DONT_TOUCH = "yes", U_SET = "Prova", RLOC ="X0Y0"*) LUT1#(.INIT(2'b10)) req_delay_1(.O(ack_delay_2),.I0(ack_delay_3));
    (* DONT_TOUCH = "yes", U_SET = "Prova", RLOC ="X0Y1"*) LUT1#(.INIT(2'b10)) req_delay_2(.O(ack_delay_1),.I0(ack_delay_2));   //FUNZIA!
    (* DONT_TOUCH = "yes", U_SET = "Prova", RLOC ="X0Y2"*) LUT1#(.INIT(2'b10)) req_delay_3(.O(ack_up_o),.I0(ack_delay_1));   //FUNZIA!
    
    logic [PORTS-1:0][WIDTH-1:0]  DataAusiliary;
    assign DataAusiliary = {Data_dw3_o,Data_dw2_o,Data_dw1_o,Data_dw0_o}; 
    (* DONT_TOUCH = "yes"*) Switch#(WIDTH,PORTS) MySwitch(reset,gen_enable,req_up_i,Data_up_i,ack_delay_3,req_dw_o,DataAusiliary,ack_dw_i,Tailpassed_dw_i);
endmodule
































