`timescale 1ns / 1ps

module Adder(Out, inA, inB);
    input [31:0] inA;
    input [31:0] inB;
    output reg [31:0] Out;
    
    always @(inA,inB)begin
        Out <= inA + inB;
    end
    
    initial begin
        Out = 32'd0;
    end
    
endmodule
