`timescale 1ns / 1ps

module ID_EXRegister (
    input clk,
    input reset,
    input [1:0] PCSrc_in,
    input MemToReg_in,
    input [1:0] MemRead_in,
    input [1:0] MemWrite_in,
    input Branch_in,
    input ALUSrc_in,
    input [3:0] ALUOp_in,
    input [1:0]RegWrite_in,
    input [31:0]ReadData1_in,
    input [31:0]ReadData2_in,
    input [31:0]ExtendedImmediate_in,
    input [25:0]Address_in,
    input [31:0]PCOutput_in,
    input Jal_in,
    input [1:0]RegDst_in,
    input [31:0]PCAdderOut_in,
    input Shift_in,

    output reg [1:0] PCSrc_out,
    output reg MemToReg_out,
    output reg [1:0] MemRead_out,
    output reg [1:0] MemWrite_out,
    output reg Branch_out,
    output reg ALUSrc_out,
    output reg [3:0] ALUOp_out,
    output reg [1:0]RegWrite_out,
    output reg [31:0]ReadData1_out,
    output reg [31:0]ReadData2_out,
    output reg [31:0]ExtendedImmediate_out,
    output reg [25:0]Address_out,
    output reg [31:0]PCOutput_out,
    output reg Jal_out,
    output reg [1:0]RegDst_out,
    output reg [31:0]PCAdderOut_out,
    output reg Shift_out
);

always @(posedge clk) begin
    if (reset) begin
        PCSrc_out <= 0;
        MemToReg_out <= 0;
        MemRead_out <= 0;
        MemWrite_out <= 0;
        Branch_out <= 0;
        ALUSrc_out <= 0;
        ALUOp_out <= 0;
        RegWrite_out <= 0;
        ReadData1_out <= 0;
        ReadData2_out <= 0;
        ExtendedImmediate_out <= 0;
        Address_out <= 0;
        PCOutput_out <= 0;
        Jal_out <= 0;
        RegDst_out <= 0;
        PCAdderOut_out <= 0;
        Shift_out <= 0;
    end else begin
        PCSrc_out <= PCSrc_in;
        MemToReg_out <= MemToReg_in;
        MemRead_out <= MemRead_in;
        MemWrite_out <= MemWrite_in;
        Branch_out <= Branch_in;
        ALUSrc_out <= ALUSrc_in;
        ALUOp_out <= ALUOp_in;
        RegWrite_out <= RegWrite_in;
        ReadData1_out <= ReadData1_in;
        ReadData2_out <= ReadData2_in;
        ExtendedImmediate_out <= ExtendedImmediate_in;
        Address_out <= Address_in;
        PCOutput_out <= PCOutput_in;
        Jal_out <= Jal_in;
        RegDst_out <= RegDst_in;
        PCAdderOut_out <= PCAdderOut_in;
        Shift_out <= Shift_in;
    end
end

endmodule