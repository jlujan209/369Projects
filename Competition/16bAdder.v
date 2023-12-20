`timescale 1ns / 1ps

module b16Adder(
    input [15:0] inA,        
    input [15:0] inB,       
    output reg [15:0] o     
); 
    
    initial begin
        o <= 16'b0;
    end

    always @(*) begin
        o <= inA + inB;
    end
    
    
endmodule