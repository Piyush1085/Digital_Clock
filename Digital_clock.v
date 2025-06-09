`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:40:12 06/09/2025 
// Design Name: 
// Module Name:    Digital_clock 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Digital_clock(
    Clk_1sec, reset, seconds,
	 minutes,
	 hours);
	 input Clk_1sec, reset;
	 output [5:0] seconds;
	 output [5:0] minutes;
	 output [4:0] hours;
	 
	 reg [5:0] seconds;
	 reg [5:0] minutes;
	 reg [4:0] hours;
	 
	 always @(posedge(Clk_1sec) or posedge(reset))
	 begin
			if(reset == 1'b1)begin
					seconds = 0;
					minutes = 0;
					hours = 0;
					end
			else if(Clk_1sec == 1'b1)begin
					seconds = seconds + 1;
				   if(seconds == 60)begin
						seconds = 0;
						minutes = minutes + 1;
						if(minutes == 60)begin
							minutes = 0;
							hours = hours + 1;
							if(hours == 24)begin
								hours = 0;
							end
						end
					end
				end
			end
endmodule
	 



