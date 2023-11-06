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
         if (en) begin    // mind this latch is enabled low
           re <= ReqIn;
         end
       end
     end

    //second latch    
    always_latch begin
       if (~rst) begin
         DataOut <= 0;
       end else begin
         if (en) begin    // mind this latch is enabled low
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
  
  input ReqIn,
  input [WIDTH-1:0] DataIn,
  output AckIn,
  
  output ReqOut,
  output logic[WIDTH-1:0] DataOut,
  input AckOut
) ;
  localparam[8*6-1:0] DataCellAddress[7:0]= {"X17Y16","X17Y16","X17Y16","X17Y16","X17Y14","X19Y16","X19Y16","X19Y16"};
  localparam ReqCellAddress="X19Y16";
  localparam ReqXorAddress="X17Y16";
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
        .D(ReqIn),     // 1-bit input: Data
        .G(en),     // 1-bit input: Gate
        .GE(1'b1)    // 1-bit input: Gate enable
    );
    //string'({"X",DataCellAddress[0],"Y",DataCellAddress[1]})
    genvar i;
    generate
        for (i=0; i<WIDTH; i=i+1) begin
          (* HU_SET = "uset0", RLOC = string'(DataCellAddress[i]) *) LDCE #(
            .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
            .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
            .IS_G_INVERTED(1'b0)    // Optional inversion for G
          )
          Data_latch (
            .Q(DataOut[i]),     // 1-bit output: Data
            .CLR(rst), // 1-bit input: Asynchronous clear
            .D(DataIn[i]),     // 1-bit input: Data
            .G(en),     // 1-bit input: Gate
            .GE(1'b1)    // 1-bit input: Gate enable
          );
        end
     endgenerate;
     
     //xor(en =~ (ReqOut ^ AckOut);
    (* HU_SET = "uset0", RLOC = string'(ReqXorAddress), RPM_GRID = "GRID" *)  LUT2 #(.INIT(4'h9)) ReqXor(.O(en), .I0(ReqOut), .I1(AckOut));
  	assign ReqOut = re;
	  assign AckIn = re;
endmodule

module mousetrap_ldce_woMacros
#(
  parameter xorDelay = 55,
  parameter WIDTH = 16 // larghezza del bundled data.
)
(
  input rst,
  
  input   ReqIn,
  input   [WIDTH-1:0] DataIn,
  output  AckIn,
  
  output  ReqOut,
  output  logic[WIDTH-1:0] DataOut,
  input   AckOut
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
        .D(ReqIn),     // 1-bit input: Data
        .G(en),     // 1-bit input: Gate
        .GE(1'b1)    // 1-bit input: Gate enable
    );
    //string'({"X",DataCellAddress[0],"Y",DataCellAddress[1]})
    genvar i;
    generate
        for (i=0; i<WIDTH; i=i+1) begin
           LDCE #(
            .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
            .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
            .IS_G_INVERTED(1'b0)    // Optional inversion for G
          )
          Data_latch (
            .Q(DataOut[i]),     // 1-bit output: Data
            .CLR(rst), // 1-bit input: Asynchronous clear
            .D(DataIn[i]),     // 1-bit input: Data
            .G(en),     // 1-bit input: Gate
            .GE(1'b1)    // 1-bit input: Gate enable
          );
        end
     endgenerate;
     
     //xor(en =~ (ReqOut ^ AckOut);
     LUT2 #(.INIT(4'h9)) ReqXor(.O(en), .I0(ReqOut), .I1(AckOut));
  	assign ReqOut = re;
	  assign AckIn = re;
endmodule