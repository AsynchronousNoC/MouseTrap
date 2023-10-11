`timescale 1ns / 1ps

module DelayPhysElem(
    input req_in,
    output wire req_out
    );
    (* DONT_TOUCH = "yes" *) wire req_middle;
    
    assign req_middle = ~req_in;
    assign req_out = ~req_middle;
    
endmodule
