`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 1 
// Module - PCAdder_tb.v
// Description - Test the 'PCAdder.v' module.
////////////////////////////////////////////////////////////////////////////////

module PCAdder_tb();

    reg [31:0] PCResult;

    wire [31:0] PCAddResult;

    PCAdder u0(
        .PCResult(PCResult), 
        .PCAddResult(PCAddResult)
    );

	initial begin
	
        PCResult = 32'b0;
        #10 PCResult = 32'd4;
        #10 PCResult = 32'd8;
        #10 PCResult = 32'd12;
        #10 PCResult = 32'd16;
        #10 PCResult = 32'd20;
        #10 PCResult = 32'd24;
	
	end

endmodule

