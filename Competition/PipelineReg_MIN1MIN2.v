`timescale 1ns / 1ps

module PipelineReg_MIN1MIN2(
    input clk,
    input MIN1_TriggerBoss,
    input [15:0] MIN1_Minimum1Index,
    input [13:0] MIN1_Minimum1Value,
    input [15:0] MIN1_Minimum2Index,
    input [13:0] MIN1_Minimum2Value,
    input [15:0] MIN1_Minimum3Index,
    input [13:0] MIN1_Minimum3Value,
    input [15:0] MIN1_Minimum4Index,
    input [13:0] MIN1_Minimum4Value,
    output reg MIN2_TriggerBoss,
    output reg [15:0] MIN2_Minimum1Index,
    output reg [13:0] MIN2_Minimum1Value,
    output reg [15:0] MIN2_Minimum2Index,
    output reg [13:0] MIN2_Minimum2Value,
    output reg [15:0] MIN2_Minimum3Index,
    output reg [13:0] MIN2_Minimum3Value,
    output reg [15:0] MIN2_Minimum4Index,
    output reg [13:0] MIN2_Minimum4Value
);

always @(posedge clk) begin
    MIN2_TriggerBoss <= MIN1_TriggerBoss;
    MIN2_Minimum1Index <= MIN1_Minimum1Index;
    MIN2_Minimum1Value <= MIN1_Minimum1Value;
    MIN2_Minimum2Index <= MIN1_Minimum2Index;
    MIN2_Minimum2Value <= MIN1_Minimum2Value;
    MIN2_Minimum3Index <= MIN1_Minimum3Index;
    MIN2_Minimum3Value <= MIN1_Minimum3Value;
    MIN2_Minimum4Index <= MIN1_Minimum4Index;
    MIN2_Minimum4Value <= MIN1_Minimum4Value;
end

endmodule