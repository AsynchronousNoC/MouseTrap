`timescale 1ns/1ps

module PacketRouteSelector
#(
	parameter WIDTH = 16, // larghezza del bundled data.
	parameter OUTPORTPORTS =4,
	parameter LocationX=0,
	parameter LocationY=0
)
(
	input req,
	input [WIDTH-1:0] Data_i,
	input ack,
	output[3:0] Rsel
);
	logic enable;
	logic [OUTPORTPORTS-1:0] Rout;
	assign enable = ack ^ req;
	
	genvar i;
	generate 
		for(i=0;i<OUTPORTPORTS;i=i+1) begin
			(*  DONT_TOUCH = "yes" *)LUT2 #(.INIT(4'h8)) RouteAnd(.O(Rsel[i]),.I0(enable), .I1(Rout[i]));
		end
	endgenerate
	
	logic isHead, E,W,N,S,Loc;
	logic [3:0] x_dest,y_dest; logic [2:0] l_dest;
	logic [10:0] PacketAddress;
	assign isHead = Data_i[0] == 1'b1; // 01 -> head, 10 -> tail, 00 -> body
	assign PacketAddress = Data_i[12:2]; // {0, Address:11 bit, FlitType:2 bit}
	assign {x_dest,y_dest,l_dest} = PacketAddress;
	
	assign E = x_dest>LocationX;
  assign W = x_dest<LocationX;
  assign N = (y_dest>LocationY)  && (LocationX == x_dest);
  assign S = (y_dest<LocationY)  && (LocationX == x_dest);
  assign Loc = (LocationY == y_dest) && (LocationX == x_dest);

  assign Rout = isHead ? {N,W,S,E}  : 4'd0;
endmodule
