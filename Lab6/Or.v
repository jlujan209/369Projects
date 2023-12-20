`timescale 1ns / 1ps


module Or(Out, inA, inB);
    input inA;
    input inB;
    output reg Out;
    
    always @(inA, inB)begin
        Out <= (inA | inB);
    end

endmodule
