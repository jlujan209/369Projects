`timescale 1ns / 1ps

module PipelineReg_MIN3WB(
    input clk,
    input MIN3_TriggerBoss,
    input [15:0] MIN3_MinimumIndex,
    input [13:0] MIN3_MinimumValue,
    output reg [15:0] WB_FinalBossIndex,
    output reg WB_NewLowestMin
);

    reg [13:0] CurrentMinimumValue;

    initial begin
        CurrentMinimumValue = 13'b0111111111111;
    end

    always @(posedge clk) begin
        if (MIN3_TriggerBoss && (MIN3_MinimumValue <= CurrentMinimumValue)) begin
            WB_FinalBossIndex <= MIN3_MinimumIndex;
            CurrentMinimumValue <= MIN3_MinimumValue;
            WB_NewLowestMin <= 1'b1;
        end
        else begin
            WB_FinalBossIndex <= WB_FinalBossIndex;
            CurrentMinimumValue <= CurrentMinimumValue;
            WB_NewLowestMin <= 1'b0;
        end
    end
    

endmodule