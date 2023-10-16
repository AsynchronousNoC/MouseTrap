`timescale 1ns / 1ps

module DelayPhysElem
    #(
        parameter Sim_delay = 1
    )
    (
    input req_in,
    output wire req_out
    );
    (* DONT_TOUCH = "yes" *) wire req_middle;
    
    assign req_middle =  ~req_in;
    assign #Sim_delay req_out =  ~req_middle;
    
endmodule
