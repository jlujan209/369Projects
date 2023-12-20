`timescale 1ns / 1ps


module controllerModule(Instrc, ShiftCheck, RegWrite, ALUSrc, ALUOp, RegDst, MemWrite, MemRead, MemtoReg, PCSrc, Jal, Branch, Shift);

input [5:0] Instrc, ShiftCheck;

output reg [1:0] RegWrite, MemWrite, MemRead; 

output reg ALUSrc, MemtoReg, Jal, Branch, Shift;

output reg [2:0] PCSrc;

output reg [3:0] ALUOp;

output reg [1:0] RegDst;

always @(Instrc, ShiftCheck) begin

    case(Instrc)
    6'b000000: begin //r-type w/o immediate (add, sub)
        RegWrite <= 1;
        ALUOp <= 0;
        RegDst <= 2'b01;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        Jal <= 0;        
        Branch <= 0;
        
        if(ShiftCheck == 0 || ShiftCheck == 6'd2)begin
            ALUSrc <= 1;
            Shift <= 1;
         end
         else if(ShiftCheck == 8)begin // jr : 001000
            RegWrite <= 0;
            ALUSrc <= 0;
            RegDst <= 2'b00;
            Branch <= 0;
            MemWrite <= 0;
            MemRead <= 0;
            MemtoReg <= 1;
            PCSrc <= 2'b11;
            Jal <= 0;
            Shift <= 0;
         end
         else begin
            ALUSrc <= 0;
            Shift <= 0;
         end 
    end 
    
    6'b001000: begin //addi
        RegWrite <= 1;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 1;
        Jal <= 0;
        Shift <= 0;
    end     
    
    6'b100011: begin //load word (lw)
        RegWrite <= 1;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 0;
        MemRead <= 1;
        MemtoReg <= 0;
        PCSrc <= 2'b00;
        ALUOp <= 1;
        Jal <= 0;
        Shift <= 0;
    end          
       
    6'b101011: begin //save word (sw)
        RegWrite <= 0;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 1;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 1;
        Jal <= 0;
        Shift <= 0;
    end
    
    6'b101000: begin //store byte (sb)
        RegWrite <= 0;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 2;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 1;
        Jal <= 0;
        Shift <= 0;
    end
    
    6'b100001: begin //load half (lh)
        RegWrite <= 3;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 0;
        MemRead <= 3;
        MemtoReg <= 0;
        PCSrc <= 2'b00;
        ALUOp <= 1;
        Jal <= 0;
        Shift <= 0;
    end               
    
    6'b100000: begin //load byte (lb)
        RegWrite <= 2;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 0;
        MemRead <= 2;
        MemtoReg <= 0;
        PCSrc <= 2'b00;
        ALUOp <= 1;
        Jal <= 0;
        Shift <= 0;
    end        
    
    6'b101001: begin //store half (sh)
        RegWrite <= 0;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 3;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 1;
        Jal <= 0;
        Shift <= 0;
    end        
    
    6'b000001: begin //branch if greater than or equal to zero (bgez)
        RegWrite <= 0;
        ALUSrc <= 0;
        RegDst <= 2'b00;
        Branch <= 1;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 9;
        Jal <= 0;
        Shift <= 0;
    end        
    
    6'b000100: begin //branch if equal (beq)    ////////FIXED??
        RegWrite <= 0;
        ALUSrc <= 0;
        RegDst <= 2'b00;
        Branch <= 1;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        Jal <= 0;
        ALUOp <= 12;
        Shift <= 0;
    end        
    
    6'b000101: begin //branch if not equal (bne)
        RegWrite <= 0;
        ALUSrc <= 0;
        RegDst <= 2'b00;
        Branch <= 1;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 8;
        Jal <= 0;
        Shift <= 0;
    end    
    
    6'b000111: begin //branch if greater than zero (bgtz)
        RegWrite <= 0;
        ALUSrc <= 0;
        RegDst <= 2'b00;
        Branch <= 1;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 11;
        Jal <= 0;
        Shift <= 0;
    end            
    
    6'b000110: begin //branch on less than or equal to zero (blez)
        RegWrite <= 0;
        ALUSrc <= 0;
        RegDst <= 2'b00;
        Branch <= 1;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 10;
        Jal <= 0;
        Shift <= 0;
    end        
    
    6'b000001: begin //branch if less than zero (bltz)
        RegWrite <= 0;
        ALUSrc <= 0;
        RegDst <= 2'b00;
        Branch <= 1;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 9;
        Jal <= 0;
        Shift <= 0;
    end
    
    6'b000010: begin //jump (j)
        RegWrite <= 0;
        ALUSrc <= 0;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b10;
        Jal <= 0;
        Shift <= 0;
        //ALUOP = XX
    end
    
    6'b000011: begin //jump and link (jal)
        RegWrite <= 1;
        ALUSrc <= 0;
        RegDst <= 2'b10;
        Branch <= 0;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b10;
        Jal <= 1;
        Shift <= 0;
        //ALUOP = XX
    end
                    
    6'b001100: begin //and immediate (andi)
        RegWrite <= 1;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 2;
        Jal <= 0;
        Shift <= 0;
    end
    
    6'b001101: begin //Or immediate (ori)
        RegWrite <= 1;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 3;
        Jal <= 0;
        Shift <= 0;
    end
    
    6'b001110: begin //Exclusive or immediate (xori) 
        RegWrite <= 1;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 4;
        Jal <= 0;
        Shift <= 0;
    end
    
    6'b001010: begin //set on less than immediate (slti)
        RegWrite <= 1;
        ALUSrc <= 1;
        RegDst <= 2'b00;
        Branch <= 0;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        ALUOp <= 7;
        Jal <= 0;
        Shift <= 0;
    end  
    
    6'b011100: begin //mul
        RegWrite <= 1;
        ALUSrc <= 0;
        ALUOp <= 5;
        RegDst <= 2'b01;
        MemWrite <= 0;
        MemRead <= 0;
        MemtoReg <= 1;
        PCSrc <= 2'b00;
        Jal <= 0;        
        Branch <= 0;
        Shift <= 0;
    end          
                    
endcase

end

endmodule
