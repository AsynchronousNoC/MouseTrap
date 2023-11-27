`timescale 1ns / 1ps

module TopModule
    #(
        parameter WORD_WIDTH =32
    )
    (
        input reset,
        
        
        //Pipeline
        input  req_up_top_i,
        input [WORD_WIDTH-1:0] Data_up_top_i,
        output  ack_up_top_o,
        
        output  req_dw_top_o,
        output [WORD_WIDTH-1:0] Data_dw_top_o,
        input  ack_dw_top_i
        
        /*
        //Celement
        input A,B,
        output C
        */
        /* 
        //Mutex
        input inA,
        input inB,
        output enA,
        output enB
        */
    );
    
    //Pipeline
    logic req_a,req_b,ack_a,ack_b;
    logic[WORD_WIDTH-1:0] Data_a,Data_b;
    //for word_width<32:"X0Y0""X4Y0""X6Y0", else "X0Y0","X8Y0","X12Y0"
    (* DONT_TOUCH = "yes", U_SET = "uset2", RLOC = "X0Y0" *) mousetrap_ldce #(55,WORD_WIDTH)  Interface_up(reset,req_up_top_i,Data_up_top_i,ack_up_top_o,req_a,Data_a,ack_a);
    (* DONT_TOUCH = "yes", U_SET = "uset2", RLOC = "X8Y0" *) mousetrap_ldce #(55,WORD_WIDTH) FirstStage(reset,req_a,Data_a,ack_a,req_b,Data_b,ack_b);
    (* DONT_TOUCH = "yes", U_SET = "uset2", RLOC = "X16Y0"*) mousetrap_ldce #(55,WORD_WIDTH)  Interface_dw(reset,req_b,Data_b,ack_b,req_dw_top_o,Data_dw_top_o,ack_dw_top_i);
    
    /*
    //Celement
    logic A_bis,B_bis,C_bis;
    (* DONT_TOUCH = "yes" *)CInterface myInterface(A,A_bis,B,B_bis,C_bis,C);
    (* DONT_TOUCH = "yes" *)C2_elem myC2elem(A_bis,B_bis,C_bis);
    */
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
  localparam[8*10-1:0] DataCellAddress[WORD_WIDTH-1:0]=  WORD_WIDTH =='d8 ? {"X0Y0","X0Y0","X2Y0","X2Y0","X0Y2","X0Y2","X2Y2","X2Y2"}:
                                                         WORD_WIDTH =='d16 ? {"X0Y0","X0Y0","X2Y0","X2Y0","X0Y2","X0Y2","X2Y2","X2Y2","X0Y4","X0Y4","X2Y4","X2Y4","X0Y6","X0Y6","X2Y6","X2Y6"}:
                                                         WORD_WIDTH =='d32 ? {"X0Y0","X0Y0","X2Y0","X2Y0","X0Y2","X0Y2","X2Y2","X2Y2","X0Y4","X0Y4","X2Y4","X2Y4","X0Y6","X0Y6","X2Y6","X2Y6","X4Y0","X4Y0","X6Y0","X6Y0","X4Y2","X4Y2","X6Y2","X6Y2","X4Y4","X4Y4","X6Y4","X6Y4","X4Y6","X4Y6","X6Y6","X6Y6"}:{""};
  (* HU_SET = "uset1", RLOC = "X0Y0"*) LUT1#(.INIT(2'b01)) ack_1(.O(ack),.I0(ack_dw_top_i));
  (* HU_SET = "uset1", RLOC = "X0Y0"*)LUT1#(.INIT(2'b01)) ack_2(.O(ack_up_top_o),.I0(ack));
  
  genvar i;
  generate
    for (i=0; i<WORD_WIDTH; i=i+1) begin
        (* HU_SET = "uset1", RLOC = string'(DataCellAddress[i]) *) LUT1#(.INIT(2'b01)) Data_1(.O(Data[i]),.I0(Data_up_top_i[i]));
        (* HU_SET = "uset1", RLOC = string'(DataCellAddress[i]) *)  LUT1#(.INIT(2'b01)) Data_2(.O(Data_dw_top_o[i]),.I0(Data[i]));
    end
  endgenerate;
  (* HU_SET = "uset1", RLOC = "X0Y0"*) LUT1#(.INIT(2'b01)) req_1(.O(req),.I0(req_up_top_i));
  (* HU_SET = "uset1", RLOC = "X0Y0", RMP_GRID="GRID"*)LUT1#(.INIT(2'b01)) req_2(.O(req_dw_top_o),.I0(req));
endmodule

