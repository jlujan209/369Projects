`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - ALU32Bit_tb.v
// Description - Test the 'ALU32Bit.v' module.
////////////////////////////////////////////////////////////////////////////////

module TopLevel(Clk, Reset); 

    input Clk;
    input Reset;
    
    wire [31:0] PCInput;
    wire [31:0] PCOutput;
    wire [31:0] PCAdderOut;
    wire [31:0] Instruction;
    wire [31:0] WriteData;
    wire [31:0] ReadData1;
    wire [31:0] ReadData2;
    wire [31:0] ExtendedImmediate;
    wire [31:0] ALUInput2;
    wire [31:0] ALUResult;
    wire [31:0] ShiftOut;
    wire [31:0] BranchAdder;
    wire [31:0] JumpOut;
    wire [31:0] MemReadData;
    wire [31:0] WBtoWD;
    
    wire [4:0] WriteAddress;
    wire ZeroAndOut;
    wire [1:0] RegDst;
    wire RegWrite;
    wire ALUSrc;
    wire MemRead;
    wire MemWrite;
    wire MemToReg;
    wire Jal;
    wire Branch;
    wire [1:0] PCSrc;
    wire [2:0] ALUOp;
    wire [3:0] ALUSignal;
    wire PCSrcSignal;

    ProgramCounter _PC(Clk, Reset, PCInput, PCOutput);
    Adder _PCAdder(PCAdderOut, 32'd4, PCOutput);

    InstructionMemory _IM(PCOutput, Instruction);
    
    controllerModule _Controller(Instruction[31:26], RegWrite, ALUSrc, ALUOp, RegDst, MemWrite, MemRead, MemToReg, PCSrc, Jal, Branch);

    Mux5Bits3To1 _MuxA(WriteAddress, Instruction[20:16], Instruction[15:11], 5'b11111, RegDst);
    Mux32Bit2To1 _MuxB(WriteData, WBtoWD, PCAdderOut, Jal);
    RegisterFile _Register(Instruction[25:21], Instruction[20:16], WriteAddress, WriteData, RegWrite, Clk, ReadData1, ReadData2);

    SignExtension _SE(Instruction[15:0], ExtendedImmediate);
    Jump _Jump(Instruction[25:0], PCOutput, JumpOut);

    Mux32Bit2To1 _MuxC(ALUInput2, ReadData2, ExtendedImmediate, ALUSrc);
    ALUControl _ALUControl(ALUOp, Instruction[5:0], Instruction[20:16], ALUSignal);
    ALU32Bit _ALU(ALUSignal, ReadData1, ALUInput2, ALUResult, Zero);

    Shifter _Shift(ShiftOut, ExtendedImmediate);
    Adder _Add(BranchAdder, PCAdderOut, ShiftOut);

    And _And(ZeroAndOut, Branch, Zero);

    DataMemory _DM(ALUResult, ReadData2, Clk, MemWrite, MemRead, MemReadData);
    Mux32Bit2To1 _MuxD(WBtoWD, MemReadData, ALUResult, MemToReg);

    Or _Or(PCSrcSignal, PCSrc[0], ZeroAndOut);
    Mux32Bits4To1 _MuxE({PCSrc[1], PCSrcSignal}, PCAdderOut, BranchAdder, JumpOut, ReadData1, PCInput);


endmodule

