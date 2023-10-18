`timescale 1ns / 1ps

module PipelineStage
    #(
        parameter WORD_WIDTH=32
    )
    (
        input reset,
        
        input wire req_in,
        input wire[WORD_WIDTH-1:0] Data_in,
        output reg ack_in=0,
        
        output reg req_out=0,
        output reg[WORD_WIDTH-1:0] Data_out=32'd0,
        input wire ack_out
    );
    parameter setup_time = 4;
    parameter propagationTime=1;
    wire control;
    wire[WORD_WIDTH-1:0] next_Data;
    wire next_req;
    wire next_ack;
    
    assign #2 control = ~(ack_out ^ req_out);
    assign #setup_time next_Data = Data_out;
    assign #setup_time next_req = req_out;
    
    always @(control,req_in,Data_in) begin
        if (reset == 1) begin 
            ack_in<=0;
            req_out<=0;
            Data_out<=32'd0;
        end
        else if (reset == 0) begin
            if (control ==0 ) begin
                Data_out<= #propagationTime next_Data;
                req_out<= #propagationTime next_req;
                ack_in <= #propagationTime next_req;
             end
            else if (control==1) begin
                Data_out<= #propagationTime Data_in;
                req_out<= #propagationTime req_in;
                ack_in <= #propagationTime req_in;
            end
        end
    end
endmodule 
