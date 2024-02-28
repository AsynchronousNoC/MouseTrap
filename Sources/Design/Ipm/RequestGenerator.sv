`timescale 1ns/1ps

module RequestGenerator
#(
	parameter location= 0,
	parameter OUTPORTPORTS =4
)
(
	input req_up_i,
	input [OUTPORTPORTS-1:0] ack_dw_i,
	input PacketEnable_up_i,
	input Tailpassed_dw_i,
	output req_dw_o,
	output logic PacketEnable_dw_o
	);
	always_latch begin
		if(PacketEnable_up_i)
			PacketEnable_dw_o<=1'b1;
		else if(Tailpassed_dw_i && PacketEnable_up_i==1'b0)
			PacketEnable_dw_o<=1'b0;
		else
			PacketEnable_dw_o<=PacketEnable_dw_o;
	end
		
	assign req_dw_o = req_up_i ^ (^ack_dw_i ^ ack_dw_i[location]);
		
endmodule
	
