`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - ALU32Bit.v
// Description - 32-Bit wide arithmetic logic unit (ALU).
//
// INPUTS:-
// ALUControl: N-Bit input control bits to select an ALU operation.
// A: 32-Bit input port A.
// B: 32-Bit input port B.
//
// OUTPUTS:-
// ALUResult: 32-Bit ALU result output.
// ZERO: 1-Bit output flag. 
//
// FUNCTIONALITY:-
// Design a 32-Bit ALU, so that it supports all arithmetic operations 
// needed by the MIPS instructions given in Labs5-8.docx document. 
//   The 'ALUResult' will output the corresponding result of the operation 
//   based on the 32-Bit inputs, 'A', and 'B'. 
//   The 'Zero' flag is high when 'ALUResult' is '0'. 
//   The 'ALUControl' signal should determine the function of the ALU 
//   You need to determine the bitwidth of the ALUControl signal based on the number of 
//   operations needed to support. 
////////////////////////////////////////////////////////////////////////////////

module ALU32Bit(ALUControl, A, B, ALUResult, Zero);

	input [3:0] ALUControl; // control bits for ALU operation
                                // you need to adjust the bitwidth as needed
	input [31:0] A, B;	    // inputs

	output reg [31:0] ALUResult;	// answer
	output reg Zero;	    // Zero=1 if ALUResult == 0

    always @(A,B, ALUControl)begin
        //add
        if(ALUControl == 0)begin
            ALUResult <= A + B;
        end
        //sub
        else if(ALUControl == 1)begin
            ALUResult <= A - B;
        end
        //Mult
        else if(ALUControl == 2)begin
            ALUResult <= A * B;
        end
        //and
        else if(ALUControl == 3)begin
            ALUResult <= A & B;
        end
        //or
        else if(ALUControl == 4)begin
            ALUResult <= A | B;
        end
        //Nor
        else if(ALUControl == 5)begin
            ALUResult <= ~(A | B);
        end
        //Xor
        else if(ALUControl == 6)begin
            ALUResult <= A ^ B;
        end
        //Sll
        else if(ALUControl == 7)begin
            ALUResult <= A << B[10:6];
        end
        //srl
        else if(ALUControl == 8)begin
            ALUResult <= A >> B[10:6];
        end
        //slt
        else if(ALUControl == 9)begin
            ALUResult <= $signed(A) < $signed(B);
        end
        //Bne//////////////////////////////////////////////////////////////////////////
        else if(ALUControl == 10)begin
            ALUResult <= (A == B);
        end
        //Gteq0
        else if(ALUControl == 11)begin
            ALUResult <= ($signed(A) < 0);
        end
        //Gt0
        else if(ALUControl == 12)begin
            ALUResult <= ($signed(A) <= 0);
        end
        //Lteq0
        else if(ALUControl == 13)begin
            ALUResult <= ($signed(A) > 0);
        end
        //Lt0
        else if(ALUControl == 14)begin
            ALUResult <= ($signed(A) >= 0);
        end
    
    end
    
    
    always @(ALUResult, A, B)begin
        if(ALUResult == 0)begin
            Zero <= 1;
        end
        else begin
            Zero <= 0;
        end    
    end

endmodule

