`timescale 1ns / 1ps

module TopModule
    #(
        parameter PipelineStages=10,
        parameter Delay=1,
        parameter WORD_WIDTH =16
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
    
    (* KEEP_HIERARCHY = "yes" *) mousetrap#(55,WORD_WIDTH) FirstStage(reset,req_up_top_i,Data_up_top_i,ack_up_top_o,req_middle_1,Data_middle_in_1,Ack_middle_1);
    (* KEEP_HIERARCHY = "yes" *) Neg#(WORD_WIDTH) Neg1(Data_middle_in_1,Data_Middle_out_1);                       
    (* KEEP_HIERARCHY = "yes" *) mousetrap#(55,WORD_WIDTH) SecondStage(reset,req_middle_1,Data_Middle_out_1,Ack_middle_1,req_dw_top_o,Data_dw_top_o,ack_dw_top_i);
endmodule

module Neg#(parameter WIDTH=16)(input [WIDTH-1:0] Data_i , output[WIDTH-1:0] Data_o);
    assign Data_o=~Data_i;
endmodule

module FirstSecondStage#(
      parameter xorDelay = 55,
      parameter WORD_WIDTH = 16 // larghezza del bundled data.
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
       
    logic req_middle_1,Ack_middle_1,req_middle_2,Ack_middle_2;
    logic[WORD_WIDTH-1:0] Data_middle_in_1,Data_Middle_out_1,Data_middle_in_2,Data_Middle_out_2;
    //(* KEEP_HIERARCHY = "yes" ,U_SET = "uset2",RLOC = "X-4Y-4"  *) Va instanziato come uset e non huset se il modulo sopra non viene instanziato, altrimenti non lo prende
           
    (* KEEP_HIERARCHY = "yes", HU_SET = "uset2",RLOC = "X0Y0" *) mousetrap_ldce#(55,WORD_WIDTH) FirstStage(reset,req_up_top_i,Data_up_top_i,ack_up_top_o,req_middle_1,Data_middle_in_1,Ack_middle_1);
                    
    (* KEEP_HIERARCHY = "yes", HU_SET = "uset2",RLOC = "X4Y4" *) mousetrap_ldce#(55,WORD_WIDTH) SecondStage(reset,req_middle_1,Data_middle_in_1,Ack_middle_1,req_middle_2,Data_Middle_out_2,Ack_middle_2);
           
    (* KEEP_HIERARCHY = "yes", HU_SET = "uset2",RLOC = "X8Y8", RPM_GRID = "GRID" *) mousetrap_ldce#(55,WORD_WIDTH) ThirdStage(reset,req_middle_2,Data_Middle_out_2,Ack_middle_2,req_dw_top_o,Data_dw_top_o,ack_dw_top_i);    
endmodule