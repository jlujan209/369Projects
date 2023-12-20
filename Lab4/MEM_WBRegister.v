`timescale 1ns / 1ps

module MEM_WBRegister (
    input clk,
    input reset,
    input MemToReg_in,
    input [1:0] RegWrite_in,
    input Jal_in,
    input [4:0]RegWriteAddress_in,
    input [31:0]ALUResult_in,
    input [31:0]PCAdderOut_in,
    input [31:0]MemReadData_in,

    output reg MemToReg_out,
    output reg [1:0] RegWrite_out,
    output reg Jal_out,
    output reg [4:0]RegWriteAddress_out,
    output reg [31:0]ALUResult_out,
    output reg [31:0]PCAdderOut_out,
    output reg [31:0]MemReadData_out
);


always @(posedge clk) begin
    if (reset) begin
        MemToReg_out <= 0;
        RegWrite_out <= 0;
        Jal_out <= 0;
        RegWriteAddress_out <= 0;
        ALUResult_out <= 0;
        PCAdderOut_out <= 0;
        MemReadData_out <= 0;
    end
    else begin
        MemToReg_out <= MemToReg_in;
        RegWrite_out <= RegWrite_in;
        Jal_out <= Jal_in;
        RegWriteAddress_out <= RegWriteAddress_in;
        ALUResult_out <= ALUResult_in;
        PCAdderOut_out <= PCAdderOut_in;
        MemReadData_out <= MemReadData_in;
    end
end

endmodule