`timescale 1ns / 1ps


module DUT(

    );
     //DUT parameters
     parameter WORD_WIDTH=32;
     parameter pipelineStages=10; //sembra un po' inutile nel post implementation
     //TimingParameters
     parameter outputDelay=1;
     parameter inputDelay=1;
     
     
     reg req_in_top;
     reg[31:0] Data_in__top;
     wire ack_in_top;
        
     wire req_out_top;
     wire[31:0] Data_out__top;
     reg ack_out_top;
     
     
     TopModule#(WORD_WIDTH,pipelineStages) myModule(req_in_top,Data_in__top,ack_in_top,req_out_top,Data_out__top,ack_out_top);
     
     task OutputCheck();  
        begin
            wait(ack_out_top!=req_out_top);
            #inputDelay;
            ack_out_top<=req_out_top;
            #inputDelay;
        end
     endtask
     
     task InputSend(input[WORD_WIDTH-1:0] Value);  
        begin
            wait(ack_in_top==req_in_top);
            Data_in__top=Value;
            #2;
            req_in_top<=~req_in_top;
            #2;
         end
     endtask
     
     initial begin
        req_in_top<=0;
        Data_in__top=32'd25;
        #20
        req_in_top<=1;
       #1
       InputSend(32'd20);
       InputSend(32'd15);
       InputSend(32'd128);
       InputSend(32'd60);
       InputSend(32'd45);
     end
     integer i;
     initial begin
        ack_out_top<=0;
        for (i=0;i<8;i=i+1)
            OutputCheck();
     end 
endmodule