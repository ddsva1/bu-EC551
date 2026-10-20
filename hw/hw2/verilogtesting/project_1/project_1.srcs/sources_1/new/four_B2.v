`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 08:38:13 PM
// Design Name: 
// Module Name: four_B2
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


module four_B2(
    input [3:0] four_in,
    output reg [2:0] three_out
    );
    
always @* begin
    case (four_in)
        4'b0001, 4'b0010, 4'b0100, 4'b1000: three_out = 3'b001;
        4'b1110, 4'b1101, 4'b1011, 4'b0111: three_out = 3'b011;
        4'b0000: three_out = 3'b000;
        4'b1111: three_out = 3'b100;
        default: three_out = 3'b010;
    endcase
end

endmodule
