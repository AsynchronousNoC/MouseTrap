`timescale 1ns / 1ps

module TopModule
    #(
        parameter PipelineStages=10,
        parameter Delay=1,
        parameter WORD_WIDTH =4
    )
    (
        input reset,
        
        input  req_in_top,
        input [WORD_WIDTH-1:0] Data_in_top,
        output  ack_in_top,
        
        output  req_out_top,
        output [WORD_WIDTH-1:0] Data_out_top,
        input  ack_out_top
    );
    logic req_middle_1,Ack_middle_1,req_middle_2,Ack_middle_2;
    logic[WORD_WIDTH-1:0] Data_middle_in_1,Data_Middle_out_1,Data_middle_in_2,Data_Middle_out_2;
    //(* KEEP_HIERARCHY = "yes" *)
     (* KEEP_HIERARCHY = "yes" *) mousetrap_ldce#(55,WORD_WIDTH) FirstStage(reset,req_in_top,Data_in_top,ack_in_top,req_middle_1,Data_middle_in_1,Ack_middle_1);
     
    (* KEEP_HIERARCHY = "yes" *) mousetrap_ldce#(55,WORD_WIDTH) SecondStage(reset,req_middle_1,Data_middle_in_1,Ack_middle_1,req_out_top,Data_out_top,ack_out_top);
endmodule

module Neg#(parameter WIDTH=16)(input [WIDTH-1:0] DataIn , output[WIDTH-1:0] DataOut);
    assign DataOut=~DataIn;
endmodule