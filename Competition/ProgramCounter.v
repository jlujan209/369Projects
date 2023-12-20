`timescale 1ns / 1ps


module ProgramCounter(
    input wire clk,         // Clock input
    input wire reset,       // Reset input
    input wire stall,       // stall signal for infinite loop
    input wire [15:0] i,    // given address
    output reg [15:0] o     // output address
); 


    
    initial begin
        o <= 16'b0;

    end

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            o <= 16'b0;
        end
        else begin
            if (stall == 1) begin
                o <= o;
            end
            else begin
                o <= i;
            end
        end
    end

endmodule