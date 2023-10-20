`timescale 1ns / 1ps

module DUT
    (
        input Enable,
        input Reset,
        input Data,
        output Q
    );

     wire Q1;
     LatchVerilog Latch_1 (Enable,Reset, Data, Q1);
     latchDir Latch_2(Enable,Reset,Q1, Q);
     
     endmodule