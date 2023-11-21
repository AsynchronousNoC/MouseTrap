`timescale 1ns / 1ps

module TopModule
    #(
        parameter WORD_WIDTH =8
    )
    (
        input reset,
        
        /*
        //Pipeline
        input  req_up_top_i,
        input [WORD_WIDTH-1:0] Data_up_top_i,
        output  ack_up_top_o,
        
        output  req_dw_top_o,
        output [WORD_WIDTH-1:0] Data_dw_top_o,
        input  ack_dw_top_i
        */
        
        //Celement
        input A,B,
        output C
        
        /* 
        //Mutex
        input inA,
        input inB,
        output enA,
        output enB
        */
    );
    /*
    //Pipeline
    logic req_a,req_b,ack_a,ack_b;
    logic[WORD_WIDTH-1:0] Data_a,Data_b;
    
    (* DONT_TOUCH = "yes" *)PInterface#(WORD_WIDTH) Interface_up(req_up_top_i,Data_up_top_i,ack_up_top_o,req_a,Data_a,ack_a);
    (* DONT_TOUCH = "yes" *) mousetrap_ldce#(55,WORD_WIDTH) FirstStage(reset,req_a,Data_a,ack_a,req_b,Data_b,ack_b);
    (* DONT_TOUCH = "yes" *)PInterface#(WORD_WIDTH) Interface_dw(req_b,Data_b,ack_b,req_dw_top_o,Data_dw_top_o,ack_dw_top_i);
    */
    
    //Celement
    logic A_bis,B_bis,C_bis;
    (* DONT_TOUCH = "yes" *)CInterface myInterface(A,A_bis,B,B_bis,C_bis,C);
    (* DONT_TOUCH = "yes" *)C2_elem myC2elem(A_bis,B_bis,C_bis);
    
    /*
    //Mutex
    logic inA_bis,inB_bis,enA_bis,enB_bis;
    (* DONT_TOUCH = "yes" *)MInterface myInterface(inA,inA_bis,inB,inB_bis,enA_bis,enA,enB_bis,enB);
    (* DONT_TOUCH = "yes" *)Mutex myMutex(inA_bis,inB_bis,reset,enA_bis,enB_bis);
    */
endmodule

module MInterface (input inA_in,output inA_out,input inB_in,output inB_out,input enA_in,output enA_out,input enB_in,output enB_out);
    (* DONT_TOUCH = "yes" *) logic inA,inB,enA,enB;
    assign inA = ~inA_in;
    assign inA_out = ~inA;
    
    assign inB = ~inB_in;
    assign inB_out = ~inB;
    
    assign enA = ~enA_in;
    assign enA_out = ~enA;
    
    assign enB = ~enB_in;
    assign enB_out = ~enB;
endmodule

module CInterface(input A_in,output A_out,input B_in, output B_out, input C_in,output C_out);
    (* DONT_TOUCH = "yes" *)logic A_i,B_i,C_i;
    
    assign A_i = ~A_in;
    assign A_out = ~A_i;
    
    assign B_i = ~B_in;
    assign B_out = ~B_i;
    
    assign C_i = ~C_in;
    assign C_out = ~C_i;
endmodule

module PInterface#(
  parameter WORD_WIDTH =8
)
(
  input  req_up_top_i,
  input [WORD_WIDTH-1:0] Data_up_top_i,
  output  ack_up_top_o,
        
  output  req_dw_top_o,
  output [WORD_WIDTH-1:0] Data_dw_top_o,
  input  ack_dw_top_i
);
  (* DONT_TOUCH = "yes" *)logic req,ack;
  (* DONT_TOUCH = "yes" *)logic[WORD_WIDTH-1:0] Data;
  
  assign ack = ~ack_dw_top_i;
  assign ack_up_top_o = ~ack;
  
  assign Data = ~Data_up_top_i;
  assign Data_dw_top_o = ~Data;
  
  assign req = ~req_up_top_i;
  assign req_dw_top_o = ~req;
endmodule