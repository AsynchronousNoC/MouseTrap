`timescale 1ns / 1ps

module LatchVerilog
    (
        input Enable,
        input extReset,
        input Data,
        output Q
    );
    //Combinatorial Way
    
    (* DONT_TOUCH = "yes" *)wire Set,Reset,Qbar,Qbar_old,Q_old;
    assign Reset = (Enable & ~Data) | extReset; 
    assign Set = (Enable & Data) & (~extReset);
    
    assign Q = ~(Reset | Qbar_old);
    assign Qbar = ~(Set |  Q_old); 
    assign Q_old=Q;
    assign Qbar_old=Qbar;
    
    //latch way
    //assign Q = Enable ? Data : Q;
    //latch way+reset
    //assign Q = extReset ? 1'b0 : Enable ? Data : Q;
    
    endmodule