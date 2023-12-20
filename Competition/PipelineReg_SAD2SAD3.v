`timescale 1ns / 1ps

module PipelineReg_SAD2SAD3(
    input clk,
    input SAD2_TriggerBoss,
    input [15:0] SAD2_Index,
    input [13:0] SAD2_result1,
    input [13:0] SAD2_result2,
    input [13:0] SAD2_result3,
    input [13:0] SAD2_result4,
    input [13:0] SAD2_result5,
    input [13:0] SAD2_result6,
    input [13:0] SAD2_result7,
    input [13:0] SAD2_result8,
    output reg [15:0] SAD3_Index,
    output reg SAD3_TriggerBoss,
    output reg [13:0] SAD3_input1,
    output reg [13:0] SAD3_input2,
    output reg [13:0] SAD3_input3,
    output reg [13:0] SAD3_input4,
    output reg [13:0] SAD3_input5,
    output reg [13:0] SAD3_input6,
    output reg [13:0] SAD3_input7,
    output reg [13:0] SAD3_input8
);

always @(posedge clk) begin
    SAD3_Index <= SAD2_Index;
    SAD3_TriggerBoss <= SAD2_TriggerBoss;
    SAD3_input1 <= SAD2_result1;
    SAD3_input2 <= SAD2_result2;
    SAD3_input3 <= SAD2_result3;
    SAD3_input4 <= SAD2_result4;
    SAD3_input5 <= SAD2_result5;
    SAD3_input6 <= SAD2_result6;
    SAD3_input7 <= SAD2_result7;
    SAD3_input8 <= SAD2_result8;
    
end

endmodule