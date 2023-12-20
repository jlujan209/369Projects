`timescale 1ns / 1ps

module b9Adder(
    input [13:0] inA,        
    input [13:0] inB,       
    output reg [13:0] o     
); 

    always @(*) begin
        o <= inA + inB;
    end
    
    
endmodule