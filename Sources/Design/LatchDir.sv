`timescale 1ns / 1ps

module latchDir
    (
        input Enable,
        input Reset,
        input D,
        output Q
    );
    wire Ebar;
    assign Ebar= ~Enable;
    
    LDCE #(
        .INIT(1'b0),            // Initial value of latch, 1'b0, 1'b1
        // Programmable Inversion Attributes: Specifies the use of the built-in programmable inversion
        .IS_CLR_INVERTED(1'b0), // Optional inversion for CLR
        .IS_G_INVERTED(1'b0)    // Optional inversion for G
    )
    LDCE_inst (
        .Q(Q),     // 1-bit output: Data
        .CLR(Reset), // 1-bit input: Asynchronous clear
        .D(D),     // 1-bit input: Data
        .G(Ebar),     // 1-bit input: Gate
        .GE(1'b1)    // 1-bit input: Gate enable
    );
    
    
    endmodule