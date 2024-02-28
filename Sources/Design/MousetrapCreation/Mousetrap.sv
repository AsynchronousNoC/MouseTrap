`timescale 1ns/1ps

module mousetrap_ldce 
#(
  parameter WIDTH = 16 // larghezza del bundled data.
)
(
  input rst,
  input gen_enable,
  input   Req_up_i,
  input   [WIDTH-1:0] Data_up_i,
  output  Ack_up_o,
  
  output  Req_dw_o,
  output  logic[WIDTH-1:0] Data_dw_o,
  input   Ack_dw_i
) ;
  localparam[8*10-1:0] DataCellAddress[WIDTH-1:0]= 
  WIDTH=='d8 ?  {"X103Y16","X103Y16","X103Y16","X103Y16","X101Y14","X101Y16","X101Y16","X101Y16"} ://8 Bit DataCellAddress
  WIDTH=='d16 ?  {"X105Y18","X105Y18","X105Y18","X105Y18","X101Y14","X103Y16","X103Y16","X103Y16","X101Y18","X101Y18","X101Y18","X101Y18","X103Y18","X103Y18","X103Y18","X103Y18"} ://16 Bit DataCellAddress
  WIDTH=='d32 ?  {"X65Y250","X65Y250","X65Y250","X69Y250","X69Y250","X69Y250","X69Y250","X71Y250","X71Y250","X71Y250","X69Y252","X65Y252","X65Y252","X65Y252","X69Y252","X69Y254","X71Y250","X71Y252","X71Y252","X71Y252","X71Y252","X67Y252","X67Y250","X67Y250","X69Y254","X69Y252","X71Y254","X71Y254","X71Y254","X71Y254","X65Y254","X67Y250"} ://32 Bit DataCellAddress
  WIDTH=='d64 ?  {"X69Y258","X65Y252","X65Y252","X69Y252","X69Y252","X69Y252","X69Y252","X69Y258","X69Y258","X69Y258","X69Y256","X67Y252","X67Y252","X67Y252","X69Y256","X69Y250","X69Y250","X69Y250","X69Y250","X71Y250","X71Y250","X71Y250","X71Y250","X69Y256","X69Y256","X71Y256","X71Y256","X71Y252","X71Y252","X71Y252","X71Y252","X65Y252","X65Y254","X65Y254","X65Y254","X69Y254","X65Y250","X65Y250","X65Y250","X65Y250","X67Y250","X71Y256","X71Y256","X71Y258","X71Y258","X71Y258","X67Y250","X65Y252","X67Y254","X67Y254","X67Y254","X71Y254","X67Y250","X67Y250","X67Y254","X71Y254","X71Y254","X71Y254","X71Y258","X65Y256","X67Y252","X65Y256","X65Y256","X65Y256"} ://64 Bit DataCellAddress
  WIDTH=='d128 ?  {"X75Y252","X73Y258","X75Y256","X75Y250","X75Y250","X75Y252","X75Y250","X73Y250","X73Y250","X73Y250","X75Y256","X67Y250","X67Y250","X75Y252","X73Y252","X73Y252","X73Y252","X67Y250","X65Y250","X65Y250","X67Y252","X67Y252","X67Y252","X65Y252","X65Y252","X65Y250","X71Y250","X65Y252","X71Y250","X71Y252","X75Y254","X75Y254","X75Y254","X73Y254","X71Y252","X73Y254","X69Y254","X71Y252","X73Y254","X69Y254","X67Y254","X67Y254","X67Y254","X65Y254","X71Y250","X75Y256","X73Y256","X65Y254","X73Y256","X73Y256","X67Y256","X69Y252","X71Y252","X65Y252","X69Y250","X67Y252","X69Y250","X69Y254","X69Y250","X71Y250","X65Y250","X67Y250","X69Y252","X73Y252","X65Y254","X71Y254","X75Y252","X69Y252","X69Y254","X71Y254","X71Y254","X71Y254","X65Y254","X67Y254","X67Y256","X73Y254","X75Y254","X71Y258","X67Y256","X65Y256","X65Y256","X73Y250","X75Y250","X65Y256","X69Y258","X69Y258","X69Y258","X71Y256","X73Y258","X71Y256","X73Y258","X67Y258","X65Y260","X65Y260","X65Y260","X71Y256","X69Y256","X69Y256","X69Y256","X71Y260","X67Y258","X69Y256","X71Y260","X71Y260","X71Y256","X67Y258","X65Y258","X65Y258","X65Y258","X69Y260","X71Y258","X69Y258","X65Y256","X67Y256","X73Y256","X75Y256","X71Y258","X69Y260","X69Y260","X73Y260","X73Y260","X69Y260","X71Y258","X65Y258","X71Y260","X65Y260","X67Y258","X73Y258"} ://128 Bit DataCellAddress
  WIDTH=='d256 ?  {"X79Y264","X77Y256","X73Y258","X73Y250","X79Y250","X79Y254","X79Y250","X79Y254","X73Y250","X73Y250","X79Y254","X73Y252","X75Y250","X73Y252","X75Y250","X75Y250","X73Y252","X75Y250","X77Y256","X69Y250","X69Y250","X69Y250","X69Y250","X73Y252","X75Y252","X75Y252","X75Y252","X71Y250","X71Y250","X75Y252","X75Y254","X75Y254","X71Y250","X71Y250","X65Y250","X65Y250","X73Y260","X73Y256","X75Y258","X73Y256","X73Y260","X73Y256","X65Y250","X65Y250","X73Y256","X73Y254","X75Y256","X75Y256","X75Y256","X73Y254","X75Y254","X73Y254","X67Y250","X75Y254","X67Y250","X75Y256","X69Y254","X71Y254","X71Y254","X69Y254","X69Y256","X67Y250","X67Y250","X69Y256","X69Y256","X71Y254","X71Y254","X69Y254","X65Y252","X65Y252","X69Y254","X69Y252","X65Y252","X65Y252","X67Y252","X67Y252","X69Y252","X67Y252","X67Y252","X65Y254","X65Y254","X65Y254","X65Y254","X67Y254","X67Y254","X67Y256","X69Y252","X67Y256","X69Y252","X71Y252","X71Y252","X65Y256","X71Y252","X71Y252","X65Y256","X65Y256","X65Y256","X77Y250","X67Y254","X67Y254","X65Y258","X65Y258","X67Y256","X65Y258","X65Y258","X67Y256","X67Y258","X67Y258","X77Y252","X77Y250","X77Y250","X67Y258","X67Y258","X77Y250","X73Y260","X77Y252","X77Y254","X79Y250","X77Y252","X77Y254","X77Y252","X79Y252","X79Y250","X79Y252","X77Y254","X79Y252","X77Y254","X69Y256","X79Y262","X73Y260","X73Y264","X75Y258","X75Y258","X75Y260","X75Y260","X79Y264","X75Y260","X75Y260","X69Y258","X69Y260","X69Y260","X69Y260","X69Y260","X79Y266","X73Y262","X71Y256","X69Y258","X69Y258","X71Y260","X71Y256","X69Y258","X71Y256","X71Y258","X71Y258","X71Y260","X71Y260","X71Y258","X71Y260","X73Y262","X67Y260","X67Y260","X73Y262","X73Y262","X75Y262","X75Y262","X79Y264","X75Y262","X73Y264","X79Y266","X73Y266","X75Y262","X75Y264","X75Y264","X75Y264","X73Y266","X75Y264","X69Y262","X69Y264","X69Y262","X69Y264","X73Y266","X73Y266","X69Y264","X75Y266","X75Y266","X75Y266","X69Y264","X75Y266","X69Y266","X69Y266","X71Y264","X69Y266","X67Y260","X69Y262","X71Y256","X71Y258","X65Y262","X77Y258","X65Y262","X77Y258","X65Y260","X65Y260","X77Y258","X77Y258","X71Y264","X69Y262","X79Y258","X77Y256","X77Y256","X79Y256","X79Y256","X79Y256","X67Y260","X79Y256","X79Y258","X79Y254","X77Y260","X79Y258","X71Y264","X77Y260","X77Y260","X71Y262","X77Y260","X79Y260","X79Y260","X71Y262","X79Y258","X71Y262","X71Y264","X71Y262","X77Y262","X69Y266","X77Y264","X77Y262","X77Y262","X77Y262","X77Y264","X77Y264","X79Y260","X71Y266","X79Y262","X79Y262","X79Y262","X77Y264","X71Y266","X71Y266","X71Y266","X77Y266","X77Y266","X77Y266","X77Y266","X79Y266","X79Y264","X79Y266","X79Y260","X79Y252"} ://256 Bit DataCellAddress
  {""} ; 
  localparam[8*10-1:0] DataCellBELL[WIDTH-1:0]= 
  WIDTH=='d8   ? {""} : //8 Bit DataCellBELL
  WIDTH=='d16  ? {""} : //16 Bit DataCellBELL
  WIDTH=='d32 ?  {"AFF","DFF","CFF","AFF","BFF","CFF","DFF","AFF","BFF","CFF","AFF","AFF","BFF","CFF","BFF","AFF","DFF","AFF","BFF","CFF","DFF","AFF","AFF","BFF","BFF","CFF","AFF","BFF","CFF","DFF","AFF","CFF"} ://32 Bit DataCellBELL
  WIDTH=='d64 ?  {"AFF","AFF","BFF","AFF","BFF","CFF","DFF","BFF","CFF","DFF","AFF","AFF","BFF","CFF","BFF","AFF","BFF","CFF","DFF","AFF","BFF","CFF","DFF","CFF","DFF","AFF","BFF","AFF","BFF","CFF","DFF","CFF","AFF","DFF","CFF","AFF","AFF","BFF","CFF","DFF","AFF","CFF","DFF","AFF","BFF","CFF","BFF","DFF","AFF","BFF","CFF","AFF","CFF","DFF","DFF","BFF","CFF","DFF","DFF","AFF","DFF","BFF","CFF","DFF"} ://64 Bit DataCellBELL
  WIDTH=='d128 ?  {"AFF","AFF","AFF","AFF","BFF","BFF","CFF","AFF","BFF","CFF","BFF","AFF","BFF","CFF","AFF","BFF","CFF","CFF","AFF","BFF","AFF","BFF","CFF","AFF","BFF","CFF","AFF","CFF","BFF","AFF","AFF","BFF","CFF","AFF","BFF","BFF","AFF","CFF","CFF","BFF","AFF","BFF","CFF","AFF","CFF","CFF","AFF","BFF","BFF","CFF","AFF","AFF","DFF","DFF","AFF","DFF","BFF","CFF","CFF","DFF","DFF","DFF","BFF","DFF","CFF","AFF","DFF","CFF","DFF","BFF","CFF","DFF","DFF","DFF","BFF","DFF","DFF","AFF","CFF","AFF","BFF","DFF","DFF","CFF","AFF","BFF","CFF","AFF","BFF","BFF","CFF","AFF","AFF","BFF","CFF","CFF","AFF","BFF","CFF","AFF","BFF","DFF","BFF","CFF","DFF","CFF","AFF","BFF","CFF","AFF","BFF","DFF","DFF","DFF","DFF","DFF","CFF","BFF","CFF","AFF","CFF","DFF","DFF","DFF","DFF","DFF","DFF","DFF"} ://128 Bit DataCellBELL
  WIDTH=='d256 ?  {"AFF","AFF","AFF","AFF","AFF","AFF","BFF","BFF","BFF","CFF","CFF","AFF","AFF","BFF","BFF","CFF","CFF","DFF","BFF","AFF","BFF","CFF","DFF","DFF","AFF","BFF","CFF","AFF","BFF","DFF","AFF","BFF","CFF","DFF","AFF","BFF","AFF","AFF","AFF","BFF","BFF","CFF","CFF","DFF","DFF","AFF","AFF","BFF","CFF","BFF","CFF","CFF","AFF","DFF","BFF","DFF","AFF","AFF","BFF","BFF","AFF","CFF","DFF","BFF","CFF","CFF","DFF","CFF","AFF","BFF","DFF","AFF","CFF","DFF","AFF","BFF","BFF","CFF","DFF","AFF","BFF","CFF","DFF","AFF","BFF","AFF","CFF","BFF","DFF","AFF","BFF","AFF","CFF","DFF","BFF","CFF","DFF","AFF","CFF","DFF","AFF","BFF","CFF","CFF","DFF","DFF","AFF","BFF","AFF","BFF","CFF","CFF","DFF","DFF","CFF","BFF","AFF","CFF","CFF","BFF","DFF","AFF","DFF","BFF","CFF","CFF","DFF","DFF","AFF","DFF","AFF","BFF","CFF","AFF","BFF","BFF","CFF","DFF","AFF","AFF","BFF","CFF","DFF","AFF","AFF","AFF","BFF","CFF","AFF","BFF","DFF","CFF","AFF","BFF","BFF","CFF","CFF","DFF","BFF","AFF","BFF","CFF","DFF","AFF","BFF","CFF","CFF","BFF","BFF","AFF","DFF","AFF","BFF","CFF","BFF","DFF","AFF","AFF","BFF","BFF","CFF","DFF","CFF","AFF","BFF","CFF","DFF","DFF","AFF","BFF","AFF","CFF","CFF","CFF","DFF","DFF","AFF","AFF","BFF","BFF","AFF","CFF","CFF","DFF","BFF","DFF","AFF","CFF","DFF","AFF","BFF","CFF","DFF","DFF","BFF","DFF","AFF","CFF","CFF","BFF","CFF","AFF","DFF","AFF","BFF","BFF","DFF","CFF","DFF","DFF","AFF","DFF","AFF","BFF","CFF","DFF","BFF","CFF","CFF","AFF","BFF","CFF","DFF","DFF","BFF","CFF","DFF","AFF","BFF","CFF","DFF","CFF","DFF","DFF","DFF","DFF"} ://256 Bit DataCellBELL
  {""} ;
  localparam ReqCellAddress= 
  WIDTH=='d8   ? "X101Y16" ://8 Bit ReqCellAddress
  WIDTH=='d16  ? "X101Y16" ://16 Bit ReqCellAddress
  WIDTH=='d32 ?"X65Y250" ://32 Bit ReqCellAddress
  WIDTH=='d64 ?"X65Y254" ://64 Bit ReqCellAddress
  WIDTH=='d128 ?"X73Y260" ://128 Bit ReqCellAddress
  WIDTH=='d256 ?"X65Y260" ://256 Bit ReqCellAddress
  "";                           
  localparam ReqCellBELL= 
  WIDTH=='d8   ? "" ://8 Bit ReqCellBELL
  WIDTH=='d16  ? "" ://16 Bit ReqCellBELL
  WIDTH=='d32 ?"BFF" ://32 Bit ReqCellBELL
  WIDTH=='d64 ?"BFF" ://64 Bit ReqCellBELL
  WIDTH=='d128 ?"BFF" ://128 Bit ReqCellBELL
  WIDTH=='d256 ?"BFF" ://256 Bit ReqCellBELL
  "";  
  localparam ReqXorAddress=  
  WIDTH=='d8 ?"X103Y16" ://8 Bit ReqXorAddress
  WIDTH=='d16 ?"X105Y16" ://16 Bit ReqXorAddress
  WIDTH=='d32 ?"X65Y250" ://32 Bit ReqXorAddress
  WIDTH=='d64 ?"X65Y254" ://64 Bit ReqXorAddress
  WIDTH=='d128 ?"X73Y260" ://128 Bit ReqXorAddress
  WIDTH=='d256 ?"X65Y260" ://256 Bit ReqXorAddress
  "";
  logic re,en;
  //logic gen_enable;
    // importante usare hu_set e non u_set altrimenti la cosa non è gerarchica
    (* HU_SET = "uset0",BEL = string'(ReqCellBELL), RLOC = string'(ReqCellAddress) *) LDCE #(
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
          (* HU_SET = "uset0", BEL = string'(DataCellBELL[i]), RLOC = string'(DataCellAddress[i]) *) LDCE #(
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
     logic nc;
    (* HU_SET = "uset0",LOCK_PINS = "I0:A5,I1:A4", RLOC = string'(ReqXorAddress), RPM_GRID = "GRID" *)  LUT6_2 #(.INIT(64'h9)) ReqXor(.O5(en), .O6(nc),.I0(Req_dw_o), .I1(Ack_dw_i));
    //(* HU_SET = "uset0",LOCK_PINS = "I0:A5,I1:A4", RLOC = string'(ReqXorAddress), RPM_GRID = "GRID" *)  LUT2 #(.INIT(4'h9)) ReqXor_1(.O(gen_enable), .I0(Req_dw_o), .I1(Ack_dw_i));
  	assign Req_dw_o = re;
	  assign Ack_up_o = re;
endmodule

module mousetrap_ldce_woMacros
#(
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
    LUT6_2 #(.INIT(64'h9)) ReqXor(.O5(en), .O6(gen_enable),.I0(Req_dw_o), .I1(Ack_dw_i));
  	assign Req_dw_o = re;
	  assign Ack_up_o = re;
endmodule





















