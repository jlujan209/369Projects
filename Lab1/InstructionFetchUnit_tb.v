`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 
// Module - InstructionMemory_tb.v
// Description - Test the 'InstructionMemory_tb.v' module.
////////////////////////////////////////////////////////////////////////////////

module InstructionFetchUnit_tb(); 

    wire [31:0] Instruction, PCResult;
    
    reg Clk, Rst;
    

	InstructionFetchUnit u0(
        .Instruction(Instruction),
        .PCResult(PCResult),
        .Reset(Rst),
        .Clk(Clk)
	);
	
	initial begin
	   Clk <= 1'b0;
	   forever #10 Clk <= ~Clk;
	end

	initial begin
	
        Rst = 1;
        #20
        
        Rst = 0;
        #200
        
        Rst = 1;
        #100
        
        Rst = 0;
	
	end

endmodule

