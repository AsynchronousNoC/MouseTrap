`timescale 1ns / 1ps

module TopModule(
        input wire req_in_top,
        input wire[31:0] Data_in__top,
        output wire ack_in_top,
        
        output wire req_out_top,
        output wire[31:0] Data_out__top,
        input wire ack_out_top
    );
    wire req[5:0];
    wire[31:0] Data[1:0];
    wire ack[1:0];
    
    //DelayElement delayElem_1(.req_in(req_in_top),.req_out(req[0]));
    (* DONT_TOUCH = "yes" *) DelayPhysElem delayElem_1(.req_in(req_in_top),.req_out(req[0]));
    (* DONT_TOUCH = "yes" *) PipelineStage pipeStage_1(.req_in(req[0]),.Data_in(Data_in__top),.ack_in(ack_in_top),.req_out(req[1]),.Data_out(Data[0]),.ack_out(ack[0]));
    //DelayElement delayElem_2(.req_in(req[1]),.req_out(req[2]));
    (* DONT_TOUCH = "yes" *) DelayPhysElem delayElem_2(.req_in(req[1]),.req_out(req[2]));
    (* DONT_TOUCH = "yes" *) PipelineStage pipeStage_2(.req_in(req[2]),.Data_in(Data[0]),.ack_in(ack[0]),.req_out(req[3]),.Data_out(Data[1]),.ack_out(ack[1]));
    //DelayElement delayElem_3(.req_in(req[3]),.req_out(req[4]));
    (* DONT_TOUCH = "yes" *) DelayPhysElem delayElem_3(.req_in(req[3]),.req_out(req[4]));
    (* DONT_TOUCH = "yes" *) PipelineStage pipeStage_3(.req_in(req[4]),.Data_in(Data[1]),.ack_in(ack[1]),.req_out(req[5]),.Data_out(Data_out__top),.ack_out(ack_out_top));
    //DelayElement delayElem_4(.req_in(req[5]),.req_out(req_out_top));
    (* DONT_TOUCH = "yes" *) DelayPhysElem delayElem_4(.req_in(req[5]),.req_out(req_out_top));
    
endmodule
