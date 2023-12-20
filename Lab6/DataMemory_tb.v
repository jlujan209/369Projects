`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - DataMemory_tb.v
// Description - Test the 'DataMemory.v' module.
////////////////////////////////////////////////////////////////////////////////

module DataMemory_tb(); 

    reg     [31:0]  Address;
    reg     [31:0]  WriteData;
    reg             Clk;
    reg             MemWrite;
    reg             MemRead;

    wire [31:0] ReadData;

    DataMemory u0(
        .Address(Address), 
        .WriteData(WriteData), 
        .Clk(Clk), 
        .MemWrite(MemWrite), 
        .MemRead(MemRead), 
        .ReadData(ReadData)
    ); 

	initial begin
		Clk <= 1'b0;
		forever #10 Clk <= ~Clk;
	end

	initial begin
	
    /* Please fill in the implementation here... */
        MemRead <= 0;
        MemWrite <= 0;
        WriteData <= 0;
        Address <= 0;
        #5;
        WriteData <= 250;
        Address <= 5 << 2;
        #5;
        MemRead <= 1;  
        MemWrite <= 1;
        #5;
        Address <= 6 << 2;
        MemWrite <= 0;
        #5;
        Address <= 7 << 2;
        #5;
        Address <= 5 << 2;
        
	
	end

endmodule

