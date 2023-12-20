`timescale 1ns / 1ps


module Core(
    input clk,
    input [15:0] Index,
    input TriggerBoss,
    input [8:0] Window0,
    input [8:0] Window1,
    input [8:0] Window2,
    input [8:0] Window3,
    input [8:0] Window4,
    input [8:0] Window5,
    input [8:0] Window6,
    input [8:0] Window7,
    input [8:0] Window8,
    input [8:0] Window9,
    input [8:0] Window10,
    input [8:0] Window11,
    input [8:0] Window12,
    input [8:0] Window13,
    input [8:0] Window14,
    input [8:0] Window15,
    input [8:0] Frame0,
    input [8:0] Frame1,
    input [8:0] Frame2,
    input [8:0] Frame3,
    input [8:0] Frame4,
    input [8:0] Frame5,
    input [8:0] Frame6,
    input [8:0] Frame64,
    input [8:0] Frame65,
    input [8:0] Frame66,
    input [8:0] Frame67,
    input [8:0] Frame68,
    input [8:0] Frame69,
    input [8:0] Frame70,
    input [8:0] Frame128,
    input [8:0] Frame129,
    input [8:0] Frame130,
    input [8:0] Frame131,
    input [8:0] Frame132,
    input [8:0] Frame133,
    input [8:0] Frame134,
    input [8:0] Frame192,
    input [8:0] Frame193,
    input [8:0] Frame194,
    input [8:0] Frame195,
    input [8:0] Frame196,
    input [8:0] Frame197,
    input [8:0] Frame198,
    output SAD7_TriggerBoss,
    output [15:0] SAD7_OutputIndex,
    output [13:0] SAD7_OutputValue
);

    wire [13:0] T1_OutValue;
    wire [15:0] T1_OutIndex;
    wire T1_OutTriggerBoss;
    wire [13:0] T2_OutValue;
    wire [15:0] T2_OutIndex;
    wire T2_OutTriggerBoss;
    wire [13:0] T3_OutValue;
    wire [15:0] T3_OutIndex;
    wire T3_OutTriggerBoss;
    wire [13:0] T4_OutValue;
    wire [15:0] T4_OutIndex;
    wire T4_OutTriggerBoss;

    wire [15:0] SAD6_T1_OutIndex;
    wire [13:0] SAD6_T1_OutValue;
    wire [15:0] SAD6_T2_OutIndex;
    wire [13:0] SAD6_T2_OutValue;
    wire [15:0] SAD6_T3_OutIndex;
    wire [13:0] SAD6_T3_OutValue;
    wire [15:0] SAD6_T4_OutIndex;
    wire [13:0] SAD6_T4_OutValue;
    wire SAD6_TriggerBoss;
    wire [15:0] SAD6_IndexOfMinA;
    wire [13:0] SAD6_ValueOfMinA;
    wire [15:0] SAD6_IndexOfMinB;
    wire [13:0] SAD6_ValueOfMinB;

    wire [15:0] SAD7_IndexOfMinA;
    wire [13:0] SAD7_ValueOfMinA;
    wire [15:0] SAD7_IndexOfMinB;
    wire [13:0] SAD7_ValueOfMinB;

    Thread _Thread1(
        clk,
        Index,
        TriggerBoss,
        Window0,
        Window1,
        Window2,
        Window3,
        Window4,
        Window5,
        Window6,
        Window7,
        Window8,
        Window9,
        Window10,
        Window11,
        Window12,
        Window13,
        Window14,
        Window15,
        Frame0,
        Frame1,
        Frame2,
        Frame3,
        Frame64,
        Frame65,
        Frame66,
        Frame67,
        Frame128,
        Frame129,
        Frame130,
        Frame131,
        Frame192,
        Frame193,
        Frame194,
        Frame195,
        T1_OutValue,
        T1_OutIndex,
        T1_OutTriggerBoss
    );

    Thread _Thread2(
        clk,
        Index + 16'd1,
        TriggerBoss,
        Window0,
        Window1,
        Window2,
        Window3,
        Window4,
        Window5,
        Window6,
        Window7,
        Window8,
        Window9,
        Window10,
        Window11,
        Window12,
        Window13,
        Window14,
        Window15,
        Frame1,
        Frame2,
        Frame3,
        Frame4,
        Frame65,
        Frame66,
        Frame67,
        Frame68,
        Frame129,
        Frame130,
        Frame131,
        Frame132,
        Frame193,
        Frame194,
        Frame195,
        Frame196,
        T2_OutValue,
        T2_OutIndex,
        T2_OutTriggerBoss
    );

    Thread _Thread3(
        clk,
        Index + 16'd2,
        TriggerBoss,
        Window0,
        Window1,
        Window2,
        Window3,
        Window4,
        Window5,
        Window6,
        Window7,
        Window8,
        Window9,
        Window10,
        Window11,
        Window12,
        Window13,
        Window14,
        Window15,
        Frame2,
        Frame3,
        Frame4,
        Frame5,
        Frame66,
        Frame67,
        Frame68,
        Frame69,
        Frame130,
        Frame131,
        Frame132,
        Frame133,
        Frame194,
        Frame195,
        Frame196,
        Frame197,
        T3_OutValue,
        T3_OutIndex,
        T3_OutTriggerBoss
    );

    Thread _Thread4(
        clk,
        Index + 16'd3,
        TriggerBoss,
        Window0,
        Window1,
        Window2,
        Window3,
        Window4,
        Window5,
        Window6,
        Window7,
        Window8,
        Window9,
        Window10,
        Window11,
        Window12,
        Window13,
        Window14,
        Window15,
        Frame3,
        Frame4,
        Frame5,
        Frame6,
        Frame67,
        Frame68,
        Frame69,
        Frame70,
        Frame131,
        Frame132,
        Frame133,
        Frame134,
        Frame195,
        Frame196,
        Frame197,
        Frame198,
        T4_OutValue,
        T4_OutIndex,
        T4_OutTriggerBoss
    );

    PipelineReg_SAD5SAD6 _PipelineReg_SAD5SAD6(
        clk,
        T1_OutValue,
        T1_OutIndex,
        T1_OutTriggerBoss,
        T2_OutValue,
        T2_OutIndex,
        T2_OutTriggerBoss,
        T3_OutValue,
        T3_OutIndex,
        T3_OutTriggerBoss,
        T4_OutValue,
        T4_OutIndex,
        T4_OutTriggerBoss,
        SAD6_T1_OutValue,
        SAD6_T1_OutIndex,
        SAD6_T2_OutValue,
        SAD6_T2_OutIndex,
        SAD6_T3_OutValue,
        SAD6_T3_OutIndex,
        SAD6_T4_OutValue,
        SAD6_T4_OutIndex,
        SAD6_TriggerBoss
    );


    Minimum _MinimumA(
        SAD6_T1_OutIndex,
        SAD6_T1_OutValue,
        SAD6_T2_OutIndex,
        SAD6_T2_OutValue,
        SAD6_IndexOfMinA,
        SAD6_ValueOfMinA
    );

    Minimum _MinimumB(
        SAD6_T3_OutIndex,
        SAD6_T3_OutValue,
        SAD6_T4_OutIndex,
        SAD6_T4_OutValue,
        SAD6_IndexOfMinB,
        SAD6_ValueOfMinB
    );

    PipelineReg_SAD6SAD7 _PipelineReg_SAD6SAD7(
        clk,
        SAD6_TriggerBoss,
        SAD6_IndexOfMinA,
        SAD6_ValueOfMinA,
        SAD6_IndexOfMinB,
        SAD6_ValueOfMinB,
        SAD7_TriggerBoss,
        SAD7_IndexOfMinA,
        SAD7_ValueOfMinA,
        SAD7_IndexOfMinB,
        SAD7_ValueOfMinB
    );


    Minimum _MinimumC(
        SAD7_IndexOfMinA,
        SAD7_ValueOfMinA,
        SAD7_IndexOfMinB,
        SAD7_ValueOfMinB,
        SAD7_OutputIndex,
        SAD7_OutputValue
    );

   
endmodule
