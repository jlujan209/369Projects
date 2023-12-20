`timescale 1ns / 1ps

module Adder8(
    input [13:0] inA,
    input [13:0] inB,
    input [13:0] inC,
    input [13:0] inD,
    input [13:0] inE,
    input [13:0] inF,
    input [13:0] inG,
    input [13:0] inH,
    input [13:0] inI,
    input [13:0] inJ,
    input [13:0] inK,
    input [13:0] inL,
    input [13:0] inM,
    input [13:0] inN,
    input [13:0] inO,
    input [13:0] inP,
    output reg [13:0] OutA,
    output reg [13:0] OutB,
    output reg [13:0] OutC,
    output reg [13:0] OutD,
    output reg [13:0] OutE,
    output reg [13:0] OutF,
    output reg [13:0] OutG,
    output reg [13:0] OutH
);
    
    always @(*)begin
        OutA <= inA + inB;
        OutB <= inC + inD;
        OutC <= inE + inF;
        OutD <= inG + inH;
        OutE <= inI + inJ;
        OutF <= inK + inL;
        OutG <= inM + inN;
        OutH <= inO + inP;
    end
    
endmodule