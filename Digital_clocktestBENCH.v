`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:01:13 06/09/2025
// Design Name:   Digital_clock
// Module Name:   /home/ise/Digital_clock/digital_clocktb.v
// Project Name:  Digital_clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Digital_clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module digital_clocktb;

	// Inputs
	reg Clk_1sec;
	reg reset;

	// Outputs
	wire [5:0] seconds;
	wire [5:0] minutes;
	wire [4:0] hours;

	// Instantiate the Unit Under Test (UUT)
	Digital_clock uut (
		.Clk_1sec(Clk_1sec), 
		.reset(reset), 
		.seconds(seconds), 
		.minutes(minutes), 
		.hours(hours)
	);
    
	initial begin
		// Initialize Inputs
		Clk_1sec = 0;
		forever #1 Clk_1sec = ~Clk_1sec;
	end
	
	initial begin 
		reset = 1;
		#3;
		reset = 0;
		#2000;
		$finish;
	end
	
	initial begin
		$monitor("Time = %0t | H = %0d, S = %0d", $time, hours, minutes, seconds);
	end
endmodule

		

