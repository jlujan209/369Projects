`timescale 1ns / 1ps

module PipelineReg_SAD4SAD5(
    input clk,
    input [15:0] SAD4_Index,
    input SAD4_TriggerBoss,
    input [13:0] SAD4_result1,
    input [13:0] SAD4_result2,
    output reg [15:0] SAD5_Index,
    output reg SAD5_TriggerBoss,
    output reg [13:0] SAD5_input1,
    output reg [13:0] SAD5_input2
);

always @(posedge clk) begin
    SAD5_Index <= SAD4_Index;
    SAD5_TriggerBoss <= SAD4_TriggerBoss;
    SAD5_input1 <= SAD4_result1;
    SAD5_input2 <= SAD4_result2;
end


endmodule