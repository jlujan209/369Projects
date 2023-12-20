`timescale 1ns / 1ps

module PipelineReg_IDMEM(
    input clk,
    input ID_TriggerBoss,
    input [12:0] ID_Immediate,
    output reg MEM_TriggerBoss,
    output reg [15:0] MEM_Immediate
);

always @(posedge clk) begin
    MEM_TriggerBoss <= ID_TriggerBoss;
    MEM_Immediate <= { 2'b00, ID_Immediate};
end

endmodule