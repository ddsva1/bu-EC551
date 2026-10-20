`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 09:03:08 PM
// Design Name: 
// Module Name: fiveb
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


module fiveb(
    input clk, input rst,
    output reg [3:0] nextstate
);
always @(posedge clk, posedge rst) begin
    if (rst) begin
        nextstate <= 4'b0000;
    end else begin
        nextstate <= nextstate + 1'b1;
    end
end

endmodule
