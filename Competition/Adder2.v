`timescale 1ns / 1ps


module Adder2(
    input [13:0] inA,
    input [13:0] inB,
    input [13:0] inC,
    input [13:0] inD,
    output reg [13:0] OutA,
    output reg [13:0] OutB
);
    
    always @(*)begin
        OutA <= inA + inB;
        OutB <= inC + inD;
    end
    
endmodule