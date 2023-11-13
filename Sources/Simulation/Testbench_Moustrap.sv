`timescale 0.1ns / 1ps


module Testbench_Moustrap(

    );
    
     //DUT parameters
     parameter WORD_WIDTH=16;
     parameter pipelineStages=10; //sembra un po' inutile nel post implementation
     //TimingParameters
     parameter outputDelay=1;
     parameter inputDelay=1;
     parameter SimDelay=1;
     
     reg reset;
     
     reg req_in_top;
     reg[WORD_WIDTH-1:0] Data_in__top;
     wire ack_in_top;
        
     wire req_out_top;
     wire[WORD_WIDTH-1:0] Data_out__top;
     reg ack_out_top;
   
     logic clk;
     initial begin
        clk<=0;
     end
     assign #50 clk= ~clk;
     TopModule#(pipelineStages,SimDelay,WORD_WIDTH) myModule(reset,req_in_top,Data_in__top,ack_in_top,req_out_top,Data_out__top,ack_out_top);
     //PipelineStage#(WORD_WIDTH) pipeStage_init(reset,req_in_top,Data_in__top,ack_in_top,req_out_top,Data_out__top,ack_out_top);
     task OutputCheck();  
        begin
            wait(ack_out_top!=req_out_top);
            #10;
            ack_out_top<=req_out_top;
            #1;
        end
     endtask
     
     task InputSend(input[WORD_WIDTH-1:0] Value);  
        begin
            wait(ack_in_top==req_in_top);
            #100
            Data_in__top<=Value;
            req_in_top <=~req_in_top;
         end
     endtask
     
     initial begin
        reset<=1;
        #200
        reset<=0;
        req_in_top<=0;
        #1000
        InputSend(32'd20);
        #10
        wait(ack_in_top==req_in_top);
        #10
        req_in_top <=~req_in_top;
        /*
        InputSend(32'd15);
        #1
        InputSend(32'd128);
        #1
        InputSend(32'd60);
        #1
        InputSend(32'd45);
        */
     end
     
     integer i;
     initial begin
        ack_out_top<=0;
        for (i=0;i<8;i=i+1)
            //ack_out_top<=0;
            OutputCheck();
     end 
     
endmodule
