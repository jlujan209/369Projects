`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2023 04:21:07 PM
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top(
    Clk, 
    Reset,
    out7,
    en_out
    );
    
    input Clk, Reset;
    output [7:0]en_out;
    output [6:0]out7;
    wire ClkOut;
    wire [31:0]Instruction, PCResult;
    
    ClkDiv _ClkDiv(Clk, Reset, ClkOut);
    InstructionFetchUnit _IFU(Instruction, PCResult, Reset , ClkOut);
    Two4DigitDisplay _Two4DigitDisplay(Clk, Instruction[15:0], PCResult[15:0], out7, en_out);
    
endmodule
