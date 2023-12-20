`timescale 1ns / 1ps

module PipelineReg_SAD7MIN1(
    input clk,
    input SAD7_TriggerBoss,
    input [15:0] SAD7_Core1Index,
    input [13:0] SAD7_Core1Value,
    input [15:0] SAD7_Core2Index,
    input [13:0] SAD7_Core2Value,
    input [15:0] SAD7_Core3Index,
    input [13:0] SAD7_Core3Value,
    input [15:0] SAD7_Core4Index,
    input [13:0] SAD7_Core4Value,
    input [15:0] SAD7_Core5Index,
    input [13:0] SAD7_Core5Value,
    input [15:0] SAD7_Core6Index,
    input [13:0] SAD7_Core6Value,
    input [15:0] SAD7_Core7Index,
    input [13:0] SAD7_Core7Value,
    input [15:0] SAD7_Core8Index,
    input [13:0] SAD7_Core8Value,
    output reg MIN1_TriggerBoss,
    output reg [15:0] MIN1_Core1Index,
    output reg [13:0] MIN1_Core1Value,
    output reg [15:0] MIN1_Core2Index,
    output reg [13:0] MIN1_Core2Value,
    output reg [15:0] MIN1_Core3Index,
    output reg [13:0] MIN1_Core3Value,
    output reg [15:0] MIN1_Core4Index,
    output reg [13:0] MIN1_Core4Value,
    output reg [15:0] MIN1_Core5Index,
    output reg [13:0] MIN1_Core5Value,
    output reg [15:0] MIN1_Core6Index,
    output reg [13:0] MIN1_Core6Value,
    output reg [15:0] MIN1_Core7Index,
    output reg [13:0] MIN1_Core7Value,
    output reg [15:0] MIN1_Core8Index,
    output reg [13:0] MIN1_Core8Value
);

always @(posedge clk) begin
    MIN1_TriggerBoss <= SAD7_TriggerBoss;
    MIN1_Core1Index <= SAD7_Core1Index;
    MIN1_Core1Value <= SAD7_Core1Value;
    MIN1_Core2Index <= SAD7_Core2Index;
    MIN1_Core2Value <= SAD7_Core2Value;
    MIN1_Core3Index <= SAD7_Core3Index;
    MIN1_Core3Value <= SAD7_Core3Value;
    MIN1_Core4Index <= SAD7_Core4Index;
    MIN1_Core4Value <= SAD7_Core4Value;
    MIN1_Core5Index <= SAD7_Core5Index;
    MIN1_Core5Value <= SAD7_Core5Value;
    MIN1_Core6Index <= SAD7_Core6Index;
    MIN1_Core6Value <= SAD7_Core6Value;
    MIN1_Core7Index <= SAD7_Core7Index;
    MIN1_Core7Value <= SAD7_Core7Value;
    MIN1_Core8Index <= SAD7_Core8Index;
    MIN1_Core8Value <= SAD7_Core8Value;
end

endmodule