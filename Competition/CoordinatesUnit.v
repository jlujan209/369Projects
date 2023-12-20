`timescale 1ns / 1ps

module CoordinatesUnit(
    input [15:0] index,
    input signal,
    output reg [15:0] X,
    output reg [15:0] Y,
    output reg RegWrite
);
    
    always @(*)begin
        if (signal == 1) begin
            X <= index & 6'b111111; //modulus
            Y <= index >> 6;        //integer division
            RegWrite <= 1;
        end
        else begin
            X <= 0;
            Y <= 0;
            RegWrite <= 0;
        end
    end
    
endmodule