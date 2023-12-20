`timescale 1ns / 1ps


module ProgramCounter(
    input wire clk,          // Clock input
    input wire reset,        // Reset input
    input wire [31:0] input_address,  // given address
    input Stall_in,
    output reg [31:0] output_address   // output address
); 

    reg [31:0] last_instruction; 

    initial begin
    
        output_address <= 32'b0;
        last_instruction <= 32'b0;
        
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset the program counter to 0
            output_address <= 32'b0;
        end
        else begin
            if (Stall_in == 1) begin
                output_address <= last_instruction;
            end
            else begin
                output_address <= input_address;
                last_instruction <= input_address;
            end
        end
    end

endmodule
