`timescale 1ns / 1ps

module SubUnit(
    input [8:0] infA,
    input [8:0] infB,
    input [8:0] infC,
    input [8:0] infD,
    input [8:0] infE,
    input [8:0] infF,
    input [8:0] infG,
    input [8:0] infH,
    input [8:0] infI,
    input [8:0] infJ,
    input [8:0] infK,
    input [8:0] infL,
    input [8:0] infM,
    input [8:0] infN,
    input [8:0] infO,
    input [8:0] infP,
    input [8:0] inwA,
    input [8:0] inwB,
    input [8:0] inwC,
    input [8:0] inwD,
    input [8:0] inwE,
    input [8:0] inwF,
    input [8:0] inwG,
    input [8:0] inwH,
    input [8:0] inwI,
    input [8:0] inwJ,
    input [8:0] inwK,
    input [8:0] inwL,
    input [8:0] inwM,
    input [8:0] inwN,
    input [8:0] inwO,
    input [8:0] inwP,
    output [13:0] outA,
    output [13:0] outB,
    output [13:0] outC,
    output [13:0] outD,
    output [13:0] outE,
    output [13:0] outF,
    output [13:0] outG,
    output [13:0] outH,
    output [13:0] outI,
    output [13:0] outJ,
    output [13:0] outK,
    output [13:0] outL,
    output [13:0] outM,
    output [13:0] outN,
    output [13:0] outO,
    output [13:0] outP
);
    
    Subtractor subA(
        .inA(infA),
        .inB(inwA),
        .out(outA)
    );
    Subtractor subB(
        .inA(infB),
        .inB(inwB),
        .out(outB)
    );
    Subtractor subC(
        .inA(infC),
        .inB(inwC),
        .out(outC)
    );
    Subtractor subD(
        .inA(infD),
        .inB(inwD),
        .out(outD)
    );
    Subtractor subE(
        .inA(infE),
        .inB(inwE),
        .out(outE)
    );
    Subtractor subF(
        .inA(infF),
        .inB(inwF),
        .out(outF)
    );
    Subtractor subG(
        .inA(infG),
        .inB(inwG),
        .out(outG)
    );
    Subtractor subH(
        .inA(infH),
        .inB(inwH),
        .out(outH)
    );
    Subtractor subI(
        .inA(infI),
        .inB(inwI),
        .out(outI)
    );
    Subtractor subJ(
        .inA(infJ),
        .inB(inwJ),
        .out(outJ)
    );
    Subtractor subK(
        .inA(infK),
        .inB(inwK),
        .out(outK)
    );
    Subtractor subL(
        .inA(infL),
        .inB(inwL),
        .out(outL)
    );
    Subtractor subM(
        .inA(infM),
        .inB(inwM),
        .out(outM)
    );
    Subtractor subN(
        .inA(infN),
        .inB(inwN),
        .out(outN)
    );
    Subtractor subO(
        .inA(infO),
        .inB(inwO),
        .out(outO)
    );
    Subtractor subP(
        .inA(infP),
        .inB(inwP),
        .out(outP)
    );
  
endmodule