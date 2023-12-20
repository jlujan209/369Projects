`timescale 1ns / 1ps


module Register(
    input SetZeroes,
    input [15:0] XValue,
    input [15:0] YValue,
    input RegWrite,
    output reg [15:0] v0,
    output reg [15:0] v1
);

    reg [15:0] registers [2:0]; 

    initial begin
        registers[0] <= 15'd0;    //index
        registers[1] <= 15'd0;    //v0
        registers[2] <= 15'd0;    //v1
    end
    
    always @(SetZeroes, XValue, YValue, RegWrite)begin
        if (SetZeroes) begin
            registers[0] <= 15'd0;    //index
            registers[1] <= 15'd0;    //v0
            registers[2] <= 15'd0;    //v1
        end
        if (RegWrite) begin
            registers[1] <= XValue;     //v0
            registers[2] <= YValue;     //v1
        end
        
        v0 <= registers[1];
        v1 <= registers[2];
    end
    
endmodule 