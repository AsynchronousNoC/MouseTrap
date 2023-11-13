`timescale 1ns / 1ps

module TopModule
    #(
        parameter PipelineStages=10,
        parameter Delay=1,
        parameter WORD_WIDTH =8
    )
    (
        input reset,
        
        input  req_up_top_i,
        input [WORD_WIDTH-1:0] Data_up_top_i,
        output  ack_up_top_o,
        
        output  req_dw_top_o,
        output [WORD_WIDTH-1:0] Data_dw_top_o,
        input  ack_dw_top_i
    );
    logic req_middle_1,Ack_middle_1;
    logic[WORD_WIDTH-1:0] Data_middle_in_1,Data_Middle_out_1;
    //(* KEEP_HIERARCHY = "yes" *)mousetrap_ldce#(55,WORD_WIDTH) FirstStage(reset,req_up_top_i,Data_up_top_i,ack_up_top_o,req_middle_1,Data_middle_in_1,Ack_middle_1);
                        
    //(* KEEP_HIERARCHY = "yes" *)mousetrap_ldce#(55,WORD_WIDTH) SecondStage(reset,req_middle_1,Data_middle_in_1,Ack_middle_1,req_dw_top_o,Data_dw_top_o,ack_dw_top_i);
    
    (* DONT_TOUCH = "yes" *) mousetrap_ldce#(55,WORD_WIDTH) FirstStage(reset,req_up_top_i,Data_up_top_i,ack_up_top_o,req_dw_top_o,Data_dw_top_o,ack_dw_top_i);
endmodule

module Neg#(parameter WIDTH=16)(input [WIDTH-1:0] Data_i , output[WIDTH-1:0] Data_o);
    assign Data_o=~Data_i;
endmodule