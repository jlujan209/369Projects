`timescale 1ns / 1ps

module EX_MEMRegister (
    input clk,
    input reset,
    input MemToReg_in,
    input [1:0] MemRead_in,
    input [1:0] MemWrite_in,
    input [1:0]RegWrite_in,
    input Jal_in,
    input [4:0]RegWriteAddress_in,
    input [31:0]ALUResult_in,
    input Zero_in,
    input [31:0]ReadData2_in,
    input [31:0]PCAdderOut_in,
    input [31:0]JumpOutput_in,
    input [31:0]BranchAdderOut_in,
    input [1:0]PCSrc_in,
    input [31:0]ReadData1_in,
    input Branch_in,

    output reg MemToReg_out,
    output reg [1:0] MemRead_out,
    output reg [1:0] MemWrite_out,
    output reg [1:0] RegWrite_out,
    output reg Jal_out,
    output reg [4:0]RegWriteAddress_out,
    output reg [31:0]ALUResult_out,
    output reg Zero_out,
    output reg [31:0]ReadData2_out,
    output reg [31:0]PCAdderOut_out,
    output reg [31:0]JumpOutput_out,
    output reg [31:0]BranchAdderOut_out,
    output reg [1:0]PCSrc_out,
    output reg [31:0]ReadData1_out,
    output reg Branch_out
);


always @(posedge clk) begin
    if (reset) begin
        MemToReg_out <= 0;
        MemRead_out <= 0;
        MemWrite_out <= 0;
        RegWrite_out <= 0;
        Jal_out <= 0;
        RegWriteAddress_out <= 0;
        ALUResult_out <= 0;
        Zero_out <= 0;
        ReadData2_out <= 0;
        PCAdderOut_out <= 0;
        JumpOutput_out <= 0;
        BranchAdderOut_out <= 0;
        PCSrc_out <= 0;
        ReadData1_out <= 0;
        Branch_out <= 0;
    end
    else begin
        MemToReg_out <= MemToReg_in;
        MemRead_out <= MemRead_in;
        MemWrite_out <= MemWrite_in;
        RegWrite_out <= RegWrite_in;
        Jal_out <= Jal_in;
        RegWriteAddress_out <= RegWriteAddress_in;
        ALUResult_out <= ALUResult_in;
        Zero_out <= Zero_in;
        ReadData2_out <= ReadData2_in;
        PCAdderOut_out <= PCAdderOut_in;
        JumpOutput_out <= JumpOutput_in;
        BranchAdderOut_out <= BranchAdderOut_in;
        PCSrc_out <= PCSrc_in;
        ReadData1_out <= ReadData1_in;
        Branch_out <= Branch_in;
    end
end

endmodule