`timescale 1ns / 1ps

module HazardDetector (
    input [4:0] ID_Rs,
    input [4:0] ID_Rt,
    input [1:0] ID_MemRead,
    input [1:0] EX_RegWrite,
    input [1:0] EX_RegDstSignal,
    input [4:0] EX_Rt,
    input [4:0] EX_Rd,
    input [1:0] MEM_RegWrite,
    input [4:0] MEM_RegDst,
    input [5:0] Instrc,
    input [5:0] ShiftCheck,
    input EX_Branch,
    input MEM_Branch,
    input EX_Jump,
    input MEM_Jump,
    input BranchTaken,
    output reg PC_Stall,
    output reg IDEX_Flush,
    output reg IFID_Stall,
    output reg IFID_Flush
);


initial begin

    IDEX_Flush <= 0;
    PC_Stall <= 0;

end


    always @(*) begin
        if ( (EX_RegWrite) && 
             (EX_RegDstSignal == 0) && 
             (EX_Rt == ID_Rs || (EX_Rt == ID_Rt && ID_MemRead == 0) ) && 
             (EX_Rt != 0) ) begin //EXtoID Rt dependency
                IDEX_Flush <= 1;
                PC_Stall <= 1;
                IFID_Stall <= 1;
                IFID_Flush <= 0;
        end
        else if ( (EX_RegWrite) && 
                  (EX_RegDstSignal == 1) && 
                  (EX_Rd == ID_Rs || (EX_Rd == ID_Rt && ID_MemRead == 0) ) && 
                  (EX_Rd != 0) ) begin //EXtoID Rd dependency
                IDEX_Flush <= 1;
                PC_Stall <= 1;
                IFID_Stall <= 1;
                IFID_Flush <= 0;
        end
        else if ( (MEM_RegWrite) &&
                  (MEM_RegDst == ID_Rs || (MEM_RegDst == ID_Rt && ID_MemRead == 0)) && 
                  (MEM_RegDst != 0) ) begin //MEMtoID dependency
                IDEX_Flush <= 1;
                PC_Stall <= 1;
                IFID_Stall <= 1;
                IFID_Flush <= 0;
        end
        else if ((MEM_Branch && BranchTaken) || MEM_Jump) begin
                PC_Stall <= 0;
                IDEX_Flush <= 0;
                IFID_Stall <= 0;
                IFID_Flush <= 1;
        end
        else if (EX_Branch || EX_Jump) begin
                PC_Stall <= 1;
                IDEX_Flush <= 1;
                IFID_Stall <= 0;
                IFID_Flush <= 1;
        end
        else if (((Instrc == 6'b000000 && ShiftCheck == 8) || //jr
            (Instrc == 6'b000001) ||     //bgez
            (Instrc == 6'b000100) ||     //beq
            (Instrc == 6'b000101) ||     //branch if not equal (bne)
            (Instrc == 6'b000110) ||     //branch on less than or equal to zero (blez)
            (Instrc == 6'b000001) ||     //branch if less than zero (bltz)
            (Instrc == 6'b000010) ||     //jump (j)
            (Instrc == 6'b000011))) begin  //jump and link (jal)
                PC_Stall <= 1;
                IDEX_Flush <= 0;
                IFID_Stall <= 0;
                IFID_Flush <= 1;
        end
        else begin
                IDEX_Flush <= 0;
                PC_Stall <= 0;
                IFID_Stall <= 0;
                IFID_Flush <= 0;
        end
    end

endmodule
