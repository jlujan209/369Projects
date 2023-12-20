`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
//
//
// Student(s) Name and Last Name: FILL IN YOUR INFO HERE!
//
//
// Module - register_file.v
// Description - Implements a register file with 32 32-Bit wide registers.
//
// 
// INPUTS:-
// ReadRegister1: 5-Bit address to select a register to be read through 32-Bit 
//                output port 'ReadRegister1'.
// ReadRegister2: 5-Bit address to select a register to be read through 32-Bit 
//                output port 'ReadRegister2'.
// WriteRegister: 5-Bit address to select a register to be written through 32-Bit
//                input port 'WriteRegister'.
// WriteData: 32-Bit write input port.
// RegWrite: 1-Bit control input signal.
//
// OUTPUTS:-
// ReadData1: 32-Bit registered output. 
// ReadData2: 32-Bit registered output. 
//
// FUNCTIONALITY:-
// 'ReadRegister1' and 'ReadRegister2' are two 5-bit addresses to read two 
// registers simultaneously. The two 32-bit data sets are available on ports 
// 'ReadData1' and 'ReadData2', respectively. 'ReadData1' and 'ReadData2' are 
// registered outputs (output of register file is written into these registers 
// at the falling edge of the clock). You can view it as if outputs of registers
// specified by ReadRegister1 and ReadRegister2 are written into output 
// registers ReadData1 and ReadData2 at the falling edge of the clock. 
//
// 'RegWrite' signal is high during the rising edge of the clock if the input 
// data is to be written into the register file. The contents of the register 
// specified by address 'WriteRegister' in the register file are modified at the 
// rising edge of the clock if 'RegWrite' signal is high. The D-flip flops in 
// the register file are positive-edge (rising-edge) triggered. (You have to use 
// this information to generate the write-clock properly.) 
//
// NOTE:-
// We will design the register file such that the contents of registers do not 
// change for a pre-specified time before the falling edge of the clock arrives 
// to allow for data multiplexing and setup time.
////////////////////////////////////////////////////////////////////////////////

module RegisterFile(Reset, ReadRegister1, ReadRegister2, WriteRegister, WriteData, RegWrite, Clk, ReadData1, ReadData2, V0, V1);
    input Reset;
    input[4:0] ReadRegister1;
    input[4:0] ReadRegister2;
    input[4:0] WriteRegister;
    input[31:0] WriteData;
    input [1:0] RegWrite;
    output reg [31:0] ReadData1;
    output reg [31:0] ReadData2;
    output reg [31:0] V0, V1;
    input Clk;
	/* Please fill in the implementation here... */
	reg [31:0] registers [31:0];
	
	initial begin
        registers[0]  <= 32'd0;
        registers[1]  <= 32'd0;
        registers[2]  <= 32'd0;
        registers[3]  <= 32'd0;
        registers[4]  <= 32'd0;
        registers[5]  <= 32'd0;
        registers[6]  <= 32'd0;
        registers[7]  <= 32'd0;
        registers[8]  <= 32'd0;
        registers[9]  <= 32'd0;
        registers[10] <= 32'd0;
        registers[11] <= 32'd0;
        registers[12] <= 32'd0;
        registers[13] <= 32'd0;
        registers[14] <= 32'd0;
        registers[15] <= 32'd0;
        registers[16] <= 32'd0;
        registers[17] <= 32'd0;
        registers[18] <= 32'd0;
        registers[19] <= 32'd0;
        registers[20] <= 32'd0;
        registers[21] <= 32'd0;
        registers[22] <= 32'd0;
        registers[23] <= 32'd0;
        registers[24] <= 32'd0;
        registers[25] <= 32'd0;
        registers[26] <= 32'd0;
        registers[27] <= 32'd0;
        registers[28] <= 32'd0;
        registers[29] <= 32'd8191;
        registers[30] <= 32'd0;
        registers[31] <= 32'd0;
	end
	
	always @(posedge Clk)begin
	   if(RegWrite == 1)begin  //Regular Write 32'b
	       registers[WriteRegister] <= WriteData;
	   end
	   else if(RegWrite == 2)begin //lb
	       if(WriteData[7])begin   
	           registers[WriteRegister] <= {24'b111111111111111111111111, WriteData[7:0]};
	       end
	       else begin
	           registers[WriteRegister] <= {24'b0, WriteData[7:0]};
	       end
	   end
	   else if(RegWrite == 3)begin //lh
	       if(WriteData[15])begin   
	           registers[WriteRegister] <= {16'b1111111111111111, WriteData[15:0]};
	       end
	       else begin
	           registers[WriteRegister] <= {16'b0, WriteData[15:0]};
	       end
	   end
       
	end
	
	always @(negedge Clk) begin
	   ReadData1 = registers[ReadRegister1];
	   ReadData2 = registers[ReadRegister2];
	   V0 <= registers[2];
	   V1 <= registers[3];
	end
	
//	always @(Reset) begin
//	    registers[0]  <= 32'd0;
//        registers[1]  <= 32'd0;
//        registers[2]  <= 32'd0;
//        registers[3]  <= 32'd0;
//        registers[4]  <= 32'd0;
//        registers[5]  <= 32'd0;
//        registers[6]  <= 32'd0;
//        registers[7]  <= 32'd0;
//        registers[8]  <= 32'd0;
//        registers[9]  <= 32'd0;
//        registers[10] <= 32'd0;
//        registers[11] <= 32'd0;
//        registers[12] <= 32'd0;
//        registers[13] <= 32'd0;
//        registers[14] <= 32'd0;
//        registers[15] <= 32'd0;
//        registers[16] <= 32'd0;
//        registers[17] <= 32'd0;
//        registers[18] <= 32'd0;
//        registers[19] <= 32'd0;
//        registers[20] <= 32'd0;
//        registers[21] <= 32'd0;
//        registers[22] <= 32'd0;
//        registers[23] <= 32'd0;
//        registers[24] <= 32'd0;
//        registers[25] <= 32'd0;
//        registers[26] <= 32'd0;
//        registers[27] <= 32'd0;
//        registers[28] <= 32'd0;
//        registers[29] <= 32'd8191;
//        registers[30] <= 32'd0;
//        registers[31] <= 32'd0;	  
//	end

endmodule
