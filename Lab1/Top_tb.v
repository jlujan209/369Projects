`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2023 04:39:40 PM
// Design Name: 
// Module Name: Top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top_tb(    );

    reg Clk, Rst;
    
    Top _top(.Clk(Clk), .Rst(Rst));

    initial begin
		  Clk <= 1'b0;
		  forever #100 Clk <= ~Clk;
	   end
	   
	  initial begin
	       Rst = 1'b1;
        #150;
                     
        Rst = 1'b0;
        #200;
        
        Rst = 1'b1;
        #20;
                     
        Rst = 1'b0;
        #200;
	  end

    

endmodule
