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
    output reg ID_Stall
);

    reg EXStall, MEMStall;
    
    initial begin
    
        ID_Stall <= 0;
 
    end

    always @(ID_Rs, ID_Rt, ID_MemRead, EX_RegWrite, EX_RegDstSignal, EX_Rt, EX_Rd, MEM_RegWrite, MEM_RegDst) begin

        EXStall = 0;
        MEMStall = 0;
        
        //Detecting EX to ID Hazards
        if (EX_RegWrite) begin
            case (EX_RegDstSignal)
                0:begin //Rt is WriteDestination for EX Instruction
                    if ((EX_Rt == ID_Rs || (EX_Rt == ID_Rt && ID_MemRead == 0)) && (EX_Rt != 0)) begin 
                        EXStall <= 1;
                    end
                    
                end
                1:begin //Rd is WriteDestination for EX Instruction
                    if ((EX_Rd == ID_Rs || (EX_Rd == ID_Rt && ID_MemRead == 0)) && (EX_Rd != 0)) begin
                        EXStall <= 1;
                    end
                end 
            endcase
        end
        //Detecting MEM to ID Hazards
        if (MEM_RegWrite) begin
            if ((MEM_RegDst == ID_Rs || (MEM_RegDst == ID_Rt && ID_MemRead == 0)) && (MEM_RegDst != 0)) begin
                MEMStall <= 1;
            end
        end

    end
    
    always @(EXStall, MEMStall) begin
    
        if (EXStall || MEMStall) begin
            ID_Stall <= 1;
        end
        else begin
            ID_Stall <= 0;
        end
    end

endmodule
