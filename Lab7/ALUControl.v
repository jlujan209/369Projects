`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
////////////////////////////////////////////////////////////////////////////////

module ALUControl(ALUOp, Opcode, RT, Ctrl); 

    input [3:0] ALUOp; // 4-bit ALUOp
    input [5:0] Opcode; // 6-bit Opcode
    input [4:0] RT; // 5-bit Opcode for Branching

//ALUOp	Instruction	
// 0	R-Type	
// 1	Addi	
// 2	Andi	
// 3	Ori	
// 4	Xori	
// 5	sll	
// 6	srl	
// 7	slt	
// 8	Ne	
// 9	Gteq0, Lt0	
// 10	Lteq0	
// 11	Gt0	

    output reg [3:0] Ctrl; // 4-bit control signal for ALU

    always @(ALUOp, Opcode, RT)begin

        //ALUOP
        case (ALUOp)
            0: begin //00 R-Type
                case (Opcode)
                    6'b100000: begin // add
                        Ctrl = 4'b0000;
                    end
                    6'b100010: begin // sub
                        Ctrl = 4'b0001;
                    end
                    6'b000010: begin // srl
                        Ctrl = 4'b1000;
                    end
                    6'b100100: begin // and
                        Ctrl = 4'b0011;
                    end
                    6'b100101: begin // or
                        Ctrl = 4'b0100;
                    end
                    6'b100111: begin // nor
                        Ctrl = 4'b0101;
                    end
                    6'b101010: begin // slt
                        Ctrl = 4'b1001;
                    end
                    6'b000000: begin //sll
                        Ctrl = 4'b0111;
                    end
                    default: begin
                        Ctrl = 4'b0000; //nop writes zero into zero !uh oh! 
                    end
                endcase                
            end
            1: begin //01 Addi
                Ctrl = 4'b0000;
            end
            2: begin //10 Andi
                Ctrl = 4'b0011;
            end
            3: begin //11 Ori
               Ctrl = 4'b0100;
            end
            4: begin //100 Xori
                Ctrl = 4'b0110;
            end
            5: begin //mul
                Ctrl = 4'b0010;
            end
            7: begin //111 slti
                Ctrl = 4'b1001;
            end
            8: begin //1000 Ne
                Ctrl = 4'b1010;
            end
            9: begin //1001 Gteq0, Lt0
                case (RT)
                    5'b00000: begin //BLTZ
                        Ctrl = 4'b1110;
                    end 
                    5'b00001: begin //BGEZ
                        Ctrl = 4'b1011;
                    end
                endcase
            end
            10: begin //1010 Lteq0
                Ctrl = 4'b1101;
            end
            11: begin //1100 Gt0
                Ctrl = 4'b1100;
            end
            12: begin //beq
                Ctrl = 4'b0001; // same as sub
            end
        endcase


    end


endmodule

