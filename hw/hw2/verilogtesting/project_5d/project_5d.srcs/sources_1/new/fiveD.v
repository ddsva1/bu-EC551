`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 09:39:43 PM
// Design Name: 
// Module Name: fiveD
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


module fiveD(input clk, input rst,
    output reg [3:0] nextstate
);
always @(posedge clk, posedge rst) begin
    if (rst) begin
        nextstate = 4'b0000;
    end else begin
        case (nextstate)
            4'b0000: nextstate <= 4'b0001;
            4'b0001: nextstate <= 4'b0010;
            4'b0010: nextstate <= 4'b0011;
            4'b0011: nextstate <= 4'b0100;
            4'b0100: nextstate <= 4'b0101;
            4'b0101: nextstate <= 4'b0110;
            4'b0110: nextstate <= 4'b0111;
            4'b0111: nextstate <= 4'b1000;
            4'b1000: nextstate <= 4'b1001;
            4'b1001: nextstate <= 4'b1010;
            4'b1010: nextstate <= 4'b1011;
            4'b1011: nextstate <= 4'b1100;
            4'b1100: nextstate <= 4'b1101;
            4'b1101: nextstate <= 4'b1110;
            4'b1110: nextstate <= 4'b1111;
            4'b1111: nextstate <= 4'b0000;
        endcase
    end
end
endmodule
