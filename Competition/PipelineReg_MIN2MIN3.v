`timescale 1ns / 1ps

module PipelineReg_MIN2MIN3(
    input clk,
    input MIN2_TriggerBoss,
    input [15:0] MIN2_Minimum1Index,
    input [13:0] MIN2_Minimum1Value,
    input [15:0] MIN2_Minimum2Index,
    input [13:0] MIN2_Minimum2Value,
    output reg MIN3_TriggerBoss,
    output reg [15:0] MIN3_Minimum1Index,
    output reg [13:0] MIN3_Minimum1Value,
    output reg [15:0] MIN3_Minimum2Index,
    output reg [13:0] MIN3_Minimum2Value
);

always @(posedge clk) begin
    MIN3_TriggerBoss <= MIN2_TriggerBoss;
    MIN3_Minimum1Index <= MIN2_Minimum1Index;
    MIN3_Minimum1Value <= MIN2_Minimum1Value;
    MIN3_Minimum2Index <= MIN2_Minimum2Index;
    MIN3_Minimum2Value <= MIN2_Minimum2Value;
end
    

endmodule