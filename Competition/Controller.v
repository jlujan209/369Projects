`timescale 1ns / 1ps

module Controller(
    input [2:0] OPCode,
    output reg SetZeroes,
    output reg TriggerBoss,
    output reg PCStall
);
    
    always @(*)begin
        case (OPCode)
            3'b100: begin               //set zeroes
                SetZeroes <= 1;
                TriggerBoss <= 0;
                PCStall <= 0;
            end 
            3'b101: begin               //get SAD
                SetZeroes <= 0;
                TriggerBoss <= 1;
                PCStall <= 0;
            end
            3'b110: begin               //infinite loop
                SetZeroes <= 0;
                TriggerBoss <= 0;
                PCStall <= 1;
            end
            default begin
                SetZeroes <= 0;
                TriggerBoss <= 0;
                PCStall <= 0;
            end
        endcase
    end
    
    initial begin
        SetZeroes <= 0;
        TriggerBoss <= 0;
        PCStall <= 0;
    end
    
endmodule