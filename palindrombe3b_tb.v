`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 12:15:08
// Design Name: 
// Module Name: palindrome_3b
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


module palindrome3b_tb();
	
	reg  clk;
	reg  reset;
	reg  x_i;
	wire pal_o;
	
	palindrome3b p3b	(
		.clk			(	clk		),
		.reset			(	reset	),
		.x_i			(	x_i		),
		.palindrome_o	(	pal_o	)
	);
	
	always #5 clk = ~clk;
	
	task demo_tc();
	begin 
		#10;				// time elapsed: 10
		// @(posedge clk);
		reset <= 0;
		
		#30;				// time elapsed: 40
		x_i <= 1;
		#10;				// time elapsed: 50
		x_i <= 0;	
		#10;				// time elapsed: 60
		x_i <= 1;			
				
		#50;				// time elapsed: 110
		$stop;
	end 
	endtask
	
	initial begin 
		clk		 = 1;
		reset	<= 1;
		x_i		<= 0;
		demo_tc();
	end 
	
	

endmodule