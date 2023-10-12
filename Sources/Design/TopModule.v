`timescale 1ns / 1ps

module TopModule
    #(
        parameter PipelineStages=10,
        parameter WORD_WIDTH =32
    )
    (
        input wire req_in_top,
        input wire[WORD_WIDTH-1:0] Data_in__top,
        output wire ack_in_top,
        
        output wire req_out_top,
        output wire[WORD_WIDTH-1:0] Data_out__top,
        input wire ack_out_top
    );
    wire req[2*PipelineStages-1:0];
    wire[WORD_WIDTH-1:0] Data[PipelineStages-2:0];
    wire ack[PipelineStages-2:0];
    genvar i;
       
    generate
        //DelayElement delayElem_1(.req_in(req_in_top),.req_out(req[0]));
        (* DONT_TOUCH = "yes" *) DelayPhysElem delayElem_init(.req_in(req_in_top),.req_out(req[0]));
        (* DONT_TOUCH = "yes" *) PipelineStage#(.WORD_WIDTH(WORD_WIDTH)) pipeStage_init(.req_in(req[0]),.Data_in(Data_in__top),.ack_in(ack_in_top),.req_out(req[1]),.Data_out(Data[0]),.ack_out(ack[0]));
        for(i=0;i<PipelineStages-2;i=i+1) begin
            //DelayElement delayElem_2(.req_in(req[2*i+1]),.req_out(req[2*i++2]));
            (* DONT_TOUCH = "yes" *) DelayPhysElem delayElem_generic(.req_in(req[2*i+1]),.req_out(req[2*i+2]));
            (* DONT_TOUCH = "yes" *) PipelineStage#(.WORD_WIDTH(WORD_WIDTH)) pipeStage_generic(.req_in(req[2*i+2]),.Data_in(Data[i]),.ack_in(ack[i]),.req_out(req[2*i+3]),.Data_out(Data[i+1]),.ack_out(ack[i+1]));
        end
        (* DONT_TOUCH = "yes" *) DelayPhysElem delayElem_intermediate(.req_in(req[2*(PipelineStages)-3]),.req_out(req[2*(PipelineStages)-2]));
        (* DONT_TOUCH = "yes" *) PipelineStage#(.WORD_WIDTH(WORD_WIDTH)) pipeStage_final(.req_in(req[2*(PipelineStages)-2]),.Data_in(Data[(PipelineStages-2)]),.ack_in(ack[(PipelineStages-2)]),.req_out(req[2*(PipelineStages)-1]),.Data_out(Data_out__top),.ack_out(ack_out_top));
        //DelayElement delayElem_4(.req_in(req[(PipelineStages-2)]),.req_out(req_out_top));
        (* DONT_TOUCH = "yes" *) DelayPhysElem delayElem_final(.req_in(req[2*(PipelineStages)-1]),.req_out(req_out_top));
    endgenerate
   
    
endmodule
