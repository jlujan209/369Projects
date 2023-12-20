`timescale 1ns / 1ps

module Shifter(Out, in);
    input [31:0] in;
    output reg [31:0] Out;
    
    always @(in)begin
        Out <= in << 2;
    end
endmodule
