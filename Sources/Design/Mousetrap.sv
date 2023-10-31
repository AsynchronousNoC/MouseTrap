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
  
/*
generic_latch_enl_rstn #( .WIDTH(1)) 
lreq ( .rst(rst),
       .enl(en),
       .d(ReqIn),
       .q(re));

generic_latch_enl_rstn #( .WIDTH(WIDTH)) 
ldata ( .rst(rst),
        .enl(en),
        .d(DataIn),
        .q(de));
  */  
  
  
		//first latch
    //logic x1;
    always_latch begin
       if (~rst) begin
         re <= 0;
       end else begin
         if (~(ReqOut ^ AckOut)) begin    // mind this latch is enabled low
           re <= ReqIn;
         end
       end
     end

     //assign #(100) re = x1;    
    //second latch    
    //logic [WIDTH-1:0] x;
    always_latch begin
       if (~rst) begin
         DataOut <= 0;
       end else begin
         if (~(ReqOut ^ AckOut)) begin    // mind this latch is enabled low
           DataOut <= DataIn;
         end
       end
     end

     //assign #(100) de = x;

		assign ReqOut = re;
		assign AckIn = re;
/*
 `ifdef SINTESI_RTL
    assign #(xorDelay) en = (ReqOut ^ AckOut);
 `else
    assign en = (ReqOut ^ AckOut);
 `endif
 */
endmodule
