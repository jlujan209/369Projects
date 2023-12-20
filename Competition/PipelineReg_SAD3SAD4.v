`timescale 1ns / 1ps

module PipelineReg_SAD3SAD4(
    input clk,
    input [15:0] SAD3_Index,
    input SAD3_TriggerBoss,
    input [13:0] SAD3_result1,
    input [13:0] SAD3_result2,
    input [13:0] SAD3_result3,
    input [13:0] SAD3_result4,
    output reg [15:0] SAD4_Index,
    output reg SAD4_TriggerBoss,
    output reg [13:0] SAD4_input1,
    output reg [13:0] SAD4_input2,
    output reg [13:0] SAD4_input3,
    output reg [13:0] SAD4_input4
    );

always @(posedge clk) begin
    SAD4_Index <= SAD3_Index;
    SAD4_TriggerBoss <= SAD3_TriggerBoss;
    SAD4_input1 <= SAD3_result1;
    SAD4_input2 <= SAD3_result2;
    SAD4_input3 <= SAD3_result3;
    SAD4_input4 <= SAD3_result4;
    
end


endmodule