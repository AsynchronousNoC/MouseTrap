`timescale 1ns / 1ps


module DUT(

    );
     reg req_in_top;
     reg[31:0] Data_in__top;
     wire ack_in_top;
        
     wire req_out_top;
     wire[31:0] Data_out__top;
     reg ack_out_top;
     TopModule myModule(req_in_top,Data_in__top,ack_in_top,req_out_top,Data_out__top,ack_out_top);
     
     initial begin
        req_in_top<=0;
        Data_in__top=32'd25;
        #20
        req_in_top<=1;
        #1
        wait(ack_in_top==req_in_top);
        #2
        req_in_top<=~req_in_top;
        Data_in__top=32'd32;
        #2
        wait(ack_in_top==req_in_top);
        #2
        req_in_top<=~req_in_top;
        Data_in__top=32'd29;
     end
     
     initial begin
     ack_out_top<=0;
     #20
     wait(ack_out_top!=req_out_top);
     #1
     ack_out_top<=req_out_top;
     #1
     wait(ack_out_top!=req_out_top);
     #1
     ack_out_top<=req_out_top;
     wait(ack_out_top!=req_out_top);
     #1
     ack_out_top<=req_out_top;
     wait(ack_out_top!=req_out_top);
     ack_out_top<=req_out_top;
     end 
endmodule
