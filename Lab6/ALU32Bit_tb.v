`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - ALU32Bit_tb.v
// Description - Test the 'ALU32Bit.v' module.
////////////////////////////////////////////////////////////////////////////////

module ALU32Bit_tb(); 

	reg [3:0] ALUControl;   // control bits for ALU operation
	reg [31:0] A, B;	        // inputs

	wire [31:0] ALUResult;	// answer
	wire Zero;	        // Zero=1 if ALUResult == 0

    ALU32Bit u0(
        .ALUControl(ALUControl), 
        .A(A), 
        .B(B), 
        .ALUResult(ALUResult), 
        .Zero(Zero)
    );

	initial begin
	ALUControl <= 0;   //add
	A <= 3;
	B <= 6;
	#10;
	A <= 4;
	B <= 24;
	#10;
	ALUControl <= 1;   //subtract
	#10;
	A <= 8;
	B <= 8;
	#10;
	ALUControl <= 2;   //mult
	#10;
	A <= 9;
	B <= 62;
	#10
	ALUControl <= 3;   //and
	#10;
	A <= 2;
	B <= 2;
	#10
	ALUControl <= 4;   //or
	#10;
	A <= 6;
	B <= 1;
	#10;
	ALUControl <= 5;   //nor
	#10;
	A <= 2;
	B <= 1;
	#10;
	ALUControl <= 6;   //xor
	#10;
	A <= 7;
	B <= 7;
	#10;
	ALUControl <= 7;   //sll
	#10;
	A <= 15;
	B <= 3;
	#10;
	ALUControl <= 8;   //srl
	#10;
	A <= 17;
	B <= 2;
	#10;
	ALUControl <= 9;   //slt
	#10;
	A <= 5;
	B <= 10;
	#10;
	ALUControl <= 10;  //bne
	#10;
	A <= 7;
	B <= 7;
	#10;
	ALUControl <= 11;  //gteq0
	#10;
	A <= -4;
	B <= 0;
	#10;
	ALUControl <= 12;  //gt0
	#10;
	A <= 3;
	B <= 2;
	#10;
	ALUControl <= 13;  //lteq0
	#10;
	A <= 0;
	B <= 6;
	#10;
	ALUControl <= 14;  //lt0
	#10;
	A <= -2;
	B <= 1;
    
	
	end

endmodule

