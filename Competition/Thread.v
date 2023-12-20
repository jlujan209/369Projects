`timescale 1ns / 1ps


module Thread(
    input clk,
    input [15:0] Index,
    input TriggerBoss,
    input [8:0] window0,
    input [8:0] window1,
    input [8:0] window2,
    input [8:0] window3,
    input [8:0] window4,
    input [8:0] window5,
    input [8:0] window6,
    input [8:0] window7,
    input [8:0] window8,
    input [8:0] window9,
    input [8:0] window10,
    input [8:0] window11,
    input [8:0] window12,
    input [8:0] window13,
    input [8:0] window14,
    input [8:0] window15,
    input [8:0] frame0,
    input [8:0] frame1,
    input [8:0] frame2,
    input [8:0] frame3,
    input [8:0] frame4,
    input [8:0] frame5,
    input [8:0] frame6,
    input [8:0] frame7,
    input [8:0] frame8,
    input [8:0] frame9,
    input [8:0] frame10,
    input [8:0] frame11,
    input [8:0] frame12,
    input [8:0] frame13,
    input [8:0] frame14,
    input [8:0] frame15,
    output [13:0] outValue,
    output [15:0] outIndex,
    output outTriggerBoss
);

    wire [13:0] SAD1_result1;
    wire [13:0] SAD1_result2;
    wire [13:0] SAD1_result3;
    wire [13:0] SAD1_result4;
    wire [13:0] SAD1_result5;
    wire [13:0] SAD1_result6;
    wire [13:0] SAD1_result7;
    wire [13:0] SAD1_result8;
    wire [13:0] SAD1_result9;
    wire [13:0] SAD1_result10;
    wire [13:0] SAD1_result11;
    wire [13:0] SAD1_result12;
    wire [13:0] SAD1_result13;
    wire [13:0] SAD1_result14;
    wire [13:0] SAD1_result15;
    wire [13:0] SAD1_result16;

    wire [15:0] SAD2_Index;
    wire SAD2_TriggerBoss;
    wire [13:0] SAD2_input1;
    wire [13:0] SAD2_input2;
    wire [13:0] SAD2_input3;
    wire [13:0] SAD2_input4;
    wire [13:0] SAD2_input5;
    wire [13:0] SAD2_input6;
    wire [13:0] SAD2_input7;
    wire [13:0] SAD2_input8;
    wire [13:0] SAD2_input9;
    wire [13:0] SAD2_input10;
    wire [13:0] SAD2_input11;
    wire [13:0] SAD2_input12;
    wire [13:0] SAD2_input13;
    wire [13:0] SAD2_input14;
    wire [13:0] SAD2_input15;
    wire [13:0] SAD2_input16;
    wire [13:0] SAD2_result1;
    wire [13:0] SAD2_result2;
    wire [13:0] SAD2_result3;
    wire [13:0] SAD2_result4;
    wire [13:0] SAD2_result5;
    wire [13:0] SAD2_result6;
    wire [13:0] SAD2_result7;
    wire [13:0] SAD2_result8;

    wire [15:0] SAD3_Index;
    wire SAD3_TriggerBoss;
    wire [13:0] SAD3_input1;
    wire [13:0] SAD3_input2;
    wire [13:0] SAD3_input3;
    wire [13:0] SAD3_input4;
    wire [13:0] SAD3_input5;
    wire [13:0] SAD3_input6;
    wire [13:0] SAD3_input7;
    wire [13:0] SAD3_input8;
    wire [13:0] SAD3_result1;    
    wire [13:0] SAD3_result2;
    wire [13:0] SAD3_result3;
    wire [13:0] SAD3_result4;

    wire [15:0] SAD4_Index;
    wire SAD4_TriggerBoss;
    wire [13:0] SAD4_input1;
    wire [13:0] SAD4_input2;
    wire [13:0] SAD4_input3;
    wire [13:0] SAD4_input4;
    wire [13:0] SAD4_result1;
    wire [13:0] SAD4_result2;

    wire [13:0] SAD5_input1;
    wire [13:0] SAD5_input2;

    SubUnit _SubUnit(
        frame0,
        frame1,
        frame2,
        frame3,
        frame4,
        frame5,
        frame6,
        frame7,
        frame8,
        frame9,
        frame10,
        frame11,
        frame12,
        frame13,
        frame14,
        frame15,
        window0,
        window1,
        window2,
        window3,
        window4,
        window5,
        window6,
        window7,
        window8,
        window9,
        window10,
        window11,
        window12,
        window13,
        window14,
        window15,
        SAD1_result1,
        SAD1_result2,
        SAD1_result3,
        SAD1_result4,
        SAD1_result5,
        SAD1_result6,
        SAD1_result7,
        SAD1_result8,
        SAD1_result9,
        SAD1_result10,
        SAD1_result11,
        SAD1_result12,
        SAD1_result13,
        SAD1_result14,
        SAD1_result15,
        SAD1_result16    
    );

    PipelineReg_SAD1SAD2 _PipelineReg_SAD1SAD2(
        clk,
        Index,
        TriggerBoss,
        SAD1_result1,
        SAD1_result2,
        SAD1_result3,
        SAD1_result4,
        SAD1_result5,
        SAD1_result6,
        SAD1_result7,
        SAD1_result8,
        SAD1_result9,
        SAD1_result10,
        SAD1_result11,
        SAD1_result12,
        SAD1_result13,
        SAD1_result14,
        SAD1_result15,
        SAD1_result16,
        SAD2_Index,
        SAD2_TriggerBoss,
        SAD2_input1,
        SAD2_input2,
        SAD2_input3,
        SAD2_input4,
        SAD2_input5,
        SAD2_input6,
        SAD2_input7,
        SAD2_input8,
        SAD2_input9,
        SAD2_input10,
        SAD2_input11,
        SAD2_input12,
        SAD2_input13,
        SAD2_input14,
        SAD2_input15,
        SAD2_input16
    );

    Adder8 _Adder8(
        SAD2_input1,
        SAD2_input2,
        SAD2_input3,
        SAD2_input4,
        SAD2_input5,
        SAD2_input6,
        SAD2_input7,
        SAD2_input8,
        SAD2_input9,
        SAD2_input10,
        SAD2_input11,
        SAD2_input12,
        SAD2_input13,
        SAD2_input14,
        SAD2_input15,
        SAD2_input16,
        SAD2_result1,
        SAD2_result2,
        SAD2_result3,
        SAD2_result4,
        SAD2_result5,
        SAD2_result6,
        SAD2_result7,
        SAD2_result8
    );

    PipelineReg_SAD2SAD3 _PipelineReg_SAD2SAD3(
        clk,
        SAD2_TriggerBoss,
        SAD2_Index,
        SAD2_result1,
        SAD2_result2,
        SAD2_result3,
        SAD2_result4,
        SAD2_result5,
        SAD2_result6,
        SAD2_result7,
        SAD2_result8,
        SAD3_Index,
        SAD3_TriggerBoss,
        SAD3_input1,
        SAD3_input2,
        SAD3_input3,
        SAD3_input4,
        SAD3_input5,
        SAD3_input6,
        SAD3_input7,
        SAD3_input8
    );

    Adder4 _Adder4(
        SAD3_input1,
        SAD3_input2,
        SAD3_input3,
        SAD3_input4,
        SAD3_input5,
        SAD3_input6,
        SAD3_input7,
        SAD3_input8,
        SAD3_result1,
        SAD3_result2,
        SAD3_result3,
        SAD3_result4
    );

    PipelineReg_SAD3SAD4 _PipelineReg_SAD3SAD4(
        clk,
        SAD3_Index,
        SAD3_TriggerBoss,
        SAD3_result1,
        SAD3_result2,
        SAD3_result3,
        SAD3_result4,
        SAD4_Index,
        SAD4_TriggerBoss,
        SAD4_input1,
        SAD4_input2,
        SAD4_input3,
        SAD4_input4
    );

    Adder2 _Adder2(
        SAD4_input1,
        SAD4_input2,
        SAD4_input3,
        SAD4_input4,
        SAD4_result1,
        SAD4_result2
    );

    PipelineReg_SAD4SAD5 _PipelineReg_SAD4SAD5(
        clk,
        SAD4_Index,
        SAD4_TriggerBoss,
        SAD4_result1,
        SAD4_result2,
        outIndex,
        outTriggerBoss,
        SAD5_input1,
        SAD5_input2
    );

    b9Adder _Adder(
        SAD5_input1,
        SAD5_input2,
        outValue
    );

endmodule
