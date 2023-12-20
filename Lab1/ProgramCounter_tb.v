`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 1
// Module - ProgramCounter_tb.v
// Description - Test the 'ProgramCounter.v' module.
////////////////////////////////////////////////////////////////////////////////

module ProgramCounter_tb(); 

	reg [31:0] Address;
	reg Reset, Clk;

	wire [31:0] PCResult;

    ProgramCounter u0(
        .Address(Address), 
        .PCResult(PCResult), 
        .Reset(Reset), 
        .Clk(Clk)
    );

	initial begin
		Clk <= 1'b0;
		forever #10 Clk <= ~Clk;
	end

	initial begin
	
        Reset = 1'b1;
        #20;
                     
        Reset = 1'b0;
        #20;
            
        Address = 32'd0;
        #20;
        
        Address = 32'd4;
        #20;
        
        Address = 32'd8;
        #20;
        
        Reset = 1'b1;
        #20;
        
        Reset = 1'b0;
        #20;
        
        Address = 32'd12;
        #20;
        
        Address = 32'd16;
        #20;
        
        Address = 32'd20;
        #20;
	
	end

endmodule

