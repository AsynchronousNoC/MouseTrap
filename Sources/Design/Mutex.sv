`timescale 1ns / 1ps

module Mutex
    (
        input inA,
        input inB,
        input Reset,
        output enA,
        output enB
    );
    (* DONT_TOUCH ="yes" *) wire nandoutA, nandoutB;
    wire nandoutA_old,  nandoutB_old;
      
    (* HU_SET = "MutexSet", RLOC = "X0Y0" *) LUT2 #(.INIT(4'h7)) NANDA(nandoutA,inA,nandoutB_old);
    (* HU_SET = "MutexSet", RLOC = "X0Y0" *) LUT2 #(.INIT(4'h7)) NANDB(nandoutB,inB,nandoutA_old);
    assign nandoutA_old = nandoutA;
    assign nandoutB_old = nandoutB;
    
    
    (* HU_SET = "MutexSet", RLOC = "X1Y0" *) LUT2 #(.INIT(4'h2)) ANDA(enA,nandoutA,nandoutB);
    (* HU_SET = "MutexSet", RLOC = "X1Y0" *) LUT2 #(.INIT(4'h4)) ANDB(enB,nandoutA,nandoutB);
    
endmodule
