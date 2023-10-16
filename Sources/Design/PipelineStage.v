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
    wire control;
    
    /*initial begin
        ack_in<=0;
        req_out<=0;
        Data_out<=32'd0;
    end*/
    
    assign control = ~(ack_out ^ req_out);
    
    always @(control,req_in) begin
        if (reset == 1) begin 
            ack_in<=0;
            req_out<=0;
            Data_out<=32'd0;
        end
        else if (control==1) begin
            Data_out<=Data_in;
            req_out<=req_in;
            ack_in <= req_in;
        end
    end
endmodule 
