`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - data_memory.v
// Description - 32-Bit wide data memory.
//
// INPUTS:-
// Address: 32-Bit address input port.
// WriteData: 32-Bit input port.
// Clk: 1-Bit Input clock signal.
// MemWrite: 1-Bit control signal for memory write.
// MemRead: 1-Bit control signal for memory read.
//
// OUTPUTS:-
// ReadData: 32-Bit registered output port.
//
// FUNCTIONALITY:-
// Design the above memory similar to the 'RegisterFile' model in the previous 
// assignment.  Create a 1K memory, for which we need 10 bits.  In order to 
// implement byte addressing, we will use bits Address[11:2] to index the 
// memory location. The 'WriteData' value is written into the address 
// corresponding to Address[11:2] in the positive clock edge if 'MemWrite' 
// signal is 1. 'ReadData' is the value of memory location Address[11:2] if 
// 'MemRead' is 1, otherwise, it is 0x00000000. The reading of memory is not 
// clocked.
//
// you need to declare a 2d array. in this case we need an array of 1024 (1K)  
// 32-bit elements for the memory.   
// for example,  to declare an array of 256 32-bit elements, declaration is: reg[31:0] memory[0:255]
// if i continue with the same declaration, we need 8 bits to index to one of 256 elements. 
// however , address port for the data memory is 32 bits. from those 32 bits, least significant 2 
// bits help us index to one of the 4 bytes within a single word. therefore we only need bits [9-2] 
// of the "Address" input to index any of the 256 words. 
////////////////////////////////////////////////////////////////////////////////

module DataMemory(Address, WriteData, Clk, MemWrite, MemRead, ReadData); 

    input [31:0] Address; 	// Input Address 
    input [31:0] WriteData; // Data that needs to be written into the address 
    input Clk;
    input [1:0] MemWrite; 		// Control signal for memory write 
    input [1:0] MemRead; 			// Control signal for memory read 

    output reg[31:0] ReadData; // Contents of memory location at Address

    reg [31:0] BigFatMemory[1023:0];
    integer i;
	
	initial begin
	   $readmemh("data_memory.mem", BigFatMemory);
	end
	
	always @(posedge Clk) begin
        if (MemWrite == 1) begin // sw
            BigFatMemory[Address[9:2]] <= WriteData;
        end 
        else if (MemWrite == 2) begin // sb
            if (Address[1:0] == 2'b00) begin
                BigFatMemory[Address[9:2]][7:0] <= WriteData[7:0];
            end 
            else if (Address[1:0] == 2'b01) begin
                BigFatMemory[Address[9:2]][15:8] <= WriteData[7:0];
            end 
            else if (Address[1:0] == 2'b10) begin
                BigFatMemory[Address[9:2]][23:16] <= WriteData[7:0];
            end 
            else if (Address[1:0] == 2'b11) begin
                BigFatMemory[Address[9:2]][31:24] <= WriteData[7:0];
            end
        end
        else if (MemWrite == 3) begin // sh
            if (Address[1:0] == 2'b00) begin
                BigFatMemory[Address[9:2]][15:0] <= WriteData[15:0];
            end 
            else if (Address[1:0] == 2'b10) begin
                BigFatMemory[Address[9:2]][31:16] <= WriteData[15:0];
            end
        end
    end

always @(MemRead)begin
    if (MemRead == 1) begin
        ReadData <= BigFatMemory[Address[9:2]];
    end 
    else if(MemRead == 2)begin
        if (Address[1:0] == 2'b00) begin    //lb
                ReadData <= {24'd0,BigFatMemory[Address[9:2]][7:0]};
            end 
            else if (Address[1:0] == 2'b01) begin
                ReadData <= {24'd0, BigFatMemory[Address[9:2]][15:8]};
            end 
            else if (Address[1:0] == 2'b10) begin
                ReadData <= {24'd0, BigFatMemory[Address[9:2]][23:16]};
            end 
            else if (Address[1:0] == 2'b11) begin
                ReadData <= {24'd0, BigFatMemory[Address[9:2]][31:24]};
            end
    end
    else if (MemRead == 3) begin // lh
            if (Address[1:0] == 2'b00) begin
                ReadData <= {16'd0,BigFatMemory[Address[9:2]][15:0]};
            end 
            else if (Address[1:0] == 2'b10) begin
                ReadData <= {16'd0,BigFatMemory[Address[9:2]][31:16]};
            end
        end
    else begin
        ReadData <= 0;
    end
end

	
endmodule
