`timescale 1ns / 1ps

module LatchVerilog
    (
        input Enable,
        input Reset,
        input Data,
        output Q
    );
    //Combinatorial Way
    /*
    wire Set;
    wire Reset;
    wire Qbar;
    assign Reset = Enable & ~Data; 
    assign Set = Enable & Data;
    assign Q = ~(Reset ^ Qbar);
    assign Qbar = ~(Set ^ Q); 
    */
    //latch way
    assign Q = Enable ? Data : Q;
    //latch way+reset
    //assign Q = Reset ? 1'b0 : Enable ? Data : Q;
    
    endmodule