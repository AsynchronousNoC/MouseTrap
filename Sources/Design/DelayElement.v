`timescale 1ns / 1ps


module DelayElement(
    input req_in,
    output reg req_out
    );
    initial begin
        req_out=0;
    end
    always @(req_in)
       req_out <=  #5  req_in;
endmodule
