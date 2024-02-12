`timescale 1ns / 1ps

module TopModule
    #(
parameter WORD_WIDTH=32
    )
    (
        input reset,
        
        
        //Pipeline
        input  req_up_top_i,
        input [WORD_WIDTH-1:0] Data_up_top_i,
        (* DATAOVERRUN = "yes"*) output  ack_up_top_o,
        
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
    localparam N = 2;
    //localparam N = 10;
    
    //Pipeline
    (* DONT_TOUCH = "yes"*)  logic ack_1;
    (* DONT_TOUCH = "yes"*) logic ack_delay_1,ack_delay_2,ack_delay_3;
    (* DONT_TOUCH = "yes", U_SET = "Prova", RLOC ="X0Y0"*) LUT1#(.INIT(2'b10)) req_delay_1(.O(ack_delay_2),.I0(ack_delay_3));
    (* DONT_TOUCH = "yes", U_SET = "Prova", RLOC ="X0Y1"*) LUT1#(.INIT(2'b10)) req_delay_2(.O(ack_delay_1),.I0(ack_delay_2));   //FUNZIA!
    (* DONT_TOUCH = "yes", U_SET = "Prova", RLOC ="X0Y2"*) LUT1#(.INIT(2'b10)) req_delay_3(.O(ack_up_top_o),.I0(ack_delay_1));   //FUNZIA!
     
     
     
    logic[N-1:0] req,ack;
    logic[WORD_WIDTH-1:0] Data[N-1:0];
    (* DONT_TOUCH = "yes"*) mousetrap_ldce #(55,WORD_WIDTH)  Stadio_1(reset,req_up_top_i,Data_up_top_i,ack_delay_3,req[0],Data[0],ack[0]);
    genvar i;
    generate
      for(i=0;i<N-1;i++) begin
      (* DONT_TOUCH = "yes"*) mousetrap_ldce #(55,WORD_WIDTH)  Stadio_2(reset,req[i],Data[i],ack[i],req[i+1],Data[i+1],ack[i+1]);
      end
    endgenerate
    (* DONT_TOUCH = "yes"*) mousetrap_ldce #(55,WORD_WIDTH)  Stadio_3(reset,req[N-1],Data[N-1],ack[N-1],req_dw_top_o,Data_dw_top_o,ack_dw_top_i);
    
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
parameter WORD_WIDTH=32
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









































