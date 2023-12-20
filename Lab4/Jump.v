`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
////////////////////////////////////////////////////////////////////////////////

module Jump(Immediate, PCOut, Address); 

    input [25:0] Immediate; // 32-Bit immediate value
    input [31:0] PCOut;     // 32-Bit PC output
    output reg [31:0] Address;  // 32-Bit address output

    always @(Immediate, PCOut) begin
        Address <= {PCOut[31:28], Immediate, 2'b00};
    end

endmodule