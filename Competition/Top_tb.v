`timescale 1ns / 1ps


module Top_tb();
    reg Clk;
    reg Reset;


    TopLevel _top(Clk, Reset); 
     
    initial begin
		Clk <= 1'b0;
		Reset <= 1;
		#10;
		Clk <= 1;
		#5;
		Reset <= 0;
		#5;
		Clk <= 0;
		
		forever #10 Clk <= ~Clk;
	end


endmodule
