`timescale 1ns / 1ps


module InstructionMemory(
    input [15:0] Address,                       // Input Address 
    output reg [15:0] Instruction               // Instruction at memory location Address
); 
    
    reg [15:0] memory [1023:0];                  // 
    
    
    initial begin                               // Initialize memory
        
        $readmemh("instruction_memory.mem", memory);
    
    end
    
    always @ (Address) begin                    // Run at receival of Address
    
        Instruction <= memory[Address];         //
        
    end

endmodule