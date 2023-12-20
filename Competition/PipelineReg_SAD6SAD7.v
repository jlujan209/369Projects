`timescale 1ns / 1ps

module PipelineReg_SAD6SAD7(
    input clk,
    input SAD6_TriggerBoss,
    input [15:0] SAD6_IndexOfMinA,
    input [13:0] SAD6_ValueOfMinA,
    input [15:0] SAD6_IndexOfMinB,
    input [13:0] SAD6_ValueOfMinB,
    output reg SAD7_TriggerBoss,
    output reg [15:0] SAD7_IndexOfMinA,
    output reg [13:0] SAD7_ValueOfMinA,
    output reg [15:0] SAD7_IndexOfMinB,
    output reg [13:0] SAD7_ValueOfMinB
);

always @(posedge clk) begin
    SAD7_TriggerBoss <= SAD6_TriggerBoss;
    SAD7_IndexOfMinA <= SAD6_IndexOfMinA;
    SAD7_ValueOfMinA <= SAD6_ValueOfMinA;
    SAD7_IndexOfMinB <= SAD6_IndexOfMinB;
    SAD7_ValueOfMinB <= SAD6_ValueOfMinB;
end

endmodule