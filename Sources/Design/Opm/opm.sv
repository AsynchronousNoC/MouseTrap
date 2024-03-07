`timescale 1ns/1ps

module opm 
#(
	parameter WIDTH = 32, // larghezza del bundled data.
	parameter INPORTS =4
)
(
	input 							 reset,
	input 							 gen_enable,
	
	input								 req_up_i,
	input    [WIDTH-1:0] Data_up_i,
	output 							 ack_up_o,

	output      				 req_dw_o,
	output	 [WIDTH-1:0] Data_dw_o,
	input        				 ack_dw_i,
	input       				 PacketEnable_dw_o,
	output 	     				 Tailpassed_up_o,
	input 	     				 Tailpassed_dw_i
	
	);

	assign Tailpassed_dw_i = Tailpassed_up_o;
	LDCE #(
      .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
      .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
      .IS_G_INVERTED(1'b0)    // Optional inversion for G
  )
  req_input (
      .Q(req_dw_o),     // 1-bit output: Data
      .CLR(reset), // 1-bit input: Asynchronous clear
      .D(req_up_i),     // 1-bit input: Data
      .G(gen_enable),     // 1-bit input: Gate
      .GE(PacketEnable_dw_o)    // 1-bit input: Gate enable
  );
  genvar i;
  generate
      for (i=0; i<WIDTH; i=i+1) begin
        LDCE #(
          .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
          .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
          .IS_G_INVERTED(1'b0)    // Optional inversion for G
        )
        data_input (
          .Q(Data_dw_o[i]),     // 1-bit output: Data
          .CLR(reset), // 1-bit input: Asynchronous clear
          .D(Data_up_i[i]),     // 1-bit input: Data
          .G(gen_enable),     // 1-bit input: Gate
          .GE(PacketEnable_dw_o)    // 1-bit input: Gate enable
        );
      end
   endgenerate;
   assign ack_up_o = ack_dw_i;

endmodule
