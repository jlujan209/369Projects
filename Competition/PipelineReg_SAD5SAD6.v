`timescale 1ns / 1ps

module PipelineReg_SAD5SAD6(
    input clk,
    input [13:0] T1_OutValue,
    input [15:0] T1_OutIndex,
    input T1_OutTriggerBoss,
    input [13:0] T2_OutValue,
    input [15:0] T2_OutIndex,
    input T2_OutTriggerBoss,
    input [13:0] T3_OutValue,
    input [15:0] T3_OutIndex,
    input T3_OutTriggerBoss,
    input [13:0] T4_OutValue,
    input [15:0] T4_OutIndex,
    input T4_OutTriggerBoss,
    output reg [13:0] SAD6_T1_OutValue,
    output reg [15:0] SAD6_T1_OutIndex,
    output reg [13:0] SAD6_T2_OutValue,
    output reg [15:0] SAD6_T2_OutIndex,
    output reg [13:0] SAD6_T3_OutValue,
    output reg [15:0] SAD6_T3_OutIndex,
    output reg [13:0] SAD6_T4_OutValue,
    output reg [15:0] SAD6_T4_OutIndex,
    output reg SAD6_TriggerBoss
);

always @(posedge clk) begin
    SAD6_T1_OutValue <= T1_OutValue;
    SAD6_T1_OutIndex <= T1_OutIndex;
    SAD6_T2_OutValue <= T2_OutValue;
    SAD6_T2_OutIndex <= T2_OutIndex;
    SAD6_T3_OutValue <= T3_OutValue;
    SAD6_T3_OutIndex <= T3_OutIndex;
    SAD6_T4_OutValue <= T4_OutValue;
    SAD6_T4_OutIndex <= T4_OutIndex;
    SAD6_TriggerBoss <= T4_OutTriggerBoss;
end

endmodule