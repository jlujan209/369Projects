`timescale 1ns / 1ps

module PipelineReg_SAD1SAD2(
    input clk,
    input [15:0] SAD1_Index,
    input SAD1_TriggerBoss,
    input [13:0] SAD1_result1,
    input [13:0] SAD1_result2,
    input [13:0] SAD1_result3,
    input [13:0] SAD1_result4,
    input [13:0] SAD1_result5,
    input [13:0] SAD1_result6,
    input [13:0] SAD1_result7,
    input [13:0] SAD1_result8,
    input [13:0] SAD1_result9,
    input [13:0] SAD1_result10,
    input [13:0] SAD1_result11,
    input [13:0] SAD1_result12,
    input [13:0] SAD1_result13,
    input [13:0] SAD1_result14,
    input [13:0] SAD1_result15,
    input [13:0] SAD1_result16,
    output reg [15:0] SAD2_Index,
    output reg SAD2_TriggerBoss,
    output reg [13:0] SAD2_input1,
    output reg [13:0] SAD2_input2,
    output reg [13:0] SAD2_input3,
    output reg [13:0] SAD2_input4,
    output reg [13:0] SAD2_input5,
    output reg [13:0] SAD2_input6,
    output reg [13:0] SAD2_input7,
    output reg [13:0] SAD2_input8,
    output reg [13:0] SAD2_input9,
    output reg [13:0] SAD2_input10,
    output reg [13:0] SAD2_input11,
    output reg [13:0] SAD2_input12,
    output reg [13:0] SAD2_input13,
    output reg [13:0] SAD2_input14,
    output reg [13:0] SAD2_input15,
    output reg [13:0] SAD2_input16
);

always @(posedge clk) begin
    SAD2_Index <= SAD1_Index;
    SAD2_TriggerBoss <= SAD1_TriggerBoss;
    SAD2_input1 <= SAD1_result1;
    SAD2_input2 <= SAD1_result2;
    SAD2_input3 <= SAD1_result3;
    SAD2_input4 <= SAD1_result4;
    SAD2_input5 <= SAD1_result5;
    SAD2_input6 <= SAD1_result6;
    SAD2_input7 <= SAD1_result7;
    SAD2_input8 <= SAD1_result8;
    SAD2_input9 <= SAD1_result9;
    SAD2_input10 <= SAD1_result10;
    SAD2_input11 <= SAD1_result11;
    SAD2_input12 <= SAD1_result12;
    SAD2_input13 <= SAD1_result13;
    SAD2_input14 <= SAD1_result14;
    SAD2_input15 <= SAD1_result15;
    SAD2_input16 <= SAD1_result16;
end

endmodule