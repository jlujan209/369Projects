`timescale 1ns / 1ps

module FinalBoss(
    input [15:0] inputIndex,        
    input [8:0] inputValue,    
    input signal,         
    output reg RegWrite,     
    output reg [15:0] outputIndex     
); 
    
    reg [8:0] currentMinimum;
    
    initial begin
    
        currentMinimum <= 9'b011111111;
    
    end
    
    always @(inputIndex, inputValue, signal) begin
        if (signal && (inputValue <= currentMinimum)) begin
        
            outputIndex <= inputIndex;
            currentMinimum <= inputValue;
            RegWrite <= 1;
        
        end
        else begin
        
            outputIndex <= 0;
            currentMinimum <= currentMinimum;
            RegWrite <= 0;
        
        end
    end
    
    
endmodule