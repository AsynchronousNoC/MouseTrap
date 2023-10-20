`timescale 1ns/1ps

module C_element(
		input A,B,extReset,
		output C1,C2,C3
	);
	//1Poss
	
	(* DONT_TOUCH = "yes" *) wire Stadio_1,Stadio_2,Stadio_3,C1_old;
	assign C1 =Stadio_1|Stadio_2|Stadio_3;
	assign Stadio_1 = A&B;
	assign Stadio_2 = A&C1_old;
	assign Stadio_3 = C1_old&B;
	assign C1_old =C1;
	
	
	
	
	//2Poss
	
	(* DONT_TOUCH = "yes" *) wire C2_old;
	assign C2= (A&B)|(A&C2_old)|(C2_old&B);
	assign C2_old=C2;
	
	
	
	//3Poss
	wire Clear,Enable;
	assign Enable=A&B;
	assign Clear= ~(extReset & (A|B));
	LDCE #(
        .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
        // Programmable Inversion Attributes: Specifies the use of the built-in programmable inversion
        .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
        .IS_G_INVERTED(1'b0)    // Optional inversion for G
    )
    LDCE_inst (
        .Q(C3),     // 1-bit output: Data
        .CLR(Clear), // 1-bit input: Asynchronous clear
        .D(1'b1),     // 1-bit input: Data
        .G(Enable),     // 1-bit input: Gate
        .GE(1'b1)    // 1-bit input: Gate enable
    );
    
	
	endmodule
