`timescale 1ns/1ps

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
  input   Ack_dw_i,
  input gen_enable
) ;
  localparam[8*10-1:0] DataCellAddress[WIDTH-1:0]= 
  WIDTH=='d8 ?  {"X103Y16","X103Y16","X103Y16","X103Y16","X101Y14","X101Y16","X101Y16","X101Y16"} :////8 Bit DataCellAddress
  WIDTH=='d16 ?  {"X105Y18","X105Y18","X105Y18","X105Y18","X101Y14","X103Y16","X103Y16","X103Y16","X101Y18","X101Y18","X101Y18","X101Y18","X103Y18","X103Y18","X103Y18","X103Y18"} :////16 Bit DataCellAddress
  WIDTH=='d32 ?  {"X101Y16","X101Y16","X101Y16","X101Y16","X103Y16","X103Y16","X103Y16","X103Y16","X103Y18","X101Y14","X107Y14","X107Y14","X107Y14","X103Y14","X103Y14","X103Y14","X103Y18","X103Y18","X103Y18","X105Y16","X105Y16","X105Y16","X105Y16","X101Y18","X101Y18","X103Y14","X105Y14","X105Y14","X105Y14","X105Y14","X107Y14","X101Y18"} :////32 Bit DataCellAddress
  WIDTH=='d64 ?  {"X101Y16","X101Y16","X101Y16","X103Y16","X103Y16","X103Y16","X103Y16","X101Y18","X103Y18","X103Y18","X103Y18","X103Y18","X101Y14","X101Y18","X101Y18","X101Y18","X101Y20","X101Y20","X101Y20","X101Y20","X103Y20","X103Y20","X103Y20","X103Y20","X103Y24","X101Y22","X101Y22","X101Y22","X101Y22","X103Y22","X103Y22","X103Y22","X103Y22","X103Y26","X101Y24","X101Y24","X101Y24","X101Y24","X103Y24","X103Y24","X103Y24","X103Y30","X103Y30","X101Y26","X101Y26","X101Y26","X101Y26","X103Y26","X103Y26","X103Y26","X101Y28","X101Y28","X101Y28","X101Y28","X103Y28","X103Y28","X103Y28","X103Y28","X101Y30","X101Y30","X101Y30","X101Y30","X103Y30","X103Y30"} :////64 Bit DataCellAddress
 {""} ; 
  localparam ReqCellAddress= 
  WIDTH=='d8 ?"X101Y16" :////8 Bit ReqCellAddress
  WIDTH=='d16 ?"X101Y16" :////16 Bit ReqCellAddress
  WIDTH=='d32 ?"X101Y18" :////32 Bit ReqCellAddress
  WIDTH=='d64 ?"X101Y16" :////64 Bit ReqCellAddress
  "";                           
  localparam ReqXorAddress=  
  WIDTH=='d8 ?"X103Y16" :////8 Bit ReqXorAddress
  WIDTH=='d16 ?"X105Y16" :////16 Bit ReqXorAddress
  WIDTH=='d32 ?"X107Y18" :////32 Bit ReqXorAddress
  WIDTH=='d64 ?"X103Y16" :////64 Bit ReqXorAddress
  "";
  logic re,en,gen_enable_1;
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
        .G(gen_enable_1),     // 1-bit input: Gate
        .GE(en)    // 1-bit input: Gate enable
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
            .G(gen_enable_1),     // 1-bit input: Gate
            .GE(en)    // 1-bit input: Gate enable
          );
        end
     endgenerate;
     
     //xor(en =~ (ReqOut ^ AckOut);
    (* HU_SET = "uset0",LOCK_PINS = "I0:A5,I1:A4", RLOC = string'(ReqXorAddress), RPM_GRID = "GRID" *)  LUT2 #(.INIT(4'h9)) ReqXor(.O(en), .I0(Req_dw_o), .I1(Ack_dw_i));
    (* HU_SET = "uset0",LOCK_PINS = "I0:A5,I1:A4", RLOC = string'(ReqXorAddress), RPM_GRID = "GRID" *)  LUT2 #(.INIT(4'h9)) ReqXor_1(.O(gen_enable_1), .I0(Req_dw_o), .I1(Ack_dw_i));
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
  input   Ack_dw_i,
  input gen_enable
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
        .G(gen_enable),     // 1-bit input: Gate
        .GE(en)    // 1-bit input: Gate enable
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
            .G(gen_enable),     // 1-bit input: Gate
            .GE(en)    // 1-bit input: Gate enable
          );
        end
     endgenerate;
     
     //xor(en =~ (ReqOut ^ AckOut);
    LUT2 #(.INIT(4'h9)) ReqXor(.O(en), .I0(Req_dw_o), .I1(Ack_dw_i));
  	assign Req_dw_o = re;
	  assign Ack_up_o = re;
endmodule








