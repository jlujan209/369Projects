

module ProgramCounter(
    input wire clk,          // Clock input
    input wire reset,        // Reset input
    input wire [31:0] input_address,  // given address
    output reg [31:0] output_address   // output address
); 

    initial begin
    
        output_address <= 32'b0;
        
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset the program counter to 0
            output_address <= 32'b0;
        end
        else begin
            output_address <= input_address;
        end
    end

endmodule
