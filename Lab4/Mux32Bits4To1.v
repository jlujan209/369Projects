`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module Mux32Bits4To1(Src ,A, B, C, D, Out);
    input [31:0] A;
    input [31:0] B;
    input [31:0] C;
    input [31:0] D;
    input [1:0] Src;
    output reg [31:0] Out;
    
    always @(Src, A, B, C, D)begin
        if(Src == 0)begin
            Out <= A;
        end
        else if(Src == 1)begin
            Out <= B;
        end
        else if(Src == 2)begin
            Out <= C;
        end
        else if(Src == 3)begin
            Out <= D;
        end
    end
    
    
    initial begin
        Out <= 32'd4;
    end

endmodule
