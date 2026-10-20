`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 08:07:11 PM
// Design Name: 
// Module Name: four_c
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


module four_c(
    input [3:0] four_in,
    output reg [2:0] three_out
    );
    always @(*) begin
        three_out = four_in[0] + four_in[1] + four_in[2] + four_in[3];
    end
endmodule
