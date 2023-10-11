`timescale 1ns / 1ps

module Source
    #(
        parameter WORD_WIDTH =32,
        parameter  [WORD_WIDTH-1:0] VALUE = 15
    )
    (
        output reg req_out,
        output reg[WORD_WIDTH-1:0] Data_out,
        input wire ack_out
    );
    
    /*initial begin
        req_out=0;
        Data_out=VALUE;
    end*/
    always @(ack_out) begin
        req_out = ~ack_out;
        Data_out = VALUE;
    end
endmodule
