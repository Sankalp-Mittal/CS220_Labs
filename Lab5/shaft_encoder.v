`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:13:38 02/14/2024 
// Design Name: 
// Module Name:    shaft_encoder 
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
module shaft_encoder(clk, rotation_event, rotation_direction, led0, led1, led2, led3, led4, led5, led6, led7 );
	input clk, rotation_event, rotation_direction;
	output led0, led1, led2, led3, led4, led5, led6, led7;
	reg led0=1, led1, led2, led3, led4, led5, led6, led7;
	reg prev_rotation_event = 1;
	always@(posedge clk) begin
		prev_rotation_event <= rotation_event;
		if(prev_rotation_event == 0 & rotation_event == 1) begin
			if(rotation_direction == 1 ) begin
				led1<=led0;
				led2<=led1;
				led3<=led2;
				led4<=led3;
				led5<=led4;
				led6<=led5;
				led7<=led6;
				led0<=led7;
			end
			else begin
				led0<=led1;
				led1<=led2;
				led2<=led3;
				led3<=led4;
				led4<=led5;
				led5<=led6;
				led6<=led7;
				led7<=led0;
			end
		end
	end
endmodule
