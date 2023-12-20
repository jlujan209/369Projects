`timescale 1ns / 1ps

module PipelineReg_MEMSAD1(
    input clk,
    input MEM_TriggerBoss,
    input [15:0] MEM_Index,
    input [8:0] MEM_Window0,
    input [8:0] MEM_Window1,
    input [8:0] MEM_Window2,
    input [8:0] MEM_Window3,
    input [8:0] MEM_Window4,
    input [8:0] MEM_Window5,
    input [8:0] MEM_Window6,
    input [8:0] MEM_Window7,
    input [8:0] MEM_Window8,
    input [8:0] MEM_Window9,
    input [8:0] MEM_Window10,
    input [8:0] MEM_Window11,
    input [8:0] MEM_Window12,
    input [8:0] MEM_Window13,
    input [8:0] MEM_Window14,
    input [8:0] MEM_Window15,
    input [8:0] MEM_Frame0,
    input [8:0] MEM_Frame1,
    input [8:0] MEM_Frame2,
    input [8:0] MEM_Frame3,
    input [8:0] MEM_Frame4,
    input [8:0] MEM_Frame5,
    input [8:0] MEM_Frame6,
    input [8:0] MEM_Frame64,
    input [8:0] MEM_Frame65,
    input [8:0] MEM_Frame66,
    input [8:0] MEM_Frame67,
    input [8:0] MEM_Frame68,
    input [8:0] MEM_Frame69,
    input [8:0] MEM_Frame70,
    input [8:0] MEM_Frame128,
    input [8:0] MEM_Frame129,
    input [8:0] MEM_Frame130,
    input [8:0] MEM_Frame131,
    input [8:0] MEM_Frame132,
    input [8:0] MEM_Frame133,
    input [8:0] MEM_Frame134,
    input [8:0] MEM_Frame192,
    input [8:0] MEM_Frame193,
    input [8:0] MEM_Frame194,
    input [8:0] MEM_Frame195,
    input [8:0] MEM_Frame196,
    input [8:0] MEM_Frame197,
    input [8:0] MEM_Frame198,
    input [8:0] MEM_Frame256,
    input [8:0] MEM_Frame257,
    input [8:0] MEM_Frame258,
    input [8:0] MEM_Frame259,
    input [8:0] MEM_Frame260,
    input [8:0] MEM_Frame261,
    input [8:0] MEM_Frame262,
    input [8:0] MEM_Frame320,
    input [8:0] MEM_Frame321,
    input [8:0] MEM_Frame322,
    input [8:0] MEM_Frame323,
    input [8:0] MEM_Frame324,
    input [8:0] MEM_Frame325,
    input [8:0] MEM_Frame326,
    input [8:0] MEM_Frame384,
    input [8:0] MEM_Frame385,
    input [8:0] MEM_Frame386,
    input [8:0] MEM_Frame387,
    input [8:0] MEM_Frame388,
    input [8:0] MEM_Frame389,
    input [8:0] MEM_Frame390,
    input [8:0] MEM_Frame448,
    input [8:0] MEM_Frame449,
    input [8:0] MEM_Frame450,
    input [8:0] MEM_Frame451,
    input [8:0] MEM_Frame452,
    input [8:0] MEM_Frame453,
    input [8:0] MEM_Frame454,
    input [8:0] MEM_Frame512,
    input [8:0] MEM_Frame513,
    input [8:0] MEM_Frame514,
    input [8:0] MEM_Frame515,
    input [8:0] MEM_Frame516,
    input [8:0] MEM_Frame517,
    input [8:0] MEM_Frame518,
    input [8:0] MEM_Frame576,
    input [8:0] MEM_Frame577,
    input [8:0] MEM_Frame578,
    input [8:0] MEM_Frame579,
    input [8:0] MEM_Frame580,
    input [8:0] MEM_Frame581,
    input [8:0] MEM_Frame582,
    input [8:0] MEM_Frame640,
    input [8:0] MEM_Frame641,
    input [8:0] MEM_Frame642,
    input [8:0] MEM_Frame643,
    input [8:0] MEM_Frame644,
    input [8:0] MEM_Frame645,
    input [8:0] MEM_Frame646,
    output reg SAD1_TriggerBoss,
    output reg [15:0] SAD1_Index,
    output reg [8:0] SAD1_Window0,
    output reg [8:0] SAD1_Window1,
    output reg [8:0] SAD1_Window2,
    output reg [8:0] SAD1_Window3,
    output reg [8:0] SAD1_Window4,
    output reg [8:0] SAD1_Window5,
    output reg [8:0] SAD1_Window6,
    output reg [8:0] SAD1_Window7,
    output reg [8:0] SAD1_Window8,
    output reg [8:0] SAD1_Window9,
    output reg [8:0] SAD1_Window10,
    output reg [8:0] SAD1_Window11,
    output reg [8:0] SAD1_Window12,
    output reg [8:0] SAD1_Window13,
    output reg [8:0] SAD1_Window14,
    output reg [8:0] SAD1_Window15,
    output reg [8:0] SAD1_Frame0,
    output reg [8:0] SAD1_Frame1,
    output reg [8:0] SAD1_Frame2,
    output reg [8:0] SAD1_Frame3,
    output reg [8:0] SAD1_Frame4,
    output reg [8:0] SAD1_Frame5,
    output reg [8:0] SAD1_Frame6,
    output reg [8:0] SAD1_Frame64,
    output reg [8:0] SAD1_Frame65,
    output reg [8:0] SAD1_Frame66,
    output reg [8:0] SAD1_Frame67,
    output reg [8:0] SAD1_Frame68,
    output reg [8:0] SAD1_Frame69,
    output reg [8:0] SAD1_Frame70,
    output reg [8:0] SAD1_Frame128,
    output reg [8:0] SAD1_Frame129,
    output reg [8:0] SAD1_Frame130,
    output reg [8:0] SAD1_Frame131,
    output reg [8:0] SAD1_Frame132,
    output reg [8:0] SAD1_Frame133,
    output reg [8:0] SAD1_Frame134,
    output reg [8:0] SAD1_Frame192,
    output reg [8:0] SAD1_Frame193,
    output reg [8:0] SAD1_Frame194,
    output reg [8:0] SAD1_Frame195,
    output reg [8:0] SAD1_Frame196,
    output reg [8:0] SAD1_Frame197,
    output reg [8:0] SAD1_Frame198,
    output reg [8:0] SAD1_Frame256,
    output reg [8:0] SAD1_Frame257,
    output reg [8:0] SAD1_Frame258,
    output reg [8:0] SAD1_Frame259,
    output reg [8:0] SAD1_Frame260,
    output reg [8:0] SAD1_Frame261,
    output reg [8:0] SAD1_Frame262,
    output reg [8:0] SAD1_Frame320,
    output reg [8:0] SAD1_Frame321,
    output reg [8:0] SAD1_Frame322,
    output reg [8:0] SAD1_Frame323,
    output reg [8:0] SAD1_Frame324,
    output reg [8:0] SAD1_Frame325,
    output reg [8:0] SAD1_Frame326,
    output reg [8:0] SAD1_Frame384,
    output reg [8:0] SAD1_Frame385,
    output reg [8:0] SAD1_Frame386,
    output reg [8:0] SAD1_Frame387,
    output reg [8:0] SAD1_Frame388,
    output reg [8:0] SAD1_Frame389,
    output reg [8:0] SAD1_Frame390,
    output reg [8:0] SAD1_Frame448,
    output reg [8:0] SAD1_Frame449,
    output reg [8:0] SAD1_Frame450,
    output reg [8:0] SAD1_Frame451,
    output reg [8:0] SAD1_Frame452,
    output reg [8:0] SAD1_Frame453,
    output reg [8:0] SAD1_Frame454,
    output reg [8:0] SAD1_Frame512,
    output reg [8:0] SAD1_Frame513,
    output reg [8:0] SAD1_Frame514,
    output reg [8:0] SAD1_Frame515,
    output reg [8:0] SAD1_Frame516,
    output reg [8:0] SAD1_Frame517,
    output reg [8:0] SAD1_Frame518,
    output reg [8:0] SAD1_Frame576,
    output reg [8:0] SAD1_Frame577,
    output reg [8:0] SAD1_Frame578,
    output reg [8:0] SAD1_Frame579,
    output reg [8:0] SAD1_Frame580,
    output reg [8:0] SAD1_Frame581,
    output reg [8:0] SAD1_Frame582,
    output reg [8:0] SAD1_Frame640,
    output reg [8:0] SAD1_Frame641,
    output reg [8:0] SAD1_Frame642,
    output reg [8:0] SAD1_Frame643,
    output reg [8:0] SAD1_Frame644,
    output reg [8:0] SAD1_Frame645,
    output reg [8:0] SAD1_Frame646
);

always @(posedge clk) begin
    SAD1_TriggerBoss <= MEM_TriggerBoss;
    SAD1_Index <= MEM_Index;
    SAD1_Window0 <= MEM_Window0;
    SAD1_Window1 <= MEM_Window1;
    SAD1_Window2 <= MEM_Window2;
    SAD1_Window3 <= MEM_Window3;
    SAD1_Window4 <= MEM_Window4;
    SAD1_Window5 <= MEM_Window5;
    SAD1_Window6 <= MEM_Window6;
    SAD1_Window7 <= MEM_Window7;
    SAD1_Window8 <= MEM_Window8;
    SAD1_Window9 <= MEM_Window9;
    SAD1_Window10 <= MEM_Window10;
    SAD1_Window11 <= MEM_Window11;
    SAD1_Window12 <= MEM_Window12;
    SAD1_Window13 <= MEM_Window13;
    SAD1_Window14 <= MEM_Window14;
    SAD1_Window15 <= MEM_Window15;
    
    SAD1_Frame0 <= MEM_Frame0;
    SAD1_Frame1 <= MEM_Frame1;
    SAD1_Frame2 <= MEM_Frame2;
    SAD1_Frame3 <= MEM_Frame3;
    SAD1_Frame4 <= MEM_Frame4;
    SAD1_Frame5 <= MEM_Frame5;
    SAD1_Frame6 <= MEM_Frame6;
    SAD1_Frame64 <= MEM_Frame64;
    SAD1_Frame65 <= MEM_Frame65;
    SAD1_Frame66 <= MEM_Frame66;
    SAD1_Frame67 <= MEM_Frame67;
    SAD1_Frame68 <= MEM_Frame68;
    SAD1_Frame69 <= MEM_Frame69;
    SAD1_Frame70 <= MEM_Frame70;
    SAD1_Frame128 <= MEM_Frame128;
    SAD1_Frame129 <= MEM_Frame129;
    SAD1_Frame130 <= MEM_Frame130;
    SAD1_Frame131 <= MEM_Frame131;
    SAD1_Frame132 <= MEM_Frame132;
    SAD1_Frame133 <= MEM_Frame133;
    SAD1_Frame134 <= MEM_Frame134;
    SAD1_Frame192 <= MEM_Frame192;
    SAD1_Frame193 <= MEM_Frame193;
    SAD1_Frame194 <= MEM_Frame194;
    SAD1_Frame195 <= MEM_Frame195;
    SAD1_Frame196 <= MEM_Frame196;
    SAD1_Frame197 <= MEM_Frame197;
    SAD1_Frame198 <= MEM_Frame198;
    SAD1_Frame256 <= MEM_Frame256;
    SAD1_Frame257 <= MEM_Frame257;
    SAD1_Frame258 <= MEM_Frame258;
    SAD1_Frame259 <= MEM_Frame259;
    SAD1_Frame260 <= MEM_Frame260;
    SAD1_Frame261 <= MEM_Frame261;
    SAD1_Frame262 <= MEM_Frame262;
    SAD1_Frame320 <= MEM_Frame320;
    SAD1_Frame321 <= MEM_Frame321;
    SAD1_Frame322 <= MEM_Frame322;
    SAD1_Frame323 <= MEM_Frame323;
    SAD1_Frame324 <= MEM_Frame324;
    SAD1_Frame325 <= MEM_Frame325;
    SAD1_Frame326 <= MEM_Frame326;
    SAD1_Frame384 <= MEM_Frame384;
    SAD1_Frame385 <= MEM_Frame385;
    SAD1_Frame386 <= MEM_Frame386;
    SAD1_Frame387 <= MEM_Frame387;
    SAD1_Frame388 <= MEM_Frame388;
    SAD1_Frame389 <= MEM_Frame389;
    SAD1_Frame390 <= MEM_Frame390;
    SAD1_Frame448 <= MEM_Frame448;
    SAD1_Frame449 <= MEM_Frame449;
    SAD1_Frame450 <= MEM_Frame450;
    SAD1_Frame451 <= MEM_Frame451;
    SAD1_Frame452 <= MEM_Frame452;
    SAD1_Frame453 <= MEM_Frame453;
    SAD1_Frame454 <= MEM_Frame454;
    SAD1_Frame512 <= MEM_Frame512;
    SAD1_Frame513 <= MEM_Frame513;
    SAD1_Frame514 <= MEM_Frame514;
    SAD1_Frame515 <= MEM_Frame515;
    SAD1_Frame516 <= MEM_Frame516;
    SAD1_Frame517 <= MEM_Frame517;
    SAD1_Frame518 <= MEM_Frame518;
    SAD1_Frame576 <= MEM_Frame576;
    SAD1_Frame577 <= MEM_Frame577;
    SAD1_Frame578 <= MEM_Frame578;
    SAD1_Frame579 <= MEM_Frame579;
    SAD1_Frame580 <= MEM_Frame580;
    SAD1_Frame581 <= MEM_Frame581;
    SAD1_Frame582 <= MEM_Frame582;
    SAD1_Frame640 <= MEM_Frame640;
    SAD1_Frame641 <= MEM_Frame641;
    SAD1_Frame642 <= MEM_Frame642;
    SAD1_Frame643 <= MEM_Frame643;
    SAD1_Frame644 <= MEM_Frame644;
    SAD1_Frame645 <= MEM_Frame645;
    SAD1_Frame646 <= MEM_Frame646;
end

endmodule