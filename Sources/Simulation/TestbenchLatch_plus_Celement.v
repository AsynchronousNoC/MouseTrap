`timescale 1ns / 1ps


module TestbenchLatch_plus_Celement(

    );
     parameter i=1;
     
     if( i==1)begin
        reg Enable,Reset,Data;
        wire Q;
        //LatchVerilog Latch_1 (Enable,Reset, Data, Q1);
        //latchDir Latch_2(Q1, ~Enable,Reset, Q2);
        DUT myDUT(Enable,Reset,Data,Q);
      
        initial begin
            Reset=1;
            Enable=0;
            Data=0;
            #100
            Reset<=0;
            #10
            Enable<=1;
            Data<=1;
            #20
            Enable<=0;
            #1
            Data<=0;
        end
     end
     
     else if( i==2) begin
        reg A,B,extReset;
        wire C1,C2,C3;
        C_element myCelements(A,B,extReset,C1,C2,C3);
        initial begin
            extReset=0;
            A=1;
            B=1;
            #50
            extReset=1;
            #50;
            A<=0;
            B<=0;
        end
     end
endmodule
