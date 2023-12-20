`timescale 1ns / 1ps

module IF_IDRegister (
    input clk,
    input reset,
    input [31:0] instruction_in,
    input [31:0] PCOutput_in,
    input [31:0] PCAdderOut_in,
    input Stall_in,
    input Flush_in,
    output reg [31:0] instruction_out,
    output reg [31:0] PCOutput_out,
    output reg [31:0] PCAdderOut_out
);

always @(posedge clk) begin
    if (reset || Flush_in) begin        
        instruction_out <= 0;
        PCOutput_out <= 0;
        PCAdderOut_out <= 0;
    end 
    else begin
        if (Stall_in == 0) begin
            instruction_out <= instruction_in;
            PCOutput_out <= PCOutput_in;
            PCAdderOut_out <= PCAdderOut_in;
        end
    end
end

endmodule
