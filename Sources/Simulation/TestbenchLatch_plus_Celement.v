`timescale 1ns / 1ps


module TestbenchLatch_plus_Celement(

    );
     reg Enable,Reset,Data;
     wire Q1,Q2;
     LatchVerilog Latch_1 (Enable, Reset, Data, Q1);
     latchDir Latch_2(Q1, ~Enable, Reset, Q2);
     
     initial begin
        
        Reset=1;
        Enable=0;
        Data=0;
        #100
        Reset=0;
        Enable=1;
        Data=1;
        #1
        Enable=0;
        Data=0;
     
     end
     
endmodule
