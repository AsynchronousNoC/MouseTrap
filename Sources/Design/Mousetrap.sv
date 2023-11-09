`timescale 1ns/1ps

module mousetrap 
#(
  parameter xorDelay = 55,
  parameter WIDTH = 16 // larghezza del bundled data.
)
(
  input rst,
  
  ReqIn,
  [WIDTH-1:0] DataIn,
  output AckIn,
  
  ReqOut,
  logic[WIDTH-1:0] DataOut,
  input AckOut
) ;
  
  logic re;

  
  
	//first latch
    always_latch begin
       if (~rst) begin
         re <= 0;
       end else begin
         if (~(ReqOut ^ AckOut)) begin    // mind this latch is enabled low
           re <= ReqIn;
         end
       end
     end

    //second latch    
    always_latch begin
       if (~rst) begin
         DataOut <= 0;
       end else begin
         if (~(ReqOut ^ AckOut)) begin    // mind this latch is enabled low
           DataOut <= DataIn;
         end
       end
     end
	assign ReqOut = re;
	assign AckIn = re;
endmodule

module mousetrap_complProc
#(
  parameter xorDelay = 55,
  parameter WIDTH = 16 // larghezza del bundled data.
)
(
  input rst,
  
  ReqIn,
  [WIDTH-1:0] DataIn,
  output AckIn,
  
  ReqOut,
  logic[WIDTH-1:0] DataOut,
  input AckOut
) ;
  
  logic re;

  
  
	//first latch
    always_latch begin
       if (~rst) begin
         re <= 0;
         DataOut <= 0;
       end else begin
         if (~(ReqOut ^ AckOut)) begin    // mind this latch is enabled low
           re <= ReqIn;
           DataOut <= DataIn;
         end
       end
     end
     
	assign ReqOut = re;
	assign AckIn = re;
endmodule

module mousetrap_proc1 
#(
  parameter xorDelay = 55,
  parameter WIDTH = 16 // larghezza del bundled data.
)
(
  input rst,
  
  ReqIn,
  [WIDTH-1:0] DataIn,
  output AckIn,
  
  ReqOut,
  logic[WIDTH-1:0] DataOut,
  input AckOut
) ;
  
  logic re,en;  
    //first latch
    always_latch begin
       if (~rst) begin
         re <= 0;
       end else begin
         if (en) begin
           re <= ReqIn;
         end
       end
     end

    //second latch    
    always_latch begin
       if (~rst) begin
         DataOut <= 0;
       end else begin
         if (en) begin
           DataOut <= DataIn;
         end
       end
     end

	assign ReqOut = re;
	assign AckIn = re;
    assign en =~ (ReqOut ^ AckOut);
endmodule

module mousetrap_ldce 
#(
  parameter xorDelay = 55,
  parameter WIDTH = 16 // larghezza del bundled data.
)
(
  input rst,
  
  input   Req_up_i,
  input   [WIDTH-1:0] Data_up_i,
  output  Ack_up_o,
  
  output  Req_dw_o,
  output  logic[WIDTH-1:0] Data_dw_o,
  input   Ack_dw_i
) ;
  localparam[8*10-1:0] DataCellAddress[WIDTH-1:0]= WIDTH=='d8 ? {"X17Y16","X17Y16","X17Y16","X17Y16","X17Y14","X19Y16","X19Y16","X19Y16"} :  
                                            WIDTH=='d16 ? {"X17Y18","X17Y18","X17Y18","X17Y18","X17Y16","X19Y18","X19Y18","X19Y18","X17Y14","X17Y14","X17Y14","X17Y14","X17Y16","X19Y16","X17Y16","X19Y16"} : 
                                            WIDTH=='d32 ?  {"X17Y14","X21Y18","X21Y18","X21Y18","X21Y18","X17Y18","X17Y18","X17Y18","X17Y18","X19Y18","X19Y18","X21Y16","X19Y18","X19Y18","X17Y16","X17Y16","X17Y16","X17Y16","X19Y16","X19Y16","X19Y16","X19Y16","X17Y14","X19Y14","X19Y14","X21Y16","X21Y16","X17Y14","X19Y14","X19Y14","X23Y18","X23Y18"}:
                                            WIDTH=='d64 ?  {"X19Y14","X21Y18","X17Y22","X23Y18","X23Y18","X17Y22","X17Y22","X17Y22","X19Y22","X19Y22","X19Y22","X19Y14","X19Y22","X19Y20","X19Y20","X23Y18","X21Y22","X21Y22","X19Y20","X19Y20","X17Y20","X17Y20","X19Y14","X17Y20","X17Y20","X17Y18","X17Y18","X17Y18","X17Y18","X19Y18","X21Y22","X21Y22","X23Y22","X21Y14","X23Y22","X19Y18","X23Y22","X23Y22","X19Y18","X19Y18","X17Y16","X17Y16","X21Y16","X21Y16","X19Y14","X19Y16","X19Y16","X19Y16","X21Y20","X21Y20","X21Y20","X21Y20","X23Y20","X23Y20","X23Y20","X17Y14","X19Y16","X21Y18","X23Y20","X21Y18","X17Y14","X17Y14","X21Y16","X23Y18"} : {""} ;
 
  localparam ReqCellAddress= WIDTH=='d8  ? "X19Y16" : 
                             WIDTH=='d16 ? "X19Y18" :
                             WIDTH=='d32 ? "X17Y14" :
                             WIDTH=='d64 ? "X21Y18" : "";
                             
  localparam ReqXorAddress=  WIDTH=='d8  ? "X17Y16" :
                             WIDTH=='d16 ? "X19Y18" :
                             WIDTH=='d32 ? "X19Y18" :
                             WIDTH=='d64 ? "X17Y22" : "";
  logic re,en;
    // importante usare hu_set e non u_set altrimenti la cosa non è gerarchica
    (* HU_SET = "uset0", RLOC = string'(ReqCellAddress) *) LDCE #(
        .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
        .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
        .IS_G_INVERTED(1'b0)    // Optional inversion for G
    )
    req_latch (
        .Q(re),     // 1-bit output: Data
        .CLR(rst), // 1-bit input: Asynchronous clear
        .D(Req_up_i),     // 1-bit input: Data
        .G(en),     // 1-bit input: Gate
        .GE(1'b1)    // 1-bit input: Gate enable
    );
    genvar i;
    generate
        for (i=0; i<WIDTH; i=i+1) begin
          (* HU_SET = "uset0", RLOC = string'(DataCellAddress[i]) *) LDCE #(
            .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
            .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
            .IS_G_INVERTED(1'b0)    // Optional inversion for G
          )
          Data_latch (
            .Q(Data_dw_o[i]),     // 1-bit output: Data
            .CLR(rst), // 1-bit input: Asynchronous clear
            .D(Data_up_i[i]),     // 1-bit input: Data
            .G(en),     // 1-bit input: Gate
            .GE(1'b1)    // 1-bit input: Gate enable
          );
        end
     endgenerate;
     
     //xor(en =~ (ReqOut ^ AckOut);
    (* HU_SET = "uset0", RLOC = string'(ReqXorAddress), RPM_GRID = "GRID" *)  LUT2 #(.INIT(4'h9)) ReqXor(.O(en), .I0(Req_dw_o), .I1(Ack_dw_i));
  	assign Req_dw_o = re;
	  assign Ack_up_o = re;
endmodule

module mousetrap_ldce_woMacros
#(
  parameter xorDelay = 55,
  parameter WIDTH = 16 // larghezza del bundled data.
)
(
  input rst,
  
  input   Req_up_i,
  input   [WIDTH-1:0] Data_up_i,
  output  Ack_up_o,
  
  output  Req_dw_o,
  output  logic[WIDTH-1:0] Data_dw_o,
  input   Ack_dw_i
) ;
  logic re,en;
    // importante usare hu_set e non u_set altrimenti la cosa non è gerarchica
    LDCE #(
        .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
        .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
        .IS_G_INVERTED(1'b0)    // Optional inversion for G
    )
    req_latch (
        .Q(re),     // 1-bit output: Data
        .CLR(rst), // 1-bit input: Asynchronous clear
        .D(Req_up_i),     // 1-bit input: Data
        .G(en),     // 1-bit input: Gate
        .GE(1'b1)    // 1-bit input: Gate enable
    );
    genvar i;
    generate
        for (i=0; i<WIDTH; i=i+1) begin
           LDCE #(
            .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
            .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
            .IS_G_INVERTED(1'b0)    // Optional inversion for G
          )
          Data_latch (
            .Q(Data_dw_o[i]),     // 1-bit output: Data
            .CLR(rst), // 1-bit input: Asynchronous clear
            .D(Data_up_i[i]),     // 1-bit input: Data
            .G(en),     // 1-bit input: Gate
            .GE(1'b1)    // 1-bit input: Gate enable
          );
        end
     endgenerate;
     
     //xor(en =~ (ReqOut ^ AckOut);
     LUT2 #(.INIT(4'h9)) ReqXor(.O(en), .I0(Req_dw_o), .I1(Ack_up_o));
  	assign Req_dw_o = re;
	  assign Ack_up_o = re;
endmodule