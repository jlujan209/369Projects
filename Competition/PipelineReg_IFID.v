`timescale 1ns / 1ps

module PipelineReg_IFID(
    input clk,
    input [15:0] IF_Instruction,
    output reg [15:0] ID_Instruction
);

always @(posedge clk) begin
    ID_Instruction <= IF_Instruction;
end

endmodule