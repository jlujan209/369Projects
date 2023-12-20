`timescale 1ns / 1ps

module Minimum(
    input [15:0] indexA,        
    input [13:0] valueA,    
    input [15:0] indexB,        
    input [13:0] valueB, 
    output reg [15:0] oIndex,     
    output reg [13:0] oValue     
); 
    
    always @(*) begin
        if (valueA < valueB) begin
            oIndex <= indexA;
            oValue <= valueA;
        end
        else begin
            oIndex <= indexB;
            oValue <= valueB;
        end
    end
    
    
endmodule