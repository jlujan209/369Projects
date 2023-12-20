`timescale 1ns / 1ps

module Subtractor(
    input [8:0] inA,
    input [8:0] inB,
    output reg [13:0] out
);
    
    always @(inA, inB)begin
        if (inA >= inB)
            out <= { 4'b0000, inA - inB};
        else
            out <= { 4'b0000, inB - inA};
    end
  
endmodule