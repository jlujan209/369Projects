`timescale 1ns / 1ps


module Adder4(
    input [13:0] inA,
    input [13:0] inB,
    input [13:0] inC,
    input [13:0] inD,
    input [13:0] inE,
    input [13:0] inF,
    input [13:0] inG,
    input [13:0] inH,
    output reg [13:0] OutA,
    output reg [13:0] OutB,
    output reg [13:0] OutC,
    output reg [13:0] OutD
);
    
    always @(*)begin
        OutA <= inA + inB;
        OutB <= inC + inD;
        OutC <= inE + inF;
        OutD <= inG + inH;
    end
    
endmodule