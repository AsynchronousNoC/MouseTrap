`timescale 1ns/1ps

module C_element(
		input A,B,
		output C
	);
	//1Poss
	/*
	wire Stadio_1,Stadio_2,Stadio_3;
	assign C =Stadio_1|Stadio_2|Stadio_3;
	assign Stadio_1 = A&B;
	assign Stadio_2 = A&C;
	assign Stadio_3 = C&B;
	*/
	
	
	//2Poss
	assign C= (A&B)|(A&C)|(C&B);
	
	
	//3Poss
	/*
	LDCE #(
        .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
        // Programmable Inversion Attributes: Specifies the use of the built-in programmable inversion
        .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
        .IS_G_INVERTED(1'b0)    // Optional inversion for G
    )
    LDCE_inst (
        .Q(C),     // 1-bit output: Data
        .CLR(1'b0), // 1-bit input: Asynchronous clear
        .D(A&B),     // 1-bit input: Data
        .G(~(A^B)),     // 1-bit input: Gate
        .GE(1'b1)    // 1-bit input: Gate enable
    );
    */
	
	endmodule
