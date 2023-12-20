`timescale 1ns / 1ps

module HazardDetectionUnit (
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
    input IF_PCSrcSelector,
    output reg IFID_Stall,
    output reg IDEX_Stall,
    output reg PC_Stall
);

    reg EXtoID_Dep, MEMtoID_Dep, IDJumpDet, EXJumpDet, MEMJumpDet;
    
    initial begin
    
        IFID_Stall <= 0;
        IDEX_Stall <= 0;
        PC_Stall <= 0;
 
    end

    always @(*) begin

        EXtoID_Dep = 0;
        MEMtoID_Dep = 0;
        IDJumpDet = 0;
        EXJumpDet = 0;
        MEMJumpDet = 0;
        
        //Detecting EX to ID Hazards
        if (EX_RegWrite) begin
            case (EX_RegDstSignal)
                0:begin //Rt is WriteDestination for EX Instruction
                    if ((EX_Rt == ID_Rs || (EX_Rt == ID_Rt && ID_MemRead == 0)) && (EX_Rt != 0)) begin 
                        EXtoID_Dep <= 1;
                    end
                    
                end
                1:begin //Rd is WriteDestination for EX Instruction
                    if ((EX_Rd == ID_Rs || (EX_Rd == ID_Rt && ID_MemRead == 0)) && (EX_Rd != 0)) begin
                        EXtoID_Dep <= 1;
                    end
                end 
            endcase
        end
        //Detecting MEM to ID Hazards
        if (MEM_RegWrite) begin
            if ((MEM_RegDst == ID_Rs || (MEM_RegDst == ID_Rt && ID_MemRead == 0)) && (MEM_RegDst != 0)) begin
                MEMtoID_Dep <= 1;
            end
        end
                               
        if ((Instrc == 6'b000000 && ShiftCheck == 8) || //jr
           (Instrc == 6'b000001) ||     //bgez
           (Instrc == 6'b000100) ||     //beq
           (Instrc == 6'b000101) ||     //branch if not equal (bne)
           (Instrc == 6'b000110) ||     //branch on less than or equal to zero (blez)
           (Instrc == 6'b000001) ||     //branch if less than zero (bltz)
           (Instrc == 6'b000010) ||     //jump (j)
           (Instrc == 6'b000011)) begin //jump and link (jal)   
            IDJumpDet <= 1;     
        end
        if ((EX_Branch) || (EX_Jump))  begin
            EXJumpDet <= 1;
        end
        if ((MEM_Branch) || (MEM_Jump)) begin
            MEMJumpDet <= 1;
        end
    end
    
    always @(EXtoID_Dep, MEMtoID_Dep, EXJumpDet, IDJumpDet, MEMJumpDet, IF_PCSrcSelector) begin

        IFID_Stall <= 0;
        IDEX_Stall <= 0;
        PC_Stall <= 0;        
        
        if ((EXtoID_Dep) || (MEMtoID_Dep)) begin
            IFID_Stall <= 0;
            IDEX_Stall <= 1;
            PC_Stall <= 1;
        end
        else if ((EXJumpDet)) begin
            IFID_Stall <= 1;
            IDEX_Stall <= 1;
            PC_Stall <= 1;
        end
        else if (IDJumpDet) begin    
            IFID_Stall <= 1;
            IDEX_Stall <= 0;
            PC_Stall <= 1;
        end
        else if (MEMJumpDet && (MEM_Jump == 0) && (IF_PCSrcSelector == 0)) begin // for branch not taken
            IFID_Stall <= 0;
            IDEX_Stall <= 1;
            PC_Stall <= 0;
        end
        else if (MEMJumpDet) begin //for branch taken
            IFID_Stall <= 1;
            IDEX_Stall <= 1;
            PC_Stall <= 0;
        end    
    end

endmodule
