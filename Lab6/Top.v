`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
//GROUP 6 (Percent Effort):
// Tom Gentrup  (33.%)
// Evan Martin   (33%)
// Jorge Lujan   (33%)
//
// Module - Top.v
////////////////////////////////////////////////////////////////////////////////

module TopLevel(Clk, Reset, en_out, out7); 

    input Clk;
    input Reset;
    output [7:0]en_out;
    output [6:0]out7;
    wire ClkOut;
    
    ClkDiv _ClkDiv(Clk, Reset, ClkOut);
    Two4DigitDisplay _Two4DigitDisplay(Clk, ID_WriteData[15:0], WB_PCAdderOutput[15:0] - 4, out7, en_out);

    //IF Wires
    wire [31:0] IF_PCInput;
    wire [31:0] IF_PCOutput;
    wire [31:0] IF_Instruction;
    wire [31:0] IF_PCAdderOutput;
    wire IF_PCSrcSelector;
    
    //ID Wires
    wire [31:0] ID_PCAdderOutput;
    wire [31:0] ID_Instruction;
    wire [31:0] ID_SEOutput;
    wire [31:0] ID_PCOutput;
    wire [31:0] ID_WriteData;
    wire [1:0] ID_PCSrc;
    wire ID_MemToReg;
    wire [1:0] ID_MemRead;
    wire [1:0]ID_MemWrite;
    wire ID_Branch;
    wire ID_ALUSrc;
    wire [3:0] ID_ALUOp;
    wire [1:0] ID_RegWrite;
    wire ID_Jal;
    wire [1:0] ID_RegDst;
    wire [31:0] ID_ReadData1;
    wire [31:0] ID_ReadData2;
    wire ID_Shift;
    wire ID_Stall;
    
    //EX Wires
    wire [1:0] EX_PCSrc;
    wire EX_MemToReg;
    wire [1:0] EX_MemRead;
    wire [1:0]EX_MemWrite;
    wire EX_Branch;
    wire EX_ALUSrc;
    wire [3:0] EX_ALUOp;
    wire [1:0]EX_RegWrite;
    wire [31:0] EX_ReadData1;
    wire [31:0] EX_ReadData2;
    wire [31:0] EX_SEOutput;
    wire [25:0] EX_Instruction26b;
    wire [31:0] EX_PCOutput;
    wire EX_Jal;
    wire [1:0] EX_RegDst;
    wire [31:0] EX_PCAdderOutput;
    wire [31:0] EX_ALUSrcOutput;
    wire [3:0] EX_ALUControlOutput;
    wire [31:0] EX_JumpOutput;
    wire [31:0] EX_ALUResult;
    wire EX_Zero;
    wire [31:0] EX_ShiftOutput;
    wire [31:0] EX_BranchAdderOutput;
    wire [4:0] EX_RegWriteAddress;
    wire EX_Shift;
    wire [31:0] EX_ALUInput1;
    
    //MEM Wires
    wire MEM_MemToReg;
    wire [1:0] MEM_MemRead;
    wire [1:0]MEM_MemWrite;
    wire [1:0]MEM_RegWrite;
    wire MEM_Jal;
    wire [4:0] MEM_RegWriteAddress;
    wire [31:0] MEM_ALUResult;
    wire MEM_Zero;
    wire [31:0] MEM_ReadData2;
    wire [31:0] MEM_PCAdderOutput;
    wire [31:0] MEM_JumpOutput;
    wire [31:0] MEM_BranchAdderOutput;
    wire [31:0] MEM_MemReadData;
    wire MEM_ZeroANDBranch;
    wire [1:0] MEM_PCSrc;
    wire [31:0] MEM_ReadData1;
    
    //WB Wires
    wire WB_MemToReg;
    wire [1:0]WB_RegWrite;
    wire WB_Jal;
    wire [4:0] WB_RegWriteAddress;
    wire [31:0] WB_ALUResult;
    wire [31:0] WB_PCAdderOutput;
    wire [31:0] WB_MemReadData;
    wire [31:0] WB_WBToWD;
    
    //IF
    ProgramCounter _PC(
        ClkOut, 
        Reset, 
        IF_PCInput, 
        ID_Stall,
        IF_PCOutput);    
    Adder _PCAdder(
        IF_PCAdderOutput, 
        32'd4, 
        IF_PCOutput);
    Or _Or(
        IF_PCSrcSelector, 
        MEM_PCSrc[0], 
        MEM_ZeroANDBranch);
    Mux32Bits4To1 _PCSrcMux(
        {MEM_PCSrc[1], IF_PCSrcSelector}, 
        IF_PCAdderOutput,
        MEM_BranchAdderOutput, 
        MEM_JumpOutput, 
        MEM_ReadData1, 
        IF_PCInput);
    InstructionMemory _IM(
        IF_PCOutput, 
        IF_Instruction);

    //IF/ID Register
    IF_IDRegister IF_IDReg(
        ClkOut, 
        Reset, 
        IF_Instruction, 
        IF_PCOutput, 
        IF_PCAdderOutput, 
        ID_Stall,
        ID_Instruction,
        ID_PCOutput, 
        ID_PCAdderOutput);

    //ID
    controllerModule _Controller(
        ID_Instruction[31:26], 
        ID_Instruction[5:0],
        ID_RegWrite, 
        ID_ALUSrc, 
        ID_ALUOp, 
        ID_RegDst, 
        ID_MemWrite, 
        ID_MemRead, 
        ID_MemToReg, 
        ID_PCSrc, 
        ID_Jal, 
        ID_Branch, 
        ID_Shift);
    Mux32Bit2To1 _JalMux(
        ID_WriteData, 
        WB_WBToWD, 
        WB_PCAdderOutput, 
        WB_Jal);
    RegisterFile _Register(
        ID_Instruction[25:21], 
        ID_Instruction[20:16], 
        WB_RegWriteAddress,
        ID_WriteData, 
        WB_RegWrite, 
        ClkOut, 
        ID_ReadData1, 
        ID_ReadData2);
    SignExtension _SE(
        ID_Instruction[15:0], 
        ID_SEOutput);
    HazardDetectionUnit _HDU(
        ID_Instruction[25:21],
        ID_Instruction[20:16],
        ID_MemRead,
        EX_RegWrite,
        EX_RegDst,
        EX_Instruction26b[20:16],
        EX_Instruction26b[15:11],
        MEM_RegWrite,
        MEM_RegWriteAddress,
        ID_Stall
    );

    //ID/EX Register
    ID_EXRegister ID_EXReg(
        ClkOut,
        Reset,
        ID_PCSrc,
        ID_MemToReg,
        ID_MemRead,
        ID_MemWrite,
        ID_Branch,
        ID_ALUSrc,
        ID_ALUOp,
        ID_RegWrite,
        ID_ReadData1,
        ID_ReadData2,
        ID_SEOutput,
        ID_Instruction[25:0],
        ID_PCOutput,
        ID_Jal,
        ID_RegDst,
        ID_PCAdderOutput,
        ID_Shift,
        ID_Stall,
        EX_PCSrc,
        EX_MemToReg,
        EX_MemRead,
        EX_MemWrite,
        EX_Branch,
        EX_ALUSrc,
        EX_ALUOp,
        EX_RegWrite,
        EX_ReadData1,
        EX_ReadData2,
        EX_SEOutput,
        EX_Instruction26b,
        EX_PCOutput,
        EX_Jal,
        EX_RegDst,
        EX_PCAdderOutput,
        EX_Shift
);

    //EX
    Shifter _Shift(
        EX_ShiftOutput, 
        EX_SEOutput);
    Adder _BranchAdder(
        EX_BranchAdderOutput, 
        EX_PCAdderOutput, 
        EX_ShiftOutput);
    Mux32Bit2To1 _ShiftMux(
        EX_ALUInput1, 
        EX_ReadData1, 
        EX_ReadData2, 
        EX_Shift);
    Mux32Bit2To1 _ALUSrcMux(
        EX_ALUSrcOutput, 
        EX_ReadData2, 
        EX_SEOutput, 
        EX_ALUSrc);
    ALU32Bit _ALU(
        EX_ALUControlOutput, 
        EX_ALUInput1, ///////
        EX_ALUSrcOutput, 
        EX_ALUResult, 
        EX_Zero);
    ALUControl _ALUControl(
        EX_ALUOp, 
        EX_Instruction26b[5:0], 
        EX_Instruction26b[20:16], 
        EX_ALUControlOutput);
    Jump _Jump(
        EX_Instruction26b, 
        EX_PCOutput, 
        EX_JumpOutput);
    Mux5Bits3To1 _RegDstMux(
        EX_RegWriteAddress, 
        EX_Instruction26b[20:16], 
        EX_Instruction26b[15:11], 
        5'b11111, 
        EX_RegDst);


    //EX/MEM Register
    EX_MEMRegister EX_MEMReg(
        ClkOut,
        Reset,
        EX_MemToReg,
        EX_MemRead,
        EX_MemWrite,
        EX_RegWrite,
        EX_Jal,
        EX_RegWriteAddress,
        EX_ALUResult,
        EX_Zero,
        EX_ReadData2,
        EX_PCAdderOutput,
        EX_JumpOutput,
        EX_BranchAdderOutput,
        EX_PCSrc,
        EX_ReadData1,
        EX_Branch,
        MEM_MemToReg,
        MEM_MemRead,
        MEM_MemWrite,
        MEM_RegWrite,
        MEM_Jal,
        MEM_RegWriteAddress,
        MEM_ALUResult,
        MEM_Zero,
        MEM_ReadData2,
        MEM_PCAdderOutput,
        MEM_JumpOutput,
        MEM_BranchAdderOutput,
        MEM_PCSrc,
        MEM_ReadData1,
        MEM_Branch
);

    //MEM
    DataMemory _DM(
        MEM_ALUResult, 
        MEM_ReadData2, 
        ClkOut, 
        MEM_MemWrite, 
        MEM_MemRead, 
        MEM_MemReadData);
    And _ZeroANDBranch(
        MEM_ZeroANDBranch,
        MEM_Branch,
        MEM_Zero);
    

    //MEM/WB Register
    MEM_WBRegister MEM_RBReg(
        ClkOut,
        Reset,
        MEM_MemToReg,
        MEM_RegWrite,
        MEM_Jal,
        MEM_RegWriteAddress,
        MEM_ALUResult,
        MEM_PCAdderOutput,
        MEM_MemReadData,
        WB_MemToReg,
        WB_RegWrite,
        WB_Jal,
        WB_RegWriteAddress,
        WB_ALUResult,
        WB_PCAdderOutput,
        WB_MemReadData
    );

    //WB
    Mux32Bit2To1 _MemToRegMux(
        WB_WBToWD, 
        WB_MemReadData, 
        WB_ALUResult, 
        WB_MemToReg);


endmodule

