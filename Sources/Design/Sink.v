`timescale 1ns / 1ps


module Sink
    #(
        parameter WORD_WIDTH= 32
    )
    (
        input wire req_in,
        input wire[WORD_WIDTH-1:0] Data_in,
        output reg ack_in
    );
    initial ack_in=0;
    always @(req_in) begin
        ack_in=req_in;
    end
        
endmodule
