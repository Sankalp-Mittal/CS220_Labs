`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:14 02/14/2024 
// Design Name: 
// Module Name:    rotatory_shaft 
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
module rotatory_shaft(clk, ROT_A,ROT_B,rotation_event, rotation_direction);
	input clk, ROT_A, ROT_B;
	output rotation_event, rotation_direction;
	reg rotation_event, rotation_direction;

	always@(posedge clk) begin
		if(ROT_A == 1 & ROT_B == 1) begin
			rotation_event <= 1;
		end
		else if(ROT_A == 0 & ROT_B == 0) begin
			rotation_event <= 0;
		end
		else if(ROT_A == 0 & ROT_B == 1) begin
			rotation_direction <= 1;
		end
		else if(ROT_A == 1 & ROT_B == 0) begin
			rotation_direction <= 0;
		end
	end
endmodule
