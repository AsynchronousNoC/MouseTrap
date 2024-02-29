`timescale 1ns / 1ps

module IPM_tb();
	     
     //DUT parameters
     parameter WORD_WIDTH=32;
     parameter OUTPORTS = 4;
     logic reset,clk,gen_enable;
     initial begin
     		gen_enable=1;
        clk=0;
     end
     assign #5 clk= ~clk;
     
     //pipeline
     logic req_in_top;
     logic[WORD_WIDTH-1:0] Data_in_top;
     logic ack_in_top;
        
     logic [OUTPORTS-1:0] req_out_top;
     logic [OUTPORTS-1:0][WORD_WIDTH-1:0] Data_out_top;
     logic [OUTPORTS-1:0] ack_out_top;
     logic [OUTPORTS-1:0] Tailpassed_dw_i;
	   logic [OUTPORTS-1:0] PacketEnable_dw_o;
	   
	   
	   //for output check and ack sends
	   logic [OUTPORTS-1:0] req;
     logic [OUTPORTS-1:0][WORD_WIDTH-1:0] Data_out;
     
     TopModule_Switch Switch_tb(
     .reset(reset),
     .gen_enable(gen_enable),
     .req_up_i(req_in_top),
     .Data_up_i(Data_in_top),
     .ack_up_o(ack_in_top),
     .req_dw_o(req_out_top),
     .Data_dw0_o(Data_out_top[0]),
     .Data_dw1_o(Data_out_top[1]),
     .Data_dw2_o(Data_out_top[2]),
     .Data_dw3_o(Data_out_top[3]),
     .ack_dw_i(ack_out_top),
     .Tailpassed_dw_i(Tailpassed_dw_i),
     .PacketEnable_dw_o(PacketEnable_dw_o)
     );
     
     task OutputCheck(input integer j);  
        begin
            wait(ack_out_top[j]!=req[j]);
            ack_out_top[j]<=req[j];
            #1;
        end
     endtask
     
     task InputSend(input[WORD_WIDTH-1:0] Value);  
        begin
            wait(ack_in_top==req_in_top);
            Data_in_top<=Value;
            req_in_top <=~req_in_top;
         end
     endtask
     logic [3:0] x_loc,y_loc;
     logic [2:0] loc;
     initial begin
        x_loc<=0;y_loc<=0;loc <=0;
        req_in_top<=0;
        reset=1;
        Data_in_top=0;
        #200
        reset<=0;
        #100
        InputSend({{(WORD_WIDTH-13){1'd0}}, x_loc,y_loc,loc,2'b01});
        #1
        InputSend({{(WORD_WIDTH-2){1'd0}}, 2'b00});
        #1
        InputSend({{(WORD_WIDTH-2){1'd1}}, 2'b00});
        #1
        InputSend({{(WORD_WIDTH-2){1'd0}}, 2'b10});
        #1
        InputSend({{(WORD_WIDTH-13){1'd0}}, x_loc,y_loc,loc,2'b01});
        #1
        InputSend({{(WORD_WIDTH-2){1'd0}}, 2'b00});
        #1
        InputSend({{(WORD_WIDTH-2){1'd1}}, 2'b00});
        #1
        InputSend({{(WORD_WIDTH-2){1'd0}}, 2'b10});
     end
     
     
     genvar j;
     generate
     	for(j=0;j<OUTPORTS;j=j+1) begin
     	  initial begin
     	    ack_out_top[j]=0;
     	    Tailpassed_dw_i[j]= 1;
     	    #200;
     	    Tailpassed_dw_i[j]=0;
     	   end
     	   always_comb  begin
     	    if(reset)
     	      Tailpassed_dw_i[j] =1;
     	    else if( Data_out[j][1]==1)
     	      Tailpassed_dw_i[j] = 1;
     	    else
     	      Tailpassed_dw_i[j] = 0;
     	   end
				 always_latch begin
				    if(reset) begin
				      req[j]<=0;
				      ack_out_top[j]<=0;
				      Data_out[j]<=0;
				    end else if(PacketEnable_dw_o[j])begin
				      req[j]<=req_out_top[j];
				      ack_out_top[j]<=req_out_top[j];
				      Data_out[j]<= #1 Data_out_top[j];
				    end
				 end 
			end
		endgenerate
    
endmodule
