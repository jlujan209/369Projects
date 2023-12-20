`timescale 1ns / 1ps

module TopLevel(
    input Clk,
    input Reset,
    output [7:0]en_out,
    output [6:0]out7
    );
    
    wire [15:0] v0;
    wire [15:0] v1;
    
    Two4DigitDisplay _Two4DigitDisplay(Clk, v0, v1, out7, en_out);
    
    //IF Wires
    wire [15:0] IF_PCInput;
    wire [15:0] IF_PCOutput;
    wire [15:0] IF_Instruction;
    
    //ID Wires
    wire [15:0] ID_Instruction;
    wire ID_PCStall;  
    wire ID_TriggerBoss;
    wire ID_SetZeroes;
    
    //MEM Wires
    wire MEM_TriggerBoss;
    wire [15:0] MEM_Immediate;
    wire [15:0] MEM_Index;
    wire [8:0] MEM_Window0;
    wire [8:0] MEM_Window1;
    wire [8:0] MEM_Window2;
    wire [8:0] MEM_Window3;
    wire [8:0] MEM_Window4;
    wire [8:0] MEM_Window5;
    wire [8:0] MEM_Window6;
    wire [8:0] MEM_Window7;
    wire [8:0] MEM_Window8;
    wire [8:0] MEM_Window9;
    wire [8:0] MEM_Window10;
    wire [8:0] MEM_Window11;
    wire [8:0] MEM_Window12;
    wire [8:0] MEM_Window13;
    wire [8:0] MEM_Window14;
    wire [8:0] MEM_Window15;
    wire [8:0] MEM_Frame0;
    wire [8:0] MEM_Frame1;
    wire [8:0] MEM_Frame2;
    wire [8:0] MEM_Frame3;
    wire [8:0] MEM_Frame4;
    wire [8:0] MEM_Frame5;
    wire [8:0] MEM_Frame6;
    wire [8:0] MEM_Frame64;
    wire [8:0] MEM_Frame65;
    wire [8:0] MEM_Frame66;
    wire [8:0] MEM_Frame67;
    wire [8:0] MEM_Frame68;
    wire [8:0] MEM_Frame69;
    wire [8:0] MEM_Frame70;
    wire [8:0] MEM_Frame128;
    wire [8:0] MEM_Frame129;
    wire [8:0] MEM_Frame130;
    wire [8:0] MEM_Frame131;
    wire [8:0] MEM_Frame132;
    wire [8:0] MEM_Frame133;
    wire [8:0] MEM_Frame134;
    wire [8:0] MEM_Frame192;
    wire [8:0] MEM_Frame193;
    wire [8:0] MEM_Frame194;
    wire [8:0] MEM_Frame195;
    wire [8:0] MEM_Frame196;
    wire [8:0] MEM_Frame197;
    wire [8:0] MEM_Frame198;
    wire [8:0] MEM_Frame256;
    wire [8:0] MEM_Frame257;
    wire [8:0] MEM_Frame258;
    wire [8:0] MEM_Frame259;
    wire [8:0] MEM_Frame260;
    wire [8:0] MEM_Frame261;
    wire [8:0] MEM_Frame262;
    wire [8:0] MEM_Frame320;
    wire [8:0] MEM_Frame321;
    wire [8:0] MEM_Frame322;
    wire [8:0] MEM_Frame323;
    wire [8:0] MEM_Frame324;
    wire [8:0] MEM_Frame325;
    wire [8:0] MEM_Frame326;
    wire [8:0] MEM_Frame384;
    wire [8:0] MEM_Frame385;
    wire [8:0] MEM_Frame386;
    wire [8:0] MEM_Frame387;
    wire [8:0] MEM_Frame388;
    wire [8:0] MEM_Frame389;
    wire [8:0] MEM_Frame390;
    wire [8:0] MEM_Frame448;
    wire [8:0] MEM_Frame449;
    wire [8:0] MEM_Frame450;
    wire [8:0] MEM_Frame451;
    wire [8:0] MEM_Frame452;
    wire [8:0] MEM_Frame453;
    wire [8:0] MEM_Frame454;
    wire [8:0] MEM_Frame512;
    wire [8:0] MEM_Frame513;
    wire [8:0] MEM_Frame514;
    wire [8:0] MEM_Frame515;
    wire [8:0] MEM_Frame516;
    wire [8:0] MEM_Frame517;
    wire [8:0] MEM_Frame518;
    wire [8:0] MEM_Frame576;
    wire [8:0] MEM_Frame577;
    wire [8:0] MEM_Frame578;
    wire [8:0] MEM_Frame579;
    wire [8:0] MEM_Frame580;
    wire [8:0] MEM_Frame581;
    wire [8:0] MEM_Frame582;
    wire [8:0] MEM_Frame640;
    wire [8:0] MEM_Frame641;
    wire [8:0] MEM_Frame642;
    wire [8:0] MEM_Frame643;
    wire [8:0] MEM_Frame644;
    wire [8:0] MEM_Frame645;
    wire [8:0] MEM_Frame646;
    
    //SAD Wires
    wire SAD1_TriggerBoss;
    wire [15:0] SAD1_Index;
    wire [8:0] SAD1_Window0;
    wire [8:0] SAD1_Window1;
    wire [8:0] SAD1_Window2;
    wire [8:0] SAD1_Window3;
    wire [8:0] SAD1_Window4;
    wire [8:0] SAD1_Window5;
    wire [8:0] SAD1_Window6;
    wire [8:0] SAD1_Window7;
    wire [8:0] SAD1_Window8;
    wire [8:0] SAD1_Window9;
    wire [8:0] SAD1_Window10;
    wire [8:0] SAD1_Window11;
    wire [8:0] SAD1_Window12;
    wire [8:0] SAD1_Window13;
    wire [8:0] SAD1_Window14;
    wire [8:0] SAD1_Window15;
    wire [8:0] SAD1_Frame0;
    wire [8:0] SAD1_Frame1;
    wire [8:0] SAD1_Frame2;
    wire [8:0] SAD1_Frame3;
    wire [8:0] SAD1_Frame4;
    wire [8:0] SAD1_Frame5;
    wire [8:0] SAD1_Frame6;
    wire [8:0] SAD1_Frame64;
    wire [8:0] SAD1_Frame65;
    wire [8:0] SAD1_Frame66;
    wire [8:0] SAD1_Frame67;
    wire [8:0] SAD1_Frame68;
    wire [8:0] SAD1_Frame69;
    wire [8:0] SAD1_Frame70;
    wire [8:0] SAD1_Frame128;
    wire [8:0] SAD1_Frame129;
    wire [8:0] SAD1_Frame130;
    wire [8:0] SAD1_Frame131;
    wire [8:0] SAD1_Frame132;
    wire [8:0] SAD1_Frame133;
    wire [8:0] SAD1_Frame134;
    wire [8:0] SAD1_Frame192;
    wire [8:0] SAD1_Frame193;
    wire [8:0] SAD1_Frame194;
    wire [8:0] SAD1_Frame195;
    wire [8:0] SAD1_Frame196;
    wire [8:0] SAD1_Frame197;
    wire [8:0] SAD1_Frame198;
    wire [8:0] SAD1_Frame256;
    wire [8:0] SAD1_Frame257;
    wire [8:0] SAD1_Frame258;
    wire [8:0] SAD1_Frame259;
    wire [8:0] SAD1_Frame260;
    wire [8:0] SAD1_Frame261;
    wire [8:0] SAD1_Frame262;
    wire [8:0] SAD1_Frame320;
    wire [8:0] SAD1_Frame321;
    wire [8:0] SAD1_Frame322;
    wire [8:0] SAD1_Frame323;
    wire [8:0] SAD1_Frame324;
    wire [8:0] SAD1_Frame325;
    wire [8:0] SAD1_Frame326;
    wire [8:0] SAD1_Frame384;
    wire [8:0] SAD1_Frame385;
    wire [8:0] SAD1_Frame386;
    wire [8:0] SAD1_Frame387;
    wire [8:0] SAD1_Frame388;
    wire [8:0] SAD1_Frame389;
    wire [8:0] SAD1_Frame390;
    wire [8:0] SAD1_Frame448;
    wire [8:0] SAD1_Frame449;
    wire [8:0] SAD1_Frame450;
    wire [8:0] SAD1_Frame451;
    wire [8:0] SAD1_Frame452;
    wire [8:0] SAD1_Frame453;
    wire [8:0] SAD1_Frame454;
    wire [8:0] SAD1_Frame512;
    wire [8:0] SAD1_Frame513;
    wire [8:0] SAD1_Frame514;
    wire [8:0] SAD1_Frame515;
    wire [8:0] SAD1_Frame516;
    wire [8:0] SAD1_Frame517;
    wire [8:0] SAD1_Frame518;
    wire [8:0] SAD1_Frame576;
    wire [8:0] SAD1_Frame577;
    wire [8:0] SAD1_Frame578;
    wire [8:0] SAD1_Frame579;
    wire [8:0] SAD1_Frame580;
    wire [8:0] SAD1_Frame581;
    wire [8:0] SAD1_Frame582;
    wire [8:0] SAD1_Frame640;
    wire [8:0] SAD1_Frame641;
    wire [8:0] SAD1_Frame642;
    wire [8:0] SAD1_Frame643;
    wire [8:0] SAD1_Frame644;
    wire [8:0] SAD1_Frame645;
    wire [8:0] SAD1_Frame646;
    wire SAD7_C1TriggerBoss;
    wire [15:0] SAD7_C1OutputIndex;
    wire [13:0] SAD7_C1OutputValue;
    wire SAD7_C2TriggerBoss;
    wire [15:0] SAD7_C2OutputIndex;
    wire [13:0] SAD7_C2OutputValue;
    wire SAD7_C3TriggerBoss;
    wire [15:0] SAD7_C3OutputIndex;
    wire [13:0] SAD7_C3OutputValue;
    wire SAD7_C4TriggerBoss;
    wire [15:0] SAD7_C4OutputIndex;
    wire [13:0] SAD7_C4OutputValue;
    wire SAD7_C5TriggerBoss;
    wire [15:0] SAD7_C5OutputIndex;
    wire [13:0] SAD7_C5OutputValue;
    wire SAD7_C6TriggerBoss;
    wire [15:0] SAD7_C6OutputIndex;
    wire [13:0] SAD7_C6OutputValue;
    wire SAD7_C7TriggerBoss;
    wire [15:0] SAD7_C7OutputIndex;
    wire [13:0] SAD7_C7OutputValue;
    wire SAD7_C8TriggerBoss;
    wire [15:0] SAD7_C8OutputIndex;
    wire [13:0] SAD7_C8OutputValue;

    //MIN1 Wires
    wire MIN1_TriggerBoss;
    wire [15:0] MIN1_Core1Index;
    wire [13:0] MIN1_Core1Value;
    wire [15:0] MIN1_Core2Index;
    wire [13:0] MIN1_Core2Value;
    wire [15:0] MIN1_Core3Index;
    wire [13:0] MIN1_Core3Value;
    wire [15:0] MIN1_Core4Index;
    wire [13:0] MIN1_Core4Value;
    wire [15:0] MIN1_Core5Index;
    wire [13:0] MIN1_Core5Value;
    wire [15:0] MIN1_Core6Index;
    wire [13:0] MIN1_Core6Value;
    wire [15:0] MIN1_Core7Index;
    wire [13:0] MIN1_Core7Value;
    wire [15:0] MIN1_Core8Index;
    wire [13:0] MIN1_Core8Value;
    wire [15:0] MIN1_MinAIndex;
    wire [13:0] MIN1_MinAValue;
    wire [15:0] MIN1_MinBIndex;
    wire [13:0] MIN1_MinBValue;
    wire [15:0] MIN1_MinCIndex;
    wire [13:0] MIN1_MinCValue;
    wire [15:0] MIN1_MinDIndex;
    wire [13:0] MIN1_MinDValue;

    //MIN2 Wires
    wire MIN2_TriggerBoss;
    wire [15:0] MIN2_MinAIndex;
    wire [13:0] MIN2_MinAValue;
    wire [15:0] MIN2_MinBIndex;
    wire [13:0] MIN2_MinBValue;
    wire [15:0] MIN2_MinCIndex;
    wire [13:0] MIN2_MinCValue;
    wire [15:0] MIN2_MinDIndex;
    wire [13:0] MIN2_MinDValue;
    wire [15:0] MIN2_MinEIndex;
    wire [13:0] MIN2_MinEValue;
    wire [15:0] MIN2_MinFIndex;
    wire [13:0] MIN2_MinFValue;

    //MIN3 Wires
    wire MIN3_TriggerBoss;
    wire [15:0] MIN3_MinEIndex;
    wire [13:0] MIN3_MinEValue;
    wire [15:0] MIN3_MinFIndex;
    wire [13:0] MIN3_MinFValue;
    wire [15:0] MIN3_MinGIndex;
    wire [13:0] MIN3_MinGValue;

    //WB Wires
    wire [15:0] WB_FinalBossIndex;
    wire WB_FinalBossNewLowestMin;
    wire [15:0] WB_XValue;
    wire [15:0] WB_YValue;
    wire WB_RegWrite;

    //IF
    ////////////////////////////////////////////////////////////
    ProgramCounter _ProgramCounter(
        Clk,
        Reset,
        ID_PCStall,
        IF_PCInput,
        IF_PCOutput
    );
    b16Adder _PCAdder(
        16'd1,       
        IF_PCOutput,     
        IF_PCInput
    );
    InstructionMemory _InstructionMemory(
        IF_PCOutput,
        IF_Instruction 
    );
    ////////////////////////////////////////////////////////////
    PipelineReg_IFID _PipelineReg_IFID(
        Clk,
        IF_Instruction,
        ID_Instruction
    );
    
    //ID
    ////////////////////////////////////////////////////////////
    Controller _Controller(
        ID_Instruction[15:13],
        ID_SetZeroes,
        ID_TriggerBoss,
        ID_PCStall
    );
    Register _Register(
        ID_SetZeroes,
        WB_XValue,
        WB_YValue,
        WB_RegWrite,
        v0,
        v1
    );
    ////////////////////////////////////////////////////////////
    PipelineReg_IDMEM _PipelineReg_IDMEM(
        Clk,
        ID_TriggerBoss,
        ID_Instruction[12:0],
        MEM_TriggerBoss,
        MEM_Immediate
    );
    
    //MEM
    ////////////////////////////////////////////////////////////
    DataMemory _DataMemory(
        MEM_Immediate,
        MEM_Index,
        MEM_Window0,
        MEM_Window1,
        MEM_Window2,
        MEM_Window3,
        MEM_Window4,
        MEM_Window5,
        MEM_Window6,
        MEM_Window7,
        MEM_Window8,
        MEM_Window9,
        MEM_Window10,
        MEM_Window11,
        MEM_Window12,
        MEM_Window13,
        MEM_Window14,
        MEM_Window15,
        MEM_Frame0,
        MEM_Frame1,
        MEM_Frame2,
        MEM_Frame3,
        MEM_Frame4,
        MEM_Frame5,
        MEM_Frame6,
        MEM_Frame64,
        MEM_Frame65,
        MEM_Frame66,
        MEM_Frame67,
        MEM_Frame68,
        MEM_Frame69,
        MEM_Frame70,
        MEM_Frame128,
        MEM_Frame129,
        MEM_Frame130,
        MEM_Frame131,
        MEM_Frame132,
        MEM_Frame133,
        MEM_Frame134,
        MEM_Frame192,
        MEM_Frame193,
        MEM_Frame194,
        MEM_Frame195,
        MEM_Frame196,
        MEM_Frame197,
        MEM_Frame198,
        MEM_Frame256,
        MEM_Frame257,
        MEM_Frame258,
        MEM_Frame259,
        MEM_Frame260,
        MEM_Frame261,
        MEM_Frame262,
        MEM_Frame320,
        MEM_Frame321,
        MEM_Frame322,
        MEM_Frame323,
        MEM_Frame324,
        MEM_Frame325,
        MEM_Frame326,
        MEM_Frame384,
        MEM_Frame385,
        MEM_Frame386,
        MEM_Frame387,
        MEM_Frame388,
        MEM_Frame389,
        MEM_Frame390,
        MEM_Frame448,
        MEM_Frame449,
        MEM_Frame450,
        MEM_Frame451,
        MEM_Frame452,
        MEM_Frame453,
        MEM_Frame454,
        MEM_Frame512,
        MEM_Frame513,
        MEM_Frame514,
        MEM_Frame515,
        MEM_Frame516,
        MEM_Frame517,
        MEM_Frame518,
        MEM_Frame576,
        MEM_Frame577,
        MEM_Frame578,
        MEM_Frame579,
        MEM_Frame580,
        MEM_Frame581,
        MEM_Frame582,
        MEM_Frame640,
        MEM_Frame641,
        MEM_Frame642,
        MEM_Frame643,
        MEM_Frame644,
        MEM_Frame645,
        MEM_Frame646
    );
    ////////////////////////////////////////////////////////////
    PipelineReg_MEMSAD1 _PipelineReg_MEMSAD1(
        Clk,
        MEM_TriggerBoss,
        MEM_Index,
        MEM_Window0,
        MEM_Window1,
        MEM_Window2,
        MEM_Window3,
        MEM_Window4,
        MEM_Window5,
        MEM_Window6,
        MEM_Window7,
        MEM_Window8,
        MEM_Window9,
        MEM_Window10,
        MEM_Window11,
        MEM_Window12,
        MEM_Window13,
        MEM_Window14,
        MEM_Window15,
        MEM_Frame0,
        MEM_Frame1,
        MEM_Frame2,
        MEM_Frame3,
        MEM_Frame4,
        MEM_Frame5,
        MEM_Frame6,
        MEM_Frame64,
        MEM_Frame65,
        MEM_Frame66,
        MEM_Frame67,
        MEM_Frame68,
        MEM_Frame69,
        MEM_Frame70,
        MEM_Frame128,
        MEM_Frame129,
        MEM_Frame130,
        MEM_Frame131,
        MEM_Frame132,
        MEM_Frame133,
        MEM_Frame134,
        MEM_Frame192,
        MEM_Frame193,
        MEM_Frame194,
        MEM_Frame195,
        MEM_Frame196,
        MEM_Frame197,
        MEM_Frame198,
        MEM_Frame256,
        MEM_Frame257,
        MEM_Frame258,
        MEM_Frame259,
        MEM_Frame260,
        MEM_Frame261,
        MEM_Frame262,
        MEM_Frame320,
        MEM_Frame321,
        MEM_Frame322,
        MEM_Frame323,
        MEM_Frame324,
        MEM_Frame325,
        MEM_Frame326,
        MEM_Frame384,
        MEM_Frame385,
        MEM_Frame386,
        MEM_Frame387,
        MEM_Frame388,
        MEM_Frame389,
        MEM_Frame390,
        MEM_Frame448,
        MEM_Frame449,
        MEM_Frame450,
        MEM_Frame451,
        MEM_Frame452,
        MEM_Frame453,
        MEM_Frame454,
        MEM_Frame512,
        MEM_Frame513,
        MEM_Frame514,
        MEM_Frame515,
        MEM_Frame516,
        MEM_Frame517,
        MEM_Frame518,
        MEM_Frame576,
        MEM_Frame577,
        MEM_Frame578,
        MEM_Frame579,
        MEM_Frame580,
        MEM_Frame581,
        MEM_Frame582,
        MEM_Frame640,
        MEM_Frame641,
        MEM_Frame642,
        MEM_Frame643,
        MEM_Frame644,
        MEM_Frame645,
        MEM_Frame646,
        SAD1_TriggerBoss,
        SAD1_Index,
        SAD1_Window0,
        SAD1_Window1,
        SAD1_Window2,
        SAD1_Window3,
        SAD1_Window4,
        SAD1_Window5,
        SAD1_Window6,
        SAD1_Window7,
        SAD1_Window8,
        SAD1_Window9,
        SAD1_Window10,
        SAD1_Window11,
        SAD1_Window12,
        SAD1_Window13,
        SAD1_Window14,
        SAD1_Window15,
        SAD1_Frame0,
        SAD1_Frame1,
        SAD1_Frame2,
        SAD1_Frame3,
        SAD1_Frame4,
        SAD1_Frame5,
        SAD1_Frame6,
        SAD1_Frame64,
        SAD1_Frame65,
        SAD1_Frame66,
        SAD1_Frame67,
        SAD1_Frame68,
        SAD1_Frame69,
        SAD1_Frame70,
        SAD1_Frame128,
        SAD1_Frame129,
        SAD1_Frame130,
        SAD1_Frame131,
        SAD1_Frame132,
        SAD1_Frame133,
        SAD1_Frame134,
        SAD1_Frame192,
        SAD1_Frame193,
        SAD1_Frame194,
        SAD1_Frame195,
        SAD1_Frame196,
        SAD1_Frame197,
        SAD1_Frame198,
        SAD1_Frame256,
        SAD1_Frame257,
        SAD1_Frame258,
        SAD1_Frame259,
        SAD1_Frame260,
        SAD1_Frame261,
        SAD1_Frame262,
        SAD1_Frame320,
        SAD1_Frame321,
        SAD1_Frame322,
        SAD1_Frame323,
        SAD1_Frame324,
        SAD1_Frame325,
        SAD1_Frame326,
        SAD1_Frame384,
        SAD1_Frame385,
        SAD1_Frame386,
        SAD1_Frame387,
        SAD1_Frame388,
        SAD1_Frame389,
        SAD1_Frame390,
        SAD1_Frame448,
        SAD1_Frame449,
        SAD1_Frame450,
        SAD1_Frame451,
        SAD1_Frame452,
        SAD1_Frame453,
        SAD1_Frame454,
        SAD1_Frame512,
        SAD1_Frame513,
        SAD1_Frame514,
        SAD1_Frame515,
        SAD1_Frame516,
        SAD1_Frame517,
        SAD1_Frame518,
        SAD1_Frame576,
        SAD1_Frame577,
        SAD1_Frame578,
        SAD1_Frame579,
        SAD1_Frame580,
        SAD1_Frame581,
        SAD1_Frame582,
        SAD1_Frame640,
        SAD1_Frame641,
        SAD1_Frame642,
        SAD1_Frame643,
        SAD1_Frame644,
        SAD1_Frame645,
        SAD1_Frame646
    );

    //SAD
    ////////////////////////////////////////////////////////////
    Core _Core1(
        Clk,
        SAD1_Index,
        SAD1_TriggerBoss,
        SAD1_Window0,
        SAD1_Window1,
        SAD1_Window2,
        SAD1_Window3,
        SAD1_Window4,
        SAD1_Window5,
        SAD1_Window6,
        SAD1_Window7,
        SAD1_Window8,
        SAD1_Window9,
        SAD1_Window10,
        SAD1_Window11,
        SAD1_Window12,
        SAD1_Window13,
        SAD1_Window14,
        SAD1_Window15,
        SAD1_Frame0,
        SAD1_Frame1,
        SAD1_Frame2,
        SAD1_Frame3,
        SAD1_Frame4,
        SAD1_Frame5,
        SAD1_Frame6,
        SAD1_Frame64,
        SAD1_Frame65,
        SAD1_Frame66,
        SAD1_Frame67,
        SAD1_Frame68,
        SAD1_Frame69,
        SAD1_Frame70,
        SAD1_Frame128,
        SAD1_Frame129,
        SAD1_Frame130,
        SAD1_Frame131,
        SAD1_Frame132,
        SAD1_Frame133,
        SAD1_Frame134,
        SAD1_Frame192,
        SAD1_Frame193,
        SAD1_Frame194,
        SAD1_Frame195,
        SAD1_Frame196,
        SAD1_Frame197,
        SAD1_Frame198,
        SAD7_C1TriggerBoss,
        SAD7_C1OutputIndex,
        SAD7_C1OutputValue
    );

    Core _Core2(
        Clk,
        SAD1_Index + 16'd64,
        SAD1_TriggerBoss,
        SAD1_Window0,
        SAD1_Window1,
        SAD1_Window2,
        SAD1_Window3,
        SAD1_Window4,
        SAD1_Window5,
        SAD1_Window6,
        SAD1_Window7,
        SAD1_Window8,
        SAD1_Window9,
        SAD1_Window10,
        SAD1_Window11,
        SAD1_Window12,
        SAD1_Window13,
        SAD1_Window14,
        SAD1_Window15,
        SAD1_Frame64,
        SAD1_Frame65,
        SAD1_Frame66,
        SAD1_Frame67,
        SAD1_Frame68,
        SAD1_Frame69,
        SAD1_Frame70,
        SAD1_Frame128,
        SAD1_Frame129,
        SAD1_Frame130,
        SAD1_Frame131,
        SAD1_Frame132,
        SAD1_Frame133,
        SAD1_Frame134,
        SAD1_Frame192,
        SAD1_Frame193,
        SAD1_Frame194,
        SAD1_Frame195,
        SAD1_Frame196,
        SAD1_Frame197,
        SAD1_Frame198,
        SAD1_Frame256,
        SAD1_Frame257,
        SAD1_Frame258,
        SAD1_Frame259,
        SAD1_Frame260,
        SAD1_Frame261,
        SAD1_Frame262,
        SAD7_C2TriggerBoss,
        SAD7_C2OutputIndex,
        SAD7_C2OutputValue
    );
    
    Core _Core3(
        Clk,
        SAD1_Index + 16'd128,
        SAD1_TriggerBoss,
        SAD1_Window0,
        SAD1_Window1,
        SAD1_Window2,
        SAD1_Window3,
        SAD1_Window4,
        SAD1_Window5,
        SAD1_Window6,
        SAD1_Window7,
        SAD1_Window8,
        SAD1_Window9,
        SAD1_Window10,
        SAD1_Window11,
        SAD1_Window12,
        SAD1_Window13,
        SAD1_Window14,
        SAD1_Window15,
        SAD1_Frame128,
        SAD1_Frame129,
        SAD1_Frame130,
        SAD1_Frame131,
        SAD1_Frame132,
        SAD1_Frame133,
        SAD1_Frame134,
        SAD1_Frame192,
        SAD1_Frame193,
        SAD1_Frame194,
        SAD1_Frame195,
        SAD1_Frame196,
        SAD1_Frame197,
        SAD1_Frame198,
        SAD1_Frame256,
        SAD1_Frame257,
        SAD1_Frame258,
        SAD1_Frame259,
        SAD1_Frame260,
        SAD1_Frame261,
        SAD1_Frame262,
        SAD1_Frame320,
        SAD1_Frame321,
        SAD1_Frame322,
        SAD1_Frame323,
        SAD1_Frame324,
        SAD1_Frame325,
        SAD1_Frame326,
        SAD7_C3TriggerBoss,
        SAD7_C3OutputIndex,
        SAD7_C3OutputValue
    );

    Core _Core4(
        Clk,
        SAD1_Index + 16'd192,
        SAD1_TriggerBoss,
        SAD1_Window0,
        SAD1_Window1,
        SAD1_Window2,
        SAD1_Window3,
        SAD1_Window4,
        SAD1_Window5,
        SAD1_Window6,
        SAD1_Window7,
        SAD1_Window8,
        SAD1_Window9,
        SAD1_Window10,
        SAD1_Window11,
        SAD1_Window12,
        SAD1_Window13,
        SAD1_Window14,
        SAD1_Window15,
        SAD1_Frame192,
        SAD1_Frame193,
        SAD1_Frame194,
        SAD1_Frame195,
        SAD1_Frame196,
        SAD1_Frame197,
        SAD1_Frame198,
        SAD1_Frame256,
        SAD1_Frame257,
        SAD1_Frame258,
        SAD1_Frame259,
        SAD1_Frame260,
        SAD1_Frame261,
        SAD1_Frame262,
        SAD1_Frame320,
        SAD1_Frame321,
        SAD1_Frame322,
        SAD1_Frame323,
        SAD1_Frame324,
        SAD1_Frame325,
        SAD1_Frame326,
        SAD1_Frame384,
        SAD1_Frame385,
        SAD1_Frame386,
        SAD1_Frame387,
        SAD1_Frame388,
        SAD1_Frame389,
        SAD1_Frame390,
        SAD7_C4TriggerBoss,
        SAD7_C4OutputIndex,
        SAD7_C4OutputValue
    );
    
    Core _Core5(
        Clk,
        SAD1_Index + 16'd256,
        SAD1_TriggerBoss,
        SAD1_Window0,
        SAD1_Window1,
        SAD1_Window2,
        SAD1_Window3,
        SAD1_Window4,
        SAD1_Window5,
        SAD1_Window6,
        SAD1_Window7,
        SAD1_Window8,
        SAD1_Window9,
        SAD1_Window10,
        SAD1_Window11,
        SAD1_Window12,
        SAD1_Window13,
        SAD1_Window14,
        SAD1_Window15,
        SAD1_Frame256,
        SAD1_Frame257,
        SAD1_Frame258,
        SAD1_Frame259,
        SAD1_Frame260,
        SAD1_Frame261,
        SAD1_Frame262,
        SAD1_Frame320,
        SAD1_Frame321,
        SAD1_Frame322,
        SAD1_Frame323,
        SAD1_Frame324,
        SAD1_Frame325,
        SAD1_Frame326,
        SAD1_Frame384,
        SAD1_Frame385,
        SAD1_Frame386,
        SAD1_Frame387,
        SAD1_Frame388,
        SAD1_Frame389,
        SAD1_Frame390,
        SAD1_Frame448,
        SAD1_Frame449,
        SAD1_Frame450,
        SAD1_Frame451,
        SAD1_Frame452,
        SAD1_Frame453,
        SAD1_Frame454,
        SAD7_C5TriggerBoss,
        SAD7_C5OutputIndex,
        SAD7_C5OutputValue
    );

    Core _Core6(
        Clk,
        SAD1_Index + 16'd320,
        SAD1_TriggerBoss,
        SAD1_Window0,
        SAD1_Window1,
        SAD1_Window2,
        SAD1_Window3,
        SAD1_Window4,
        SAD1_Window5,
        SAD1_Window6,
        SAD1_Window7,
        SAD1_Window8,
        SAD1_Window9,
        SAD1_Window10,
        SAD1_Window11,
        SAD1_Window12,
        SAD1_Window13,
        SAD1_Window14,
        SAD1_Window15,
        SAD1_Frame320,
        SAD1_Frame321,
        SAD1_Frame322,
        SAD1_Frame323,
        SAD1_Frame324,
        SAD1_Frame325,
        SAD1_Frame326,
        SAD1_Frame384,
        SAD1_Frame385,
        SAD1_Frame386,
        SAD1_Frame387,
        SAD1_Frame388,
        SAD1_Frame389,
        SAD1_Frame390,
        SAD1_Frame448,
        SAD1_Frame449,
        SAD1_Frame450,
        SAD1_Frame451,
        SAD1_Frame452,
        SAD1_Frame453,
        SAD1_Frame454,
        SAD1_Frame512,
        SAD1_Frame513,
        SAD1_Frame514,
        SAD1_Frame515,
        SAD1_Frame516,
        SAD1_Frame517,
        SAD1_Frame518,
        SAD7_C6TriggerBoss,
        SAD7_C6OutputIndex,
        SAD7_C6OutputValue
    );

    Core _Core7(
        Clk,
        SAD1_Index + 16'd384,
        SAD1_TriggerBoss,
        SAD1_Window0,
        SAD1_Window1,
        SAD1_Window2,
        SAD1_Window3,
        SAD1_Window4,
        SAD1_Window5,
        SAD1_Window6,
        SAD1_Window7,
        SAD1_Window8,
        SAD1_Window9,
        SAD1_Window10,
        SAD1_Window11,
        SAD1_Window12,
        SAD1_Window13,
        SAD1_Window14,
        SAD1_Window15,
        SAD1_Frame384,
        SAD1_Frame385,
        SAD1_Frame386,
        SAD1_Frame387,
        SAD1_Frame388,
        SAD1_Frame389,
        SAD1_Frame390,
        SAD1_Frame448,
        SAD1_Frame449,
        SAD1_Frame450,
        SAD1_Frame451,
        SAD1_Frame452,
        SAD1_Frame453,
        SAD1_Frame454,
        SAD1_Frame512,
        SAD1_Frame513,
        SAD1_Frame514,
        SAD1_Frame515,
        SAD1_Frame516,
        SAD1_Frame517,
        SAD1_Frame518,
        SAD1_Frame576,
        SAD1_Frame577,
        SAD1_Frame578,
        SAD1_Frame579,
        SAD1_Frame580,
        SAD1_Frame581,
        SAD1_Frame582,
        SAD7_C7TriggerBoss,
        SAD7_C7OutputIndex,
        SAD7_C7OutputValue
    );

    Core _Core8(
        Clk,
        SAD1_Index + 16'd448,
        SAD1_TriggerBoss,
        SAD1_Window0,
        SAD1_Window1,
        SAD1_Window2,
        SAD1_Window3,
        SAD1_Window4,
        SAD1_Window5,
        SAD1_Window6,
        SAD1_Window7,
        SAD1_Window8,
        SAD1_Window9,
        SAD1_Window10,
        SAD1_Window11,
        SAD1_Window12,
        SAD1_Window13,
        SAD1_Window14,
        SAD1_Window15,
        SAD1_Frame448,
        SAD1_Frame449,
        SAD1_Frame450,
        SAD1_Frame451,
        SAD1_Frame452,
        SAD1_Frame453,
        SAD1_Frame454,
        SAD1_Frame512,
        SAD1_Frame513,
        SAD1_Frame514,
        SAD1_Frame515,
        SAD1_Frame516,
        SAD1_Frame517,
        SAD1_Frame518,
        SAD1_Frame576,
        SAD1_Frame577,
        SAD1_Frame578,
        SAD1_Frame579,
        SAD1_Frame580,
        SAD1_Frame581,
        SAD1_Frame582,
        SAD1_Frame640,
        SAD1_Frame641,
        SAD1_Frame642,
        SAD1_Frame643,
        SAD1_Frame644,
        SAD1_Frame645,
        SAD1_Frame646,
        SAD7_C8TriggerBoss,
        SAD7_C8OutputIndex,
        SAD7_C8OutputValue
    );
    ////////////////////////////////////////////////////////////
    PipelineReg_SAD7MIN1 _PipelineReg_SAD7MIN1(
        Clk,
        SAD7_C1TriggerBoss,
        SAD7_C1OutputIndex,
        SAD7_C1OutputValue,
        SAD7_C2OutputIndex,
        SAD7_C2OutputValue,
        SAD7_C3OutputIndex,
        SAD7_C3OutputValue,
        SAD7_C4OutputIndex,
        SAD7_C4OutputValue,
        SAD7_C5OutputIndex,
        SAD7_C5OutputValue,
        SAD7_C6OutputIndex,
        SAD7_C6OutputValue,
        SAD7_C7OutputIndex,
        SAD7_C7OutputValue,
        SAD7_C8OutputIndex,
        SAD7_C8OutputValue,
        MIN1_TriggerBoss,
        MIN1_Core1Index,
        MIN1_Core1Value,
        MIN1_Core2Index,
        MIN1_Core2Value,
        MIN1_Core3Index,
        MIN1_Core3Value,
        MIN1_Core4Index,
        MIN1_Core4Value,
        MIN1_Core5Index,
        MIN1_Core5Value,
        MIN1_Core6Index,
        MIN1_Core6Value,
        MIN1_Core7Index,
        MIN1_Core7Value,
        MIN1_Core8Index,
        MIN1_Core8Value
    );

    //MIN1
    ////////////////////////////////////////////////////////////
    Minimum _MIN1_MinA(
        MIN1_Core1Index,
        MIN1_Core1Value,
        MIN1_Core2Index,
        MIN1_Core2Value,
        MIN1_MinAIndex,
        MIN1_MinAValue
    );

    Minimum _MIN1_MinB(
        MIN1_Core3Index,
        MIN1_Core3Value,
        MIN1_Core4Index,
        MIN1_Core4Value,
        MIN1_MinBIndex,
        MIN1_MinBValue
    );

    Minimum _MIN1_MinC(
        MIN1_Core5Index,
        MIN1_Core5Value,
        MIN1_Core6Index,
        MIN1_Core6Value,
        MIN1_MinCIndex,
        MIN1_MinCValue
    );

    Minimum _MIN1_MinD(
        MIN1_Core7Index,
        MIN1_Core7Value,
        MIN1_Core8Index,
        MIN1_Core8Value,
        MIN1_MinDIndex,
        MIN1_MinDValue
    );
    ////////////////////////////////////////////////////////////
    PipelineReg_MIN1MIN2 _PipelineReg_MIN1MIN2(
        Clk,
        MIN1_TriggerBoss,
        MIN1_MinAIndex,
        MIN1_MinAValue,
        MIN1_MinBIndex,
        MIN1_MinBValue,
        MIN1_MinCIndex,
        MIN1_MinCValue,
        MIN1_MinDIndex,
        MIN1_MinDValue,
        MIN2_TriggerBoss,
        MIN2_MinAIndex,
        MIN2_MinAValue,
        MIN2_MinBIndex,
        MIN2_MinBValue,
        MIN2_MinCIndex,
        MIN2_MinCValue,
        MIN2_MinDIndex,
        MIN2_MinDValue
    );

    //MIN2
    ////////////////////////////////////////////////////////////
    Minimum _MIN2_MinE(
        MIN2_MinAIndex,
        MIN2_MinAValue,
        MIN2_MinBIndex,
        MIN2_MinBValue,
        MIN2_MinEIndex,
        MIN2_MinEValue
    );

    Minimum _MIN2_MinF(
        MIN2_MinCIndex,
        MIN2_MinCValue,
        MIN2_MinDIndex,
        MIN2_MinDValue,
        MIN2_MinFIndex,
        MIN2_MinFValue
    );
    ////////////////////////////////////////////////////////////
    PipelineReg_MIN2MIN3 _PipelineReg_MIN2MIN3(
        Clk,
        MIN2_TriggerBoss,
        MIN2_MinEIndex,
        MIN2_MinEValue,
        MIN2_MinFIndex,
        MIN2_MinFValue,
        MIN3_TriggerBoss,
        MIN3_MinEIndex,
        MIN3_MinEValue,
        MIN3_MinFIndex,
        MIN3_MinFValue
    );

    //MIN3
    ////////////////////////////////////////////////////////////
    Minimum _MIN3_MinG(
        MIN3_MinEIndex,
        MIN3_MinEValue,
        MIN3_MinFIndex,
        MIN3_MinFValue,
        MIN3_MinGIndex,
        MIN3_MinGValue
    );
    ////////////////////////////////////////////////////////////
    PipelineReg_MIN3WB _PipelineReg_MIN3WB(
        Clk,
        MIN3_TriggerBoss,
        MIN3_MinGIndex,
        MIN3_MinGValue,
        WB_FinalBossIndex,
        WB_FinalBossNewLowestMin
    );

    //WB
    ////////////////////////////////////////////////////////////
    CoordinatesUnit _CoordinatesUnit(
        WB_FinalBossIndex,
        WB_FinalBossNewLowestMin,
        WB_XValue,
        WB_YValue,
        WB_RegWrite
    );
    
    
endmodule 