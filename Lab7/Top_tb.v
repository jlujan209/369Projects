`timescale 1ns / 1ps


module Top_tb();
    reg Clk;
    reg Reset;


    TopLevel _top(Clk, Reset); 
     
    initial begin
		Clk <= 1'b0;
		Reset <= 1;
		#100;
		Clk <= 1;
		#50;
		Reset <= 0;
		#50;
		Clk <= 0;
		
		forever #100 Clk <= ~Clk;
	end


endmodule
